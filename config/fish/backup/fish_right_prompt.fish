function fish_right_prompt --description "Print right prompt"
    set --local time_color (_pure_set_color $pure_color_system_time)
    echo "$time_color"(date '+%T')
end
#
#     set
#    set --local system_time (_pure_prompt_system_time)
#    set --local virtualenv (_pure_prompt_virtualenv)
#    printf '%s'  $_pure_prompt_system_time
#    set_color normal
# end
   
# set -g _tide_right_prompt_display_var _tide_right_prompt_display_$fish_pid
#
# function fish_right_prompt
#     printf '%s' $$_tide_right_prompt_display_var
#     # Right prompt is always the last thing on the line
#     # therefore reset colors for tab completion
#     set_color normal
# end
