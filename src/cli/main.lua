

function main()

    props ={
        key ="teste",
        name = "my_project"
    }
    code = public_key_obfuscate.create_encryptations (props)
    io.open("test.h","w"):write(code):close()

end 