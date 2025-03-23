


private_key_obfuscate.real_byte_sec = function(props,randonizer,procedural_props,project_name,code, already_existed_integers,bytes_to_save,total_scope)
    local chosen_byte = private_key_obfuscate.get_randon_not_ajusted_byte(randonizer,bytes_to_save)
    code.append(private_key_obfuscate.create_padding(total_scope).."key["..chosen_byte.index.."] = ")
    predictibble =  private_key_obfuscate.make_predicible_operation(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)

    code.append(predictibble.code)
    if  predictibble.eval > 0 then
        code.append(" - ")
        code.append(predictibble.eval -chosen_byte.byte)
    end

    if  predictibble.eval <= 0 then
        code.append(" + ")
        code.append(chosen_byte.byte - predictibble.eval)
    end

    code.append(";")
    code.append("/*")
    code.append(chosen_byte.byte)
    code.append("*/")
    code.append("\\\n")

    if props.debug then 
        code.append("\tif("..chosen_byte.byte.." != key["..chosen_byte.index.."]){")
        code.append('printf("expected %d and was %d at key['..chosen_byte.index..']\\n",'..chosen_byte.byte..',key['..chosen_byte.index..']);')
        code.append("}\\\n")
    end

    chosen_byte.ajusted = true
    chosen_byte.current_value = chosen_byte.byte
end