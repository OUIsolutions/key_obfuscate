

private_key_obfuscate.integer_set = function(props,randonizer,procedural_props,project_name,code, already_existed_integers,bytes_to_save,total_scope)
    if  #already_existed_integers == 0 then
        return
    end
    local index = 1
    if #already_existed_integers > 1 then
        index = randonizer.generate_num(1,#already_existed_integers)
    end 
    local chosen_index_str =""..index
    local formmated_index = ""
    for j=1,#chosen_index_str do
        local current_char =private_key_obfuscate.sub(chosen_index_str,j,j)
        if current_char == "." then
            break
        end
        formmated_index = formmated_index.. current_char
    end
    
    local name = project_name.."_integer_"..formmated_index
    
    code.append(private_key_obfuscate.create_padding(total_scope)..name.." = ")
    local predictibble =  private_key_obfuscate.make_predicible_operation(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    code.append(predictibble.code)
    code.append(";")
    code.append("/*set:")
    code.append(predictibble.eval)
    code.append("*/")
    code.append("\\\n")
    --code.append(predictibble.evalated_str)
    already_existed_integers[index] = predictibble.eval
    if props.debug then 
        code.append("\tif("..predictibble.eval.." != "..name.."){")
        code.append('printf("expected %d and was %d at var ('..name..')\\n",'..predictibble.eval..','..name..');')
        code.append("}\\\n")
    end
    --code.append('printf("expected %d and was %d \\n",'..predictibble.eval..','..name..');')
    --code.append("\\\n")
end
