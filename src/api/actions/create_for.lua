private_key_obfuscate.create_for = function(props,randonizer,procedural_props,project_name,code, already_existed_integers,bytes_to_save,total_scope)

    local var_name = project_name.."_scope_"..total_scope

    local predictibble =  private_key_obfuscate.make_predicible_operation(randonizer,procedural_props,project_name, already_existed_integers,bytes_to_save)
    
    code.append(private_key_obfuscate.create_padding(total_scope).."for(int "..var_name.." = "..predictibble.code.."; "..var_name.." < "..(predictibble.eval+1) .."; "..var_name.."++){\\\n")


end 