
 private_key_obfuscate.make_predicible_operation = function(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    local total_operations = randonizer.generate_num(
        procedural_props.min_operations_per_line,
        procedural_props.max_operations_per_line
    )
    local evalated_str = "return "
    local code = ""
    for i=1,total_operations do

        local operation_item = randonizer.choice({"byte","integer","random"})


        if operation_item == "byte" then 
            local chosen_byte = private_key_obfuscate.get_randon_byte(randonizer,bytes_to_save)
            code = code.." ".."key["..chosen_byte.index.."]"
            evalated_str = evalated_str.." "..chosen_byte.current_value
        
        elseif operation_item == "integer" and #already_existed_integers > 0 then 
            local chosen_index =1 
            if #already_existed_integers > 1 then
                 chosen_index = randonizer.generate_num(1,#already_existed_integers)
            end 
            local chosen_index_str = ""..chosen_index
            local formmated_index = ""

            for j=1,#chosen_index_str do
                local current_char =private_key_obfuscate.sub(chosen_index_str,j,j)
                if current_char == "." then
                    break
                end
                formmated_index = formmated_index.. current_char

            end
            local name = project_name.."_integer_"..formmated_index
            local value = already_existed_integers[chosen_index]
            code = code.." "..name
            evalated_str = evalated_str.." "..value
        else 
            local randon_int = randonizer.generate_num(1000,100000)
            code = code.." "..randon_int
            evalated_str = evalated_str.." "..randon_int
        end


        local operation = randonizer.choice({"+","-","*"})
        if i < total_operations then
            code = code .." "..operation 
            evalated_str = evalated_str.." "..operation
        end

    end 
    return {code = code,eval = private_key_obfuscate.load(evalated_str)()}
end 