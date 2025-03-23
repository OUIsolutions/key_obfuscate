

private_key_obfuscate.create_integer = function(randonizer,project_name,code, already_existed_integers,bytes_to_save)
    
    local index = #already_existed_integers + 1
    local name = project_name.."_integer_"..index
    local current_value = randonizer.generate_num(1000,100000)
    code.append("\tint "..name.." = "..current_value)

    local add_byte_to_operation = randonizer.generate_num(1,100) <= 50 
    if add_byte_to_operation then
        local chosen_byte = private_key_obfuscate.get_randon_byte(randonizer,bytes_to_save)
        local operation = randonizer.choice({"+","-","*"})
        code.append(" "..operation.." key["..chosen_byte.index.."]")
        current_value =private_key_obfuscate.generate_operation(current_value,operation,chosen_byte.current_value)

    end
    code.append(";".."/*"..current_value.."*/".."\\\n")
    already_existed_integers[index] = {name=name,current_value=current_value}

end
