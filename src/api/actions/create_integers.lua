

private_key_obfuscate.create_integer = function(props,randonizer,procedural_props,project_name,code, already_existed_integers,bytes_to_save,total_scope)

    local index = #already_existed_integers + 1
    local name = project_name.."_integer_"..index
    code.append(private_key_obfuscate.create_padding(total_scope).."int "..name.." = ")
    local predictibble =  private_key_obfuscate.make_predicible_operation(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    code.append(predictibble.code)
    code.append(";")
    code.append("/*")
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
