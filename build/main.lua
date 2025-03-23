

function main()
    if darwin.argv.one_of_args_exist("lua_api") then
        create_api_file()
    end
    if darwin.argv.one_of_args_exist("lua_cli") then
        create_cli_lua_file()
    end
    if darwin.argv.one_of_args_exist("amalgamate") then
        amalgamation_build()
    end
    if darwin.argv.one_of_args_exist("local_compilation") then
        local_compilation()
    end
    if darwin.argv.one_of_args_exist("alpine_static") then
        alpine_static_build()
    end
    if darwin.argv.one_of_args_exist("debian_static") then
        debian_static_build()
    end
    if darwin.argv.one_of_args_exist("rpm_static") then
        rpm_static_build()
    end
    if darwin.argv.one_of_args_exist("windowsi32") then
        windowsi32_build()
    end
end 