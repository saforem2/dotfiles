function ftd -d "Parse and display a list of todo.txt files"
    set -l options (fish_opt -s v -l verbose) (fish_opt -s h -l help)
    argparse $options -- $argv

    if test -n "$_flag_h"
        echo "USAGE"
        return 0
    end

    set -l paths

    # Read either from file(s) or from STDIN
    if count $argv >/dev/null
        set paths $argv
    else
        read -az paths
    end

    for p in $paths

        # Iterate over lines and put in 3 buckets:
        # - done
        # - not done with prio
        # - not done without prio
        # Sort the not done with prio bucket and then
        # just concat all 3 buckets together
        set -l done
        set -l not_done_with_prio
        set -l not_done_no_prio

        for l in (cat $p)
            if test -z (string trim "$l")
                continue
            end

            if test (string match -r "^x\s+" $l)
                set -a done $l
            else if test (string match -r "\([A-Z]\)" $l)
                set -a not_done_with_prio $l
            else
                set -a not_done_no_prio $l
            end
        end

        set -l todos (wc -l < $p)
        set -l skip_entry 0

	# When verbose flag is true, print additional info about progress
        if test -n "$_flag_v"
            set_color --underline
            printf "%-40s (%u/%u)" (dirname $p) (count $done) $todos
            set_color normal
            printf "\n"
        # Without verbose flag, skip empty todo lists
        else if test $todos -gt 0
            set_color --underline
            echo (dirname $p)
            set_color normal
        else
            set skip_entry 1
        end

        for l in (string join \n $not_done_with_prio | sort)
            printf "  [ ] %s\n" $l
        end

        for l in $not_done_no_prio
            printf "  [ ] %s\n" $l
        end

	# Print done todos in verbose output
        if test -n "$_flag_v"
            for l in $done
                printf "  [x] %s\n" $l
            end
        end

	# If a todo is empty and no verbose flag is passed,
	# we need to skip the final newline. Otherwise the
	# program prints a double empty newline. One from
	# the last todo file that actually had entries,
	# and one from the empty todo that wasn't printed.
        if test "$skip_entry" -ne 1
            printf "\n"
        end
    end
end
