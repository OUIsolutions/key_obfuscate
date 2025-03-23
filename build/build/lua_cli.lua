



function create_cli_lua()
    local cli_project = darwin.create_project("cli")
    cli_project.add_lua_code("key_obfuscate = function()")
    cli_project.add_lua_code(create_api())
    cli_project.add_lua_code("end")
   cli_project.add_lua_code("\n")
   cli_project.add_lua_code("key_obfuscate = key_obfuscate()")
   local cli_files,size = darwin.dtw.list_files_recursively("src/cli",true)
   for i=1,size do
       local content = darwin.dtw.load_file(cli_files[i])
       cli_project.add_lua_code(content)
       cli_project.add_lua_code("\n")
   end
   cli_project.add_lua_code("main()")
    return cli_project.generate_lua_code({}) 
end
local cli_created = false
function create_cli_lua_file()
    
    if  cli_created then
        return
    end
    cli_created = true 
    local cli_content = create_cli_lua()
    darwin.dtw.write_file("release/key_obfuscate_cli.lua",cli_content)
end