

private_key_obfuscate.create_integer = function(randonizer,procedural_props,project_name,code, already_existed_integers,bytes_to_save)

    local index = #already_existed_integers + 1
    local name = project_name.."_integer_"..index
    code.append("\tint "..name.." = ")
    predictibble =  private_key_obfuscate.make_predicible_operation(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    code.append(predictibble.code)
    code.append(";")
    code.append("/*")
    code.append(predictibble.eval)
    code.append("*/")
    code.append("\\\n")
    --code.append(predictibble.evalated_str)
    already_existed_integers[index] = predictibble.eval

    code.append('printf("expected %d and was %d \\n",'..predictibble.eval..','..name..');')
    code.append("\\\n")
end
