def typew(string)
    string.each_char do |str|
        print str
        slt = rand(0.09..0.15)
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
    puts typew('Exhale for 5 seconds')
end

def breathing_pursed
    puts `clear`
    puts typew('breathe out')
    puts `clear`
    sleep(0.5)
    5.times do |x|
        puts x += 1
        sleep(1)
    end
end

def inhale
    puts `clear`
    puts typew("Inhale for 4 seconds")
    puts `clear`
    4.times do |x|
        puts x += 1
        sleep(1)
    end
end

first_thought_array = []
second_thought_array = []
third_thought_array = []
fourth_thought_array = []

name = "Ryan"

affirmations = ["Mistakes help me learn and grow", "I haven't figured it out YET", "I am on the right track", "I can do hard things", "This might take time and effort", "I stick with things and don't give up easily", "I strive for progress, not perfection", "I go after my dreams", "I cheer myself up when it gets hard", "I am a problem solver", "I try new things", "I embrace new challenges", "Learning is my superpower", "I am brave enough to try", "I improve with lots of practice", "I grow my brain by learning hard things", "I try different strategies", "When I don't succeed right away. I try again", "I ask for help when I need it","I learn from my mistakes", "I focus on my own results", "I was born to learn", "When I fall, I say I can't do it YET and try again", "I ask for help when I need it", "I learn from my mistakes", "I focus on my own results", "I was born to learn", "When I fail, I say, I can't d it YET and try again", "I strive to do my best", "I can learn anything"]

ran_affirmations = affirmations.sample(8)

 

# -----------------------------------------------------------------------------------
clear()
typew("We are now going to do an affirmation exercise")
puts
typew("This exercise has the ability to convince your mind into believing the stated affirmation")
puts
typew("It works because the mind doesn't know the difference between what is real or fantasy ")
puts
typew("Would you like to do this exercise #{name}?(Y/N)")
puts

exercise_response = gets.strip.downcase
if exercise_response == "n"

else
    clear()
    typew("That's great to hear")
    puts
    typew("Remember to repeat the affirmations out loud word for word")
    clear()
    puts typew("Let's begin")
end

ran_affirmations.each do |affirmations|
    puts clear
    typew(affirmations)
    sleep(5)
    puts
end

    clear
    typew("Great")
    puts
    typew("Now I want you to write about something that makes you happy and why?")
    puts
    third_thought_array = gets.strip    
    typew("Thank you for sharing that with me")
