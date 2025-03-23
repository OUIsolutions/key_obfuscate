

function main()
    if darwin.argv.one_of_args_exist("lua_api") then
        create_api_file()
    end
    if darwin.argv.one_of_args_exist("lua_cli") then
        create_cli_lua_file()
    end
end 