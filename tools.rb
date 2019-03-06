#module with tools to simulate computer sentience
module WellnessExercises
    #prints out each char at random interval to simulate typing in real time
    def typew(string)
        string.each_char do |str|
            print str
            slt = rand(0.05..0.10)
            sleep(slt)
        end
        sltime
        puts
    end

    #randomises time between each new line
    def sltime 
        time = rand(0.5..1.0)
        sleep(time)
    end

    #created to avoid writing puts `clear` a million times :)
    def clear
        puts `clear`
    end

    #print out exhale count to screen
    def breathe_out
        clear
        typew('Exhale')
        clear
        4.times do |x|
            puts x += 1
            sleep(1)
        end
    end

    #print out inhale count to screen
    def breathe_in
        clear
        puts typew("Inhale")
        clear
        4.times do |x|
            puts x += 1
            sleep(1)
        end
    end

    #print random expressions to user
    def no_worries(array)
        expressions = array.sample(1)
        
        expressions.each do |exp|
            puts `clear`
            typew(exp)
            sleep(1)
            puts
        end
    end
end