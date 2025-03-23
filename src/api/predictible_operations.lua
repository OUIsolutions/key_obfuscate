
 make_predicible_operation = function(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    local total_operations = randonizer.generate_num(
        procedural_props.min_operations_per_line,
        procedural_props.max_operations_per_line
    )
    local evalated_str = ""
    for i=1,total_operations do

        local operation_item = randonizer.choice("byte","integer","random")

        if operation_item == "byte" then 
            local chosen_byte = private_key_obfuscate.get_randon_byte(randonizer,bytes_to_save)
            code.append("\tkey["..chosen_byte.index.."]")
        end 
        local operation = randonizer.choice({"+","-","*"})
        if i < total_operations then
            code.append(" "..operation.." ")
            evalated_str = evalated_str.." "..operation
        end

    end 
end 