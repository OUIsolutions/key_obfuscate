


private_key_obfuscate.real_byte_sec = function(randonizer,procedural_props,project_name,code, already_existed_integers,bytes_to_save)
    local chosen_byte = private_key_obfuscate.get_randon_not_ajusted_byte(randonizer,bytes_to_save)
    code.append("\tkey["..chosen_byte.index.."] = ")
    predictibble =  private_key_obfuscate.make_predicible_operation(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)

    code.append(predictibble.code)
    if  predictibble.eval > 0 then
        code.append(" - ")
        code.append(predictibble.eval -chosen_byte.byte)
    end

    if  predictibble.eval < 0 then
        code.append(" + ")
        code.append(chosen_byte.byte - predictibble.eval)
    end

    code.append(";")
    code.append("/*")
    code.append(chosen_byte.byte)
    code.append("*/")
    code.append("\\\n")
    chosen_byte.ajusted = true
    chosen_byte.current_value = chosen_byte.byte
end