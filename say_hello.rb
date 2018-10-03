def ask_first_name
    puts "quels est ton prénom ?"
    gets.chomp
end

def say_hello first_name
    puts "Hello #{first_name}"
end

def perform
    say_hello ask_first_name
end

perform