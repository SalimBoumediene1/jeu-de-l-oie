require 'colorize'

def odd_pyramide
    puts "Bonjour, bienvenue dans le jeux e l'oie"
    puts "Tu vas jeter les dés a chaque tour"
    puts " tu pourras voir a chaque lancer de dés ta progression."
    print "> "
    puts ""
    
end

def lancedes
    @prng = Random.new
    return @prng.rand(6) 
end

def buildPyramide
    i = 0
    stair = 10
    count = 0
    while stair >= 0
        while i <= 10
            print "\\"
            if stair == i
                print "X".red
            end
            print "/ "
            i +=1
        end
        puts ""
        i = 0
        if lancedes == 6 || lancedes == 5
            stair -=1
            #puts "tu te trouve à l'étage #{stair}"
            lancedes 
        end
        if lancedes == 1
            stair +=1
            if stair > 10
                stair -= 1
            end
            lancedes
        end
        if lancedes == 2 || lancedes == 3 || lancedes == 4
            #puts "dommage tu n'avances pas"
            lancedes
        end
        count += 1
    end
    puts ""
    puts "Bravo! Tu as gagné! ton nombre de lancé de dès est de: #{count}"
end


def perform
    odd_pyramide
    buildPyramide
end

perform