function create_api()
    local api_project = darwin.create_project("key_obfuscate")
    api_project.add_lua_code("private_key_obfuscate = {}")

    api_project.add_lua_code("public_key_obfuscate = {}")

    local files,size = darwin.dtw.list_files_recursively("src/api",true)
    for i=1,size do
        local content = darwin.dtw.load_file(files[i])
        api_project.add_lua_code(content)
        api_project.add_lua_code("\n")
    end
    api_project.add_lua_code("return public_key_obfuscate")
    api_project.add_lua_code("\n")
   return  api_project.generate_lua_code({})
end 

function create_api_file()
    local api_content = create_api()
    darwin.dtw.write_file("release/key_obfuscate_api.lua",api_content)
end
