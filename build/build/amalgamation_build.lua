local alreay_amalamated_done = false
function amalgamation_build()
    if alreay_amalamated_done then
        return
    end
    alreay_amalamated_done = true

    local cli =create_cli_lua()
    local project = darwin.create_project("key_obfuscate")
    project.add_lua_code(cli)

   local result  =  project.generate_c_code({})
    darwin.dtw.write_file("release/key_obfuscate.c",result)
end
