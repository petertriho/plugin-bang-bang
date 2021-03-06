if test "$fish_key_bindings" != fish_default_key_bindings
    bind --mode insert ! __history_previous_command
    bind --mode insert '$' __history_previous_command_arguments
else
    bind ! __history_previous_command
    bind '$' __history_previous_command_arguments
end

function _plugin-bang-bang_uninstall --on-event plugin-bang-bang_uninstall
    bind --erase --all !
    bind --erase --all '$'
    functions --erase _plugin-bang-bang_uninstall
end
