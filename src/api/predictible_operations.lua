
 private_key_obfuscate.make_predicible_operation = function(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    local total_operations = randonizer.generate_num(
        procedural_props.min_operations_per_line,
        procedural_props.max_operations_per_line
    )
    local evalated_str = "return "
    local code = "("
    for i=1,total_operations do

        local operation_item = randonizer.choice({"byte","integer","random"})


        if operation_item == "byte" then 
            local chosen_byte = private_key_obfuscate.get_randon_byte(randonizer,bytes_to_save)
            code = code.." ".."key["..chosen_byte.index.."]"
            evalated_str = evalated_str.." "..private_key_obfuscate.parse_to_int_str(chosen_byte.current_value)
        
        elseif operation_item == "integer" and #already_existed_integers > 0 then 
            local chosen_index =1 
            if #already_existed_integers > 1 then
                 chosen_index = randonizer.generate_num(1,#already_existed_integers)
            end 
            local formmated_index = private_key_obfuscate.parse_to_int_str (chosen_index)
            local name = project_name.."_integer_"..formmated_index
            local value = already_existed_integers[chosen_index]
            code = code.." "..name
            evalated_str = evalated_str.." "..private_key_obfuscate.parse_to_int_str(value)
        else 
            local randon_int = randonizer.generate_num(1000,100000)
            code = code.." "..randon_int
            evalated_str = evalated_str.." "..private_key_obfuscate.parse_to_int_str(randon_int)
        end


        local operation = randonizer.choice({"+","-","*"})
        if i < total_operations then
            code = code .." "..operation 
            evalated_str = evalated_str.." "..operation
        end

    end 
    code = code..")"
    --print("evalated_str",evalated_str)
    return {code = code,eval = private_key_obfuscate.load(evalated_str)()}
end 