module WellnessExercises
    def typew(string)
        string.each_char do |str|
            print str
            slt = rand(0.05..0.10)
            sleep(slt)
        end
        sltime
    end

    def sltime 
        time = rand(0.5..1.5)
        sleep(time)
    end

    def clear
        puts `clear`
    end

    def breathe_out_command
        puts `clear`
        puts typew('Exhale')
    end

    def breathing_pursed
        puts `clear`
        5.times do |x|
            puts x += 1
            sleep(1)
        end
    end

    def inhale
        puts `clear`
        puts typew("Inhale")
        puts `clear`
        4.times do |x|
            puts x += 1
            sleep(1)
        end
    end
end