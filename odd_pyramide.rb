def odd_pyramide
    puts "combien d'étage veux-tu?"
    print "> "
    gets.chomp.to_i
end

def build floor
    i = 1
    discount = floor - 1
    while i <= floor
        print " " * (discount)
        puts "#" * ((i * 2) - 1)
        discount -= 1
        i += 1
    end
end

def perform
    build odd_pyramide
end

perform