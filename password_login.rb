def errormdp
    puts "mot de passe erroné. Recommence."
end

def define_password
    puts "quels est votre mot de passe ?"
    print "> "
   return @user_password = gets.chomp
end

def password_verification
    puts "veuillez resaisir votre mot de passe"
    print "> "
    @user_password_verify = gets.chomp
    if @user_password == @user_password_verify
        puts "Félicitation! Vous avez creé votre mot de passe!"
        return @user_password_verify
    end
    if @user_password != @user_password_verify
        errormdp
    end
        
end

def answerlogin
    puts "souhaitez-vous vous connecter Y/N?"
    print "> "
    return @answer = gets.chomp
end

def login password
    if @answer == "Y" || @answer == "y"
        puts "quel est votre mot de passe de connection ?"
        @mdpconnect = gets.chomp
    end
    if @answer == "N" || @answer == "n"
        puts "bye bye"
        exit
    end
end

def perform
    define_password
    password_verification
    while @user_password != @user_password_verify
        password_verification
    end
    answerlogin
    login @user_password_verify
    while @answer != "Y" && @answer != "y" && @answer != "N" && @answer != "n"
        print "wrong letter, please enter Y or N"
        answerlogin
        login @user_password_verify
    end
    while @user_password_verify != @mdpconnect
        errormdp
        login @user_password_verify
    end
   if @mdpconnect == @user_password_verify
    puts "conection reussi !"
   end
end

perform