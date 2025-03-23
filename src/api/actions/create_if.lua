
private_key_obfuscate.create_if = function(props,randonizer,procedural_props,project_name,code, already_existed_integers,bytes_to_save,total_scope)


    local predictibble =  private_key_obfuscate.make_predicible_operation(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    
    local comparation = randonizer.choice({"==","<",">","<=",">=","~="})
    local dif = 0
    if comparation == "<"then
        dif = 1
    end
    if comparation == ">"then
        dif = -1
    end
    if comparation == "~="then
        dif = 2
    end


    code.append(private_key_obfuscate.create_padding(total_scope))
    code.append("if(")
    code.append(predictibble.code)
    code.append(" ")
    code.append(comparation)
    code.append(" ")
    code.append(predictibble.eval+dif)
    code.append("){\\\n")


end 