

function main()

    props ={
        key ="my_key",
        name = "my_project"
    }
    code = public_key_obfuscate.create_encryptations (props)
    io.open("test.c","w"):write(code):close()

end 