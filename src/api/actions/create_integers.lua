

private_key_obfuscate.create_integer = function(randonizer,project_name,code, already_existed_integers,bytes_to_save)
    
    local index = #already_existed_integers + 1
    local name = project_name.."_integer_"..index
    local current_value = randonizer.generate_num(1000,100000)
    local evaluation = private_key_obfuscate.newEvaluation()
    evaluation.append(current_value)
    code.append("\tint "..name.." = "..current_value)



    local add_byte_to_operation = randonizer.generate_num(1,100) <= 50 
    if add_byte_to_operation then
        local chosen_byte = private_key_obfuscate.get_randon_byte(randonizer,bytes_to_save)
        local operation = randonizer.choice({"+","-","*"})
        evaluation.append(operation)
        evaluation.append(chosen_byte.current_value)

        code.append(" "..operation.." key["..chosen_byte.index.."]")
    end


    code.append(";".."/*"..evaluation.eval().."*/".."\\\n")
    already_existed_integers[index] = {name=name,current_value=current_value}

end
