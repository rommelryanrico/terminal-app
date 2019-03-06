
#intro preamble
#get user name
# introduce name into app, use it throughout to make it more personal
# ask for user location/campus
# store in file
# ask for what week they're in
#store week
# present scale
#get user input in relation to scale

# based on user input (scale) lead user through one of four paths
# Path 1
# 1. Breathing
# journal1 - "Write 3 things that you are grateful for today"
#2. Affirmations - mutter these under yor breath. repeat after me
#journal2 -  "Write three things that make you happy and why?"
#3. Physical Exercises - loosen them up
#journal 3 - "Write in words the reasons why you're doing the course?"
#4 Jokes
#journal 4 - "Write some short term goals. This helps manage stress"

# Path2
#2. Affirmations - mutter these under yor breath. repeat after me
#journal2 -  "Write three things that make you happy and why?"
#3. Physical Exercises - loosen them up
#journal 3 - "Write in words the reasons why you're doing the course?"
#4 Jokes
#journal 4 - "Write some short term goals. This helps manage stress"

# Path 3

#3. Physical Exercises - loosen them up
#journal 3 - "Write in words the reasons why you're doing the course?"
#4 Jokes
#journal 4 - "Write some short term goals. This helps manage stress

# path 4

#4 Jokes
#journal 4 - "Write some short term goals. This helps manage stress

#sign off with a goodbye message

# store journal entries from user
#present entries in a fiile back to user




# focus exercises
require 'colorize'
require 'colorized_string'

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
    puts typew('Exhale')
end

def breathing_pursed
    # puts `clear`
    # puts typew('breathe out')
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


jokes = ["And the Lord said unto John \"Come forth and you will receive eternal life\". \nBut John came fifth and won a toaster.", 
    "I threw a boomerang a few years ago.\nNow I live in constant fear.", "My grandfather has the heart of a lion \nand a lifetime ban at the zoo.",
    "Someone stole my Microsoft Office and they're gonna pay. You have my Word.", "The first rule about Alzheimers club: Don't talk about chess club", 
    "I’ve just written a song about tortillas; actually, it’s more of a rap.", "I was raised as an only child, \nwhich really annoyed my sister",
    "Where does a king keep his armies? \nIn his sleevies."]


first_thought_array = []
second_thought_array = []
third_thought_array = []
fourth_thought_array = []
name = 'Julia'

# -----------------------------Beginning------------------------

puts `clear`
typew("Hey")
puts
typew("May I ask your name?")
puts 
name = gets.strip
puts `clear`
typew("Hi #{name}. It's nice to meet you")
puts
typew("Congratulations on being accepted into Coder Academy.")
puts
typew("It's a wonderful achievement.")
puts
puts `clear`
typew("Tell me #{name}, which campus are you located in?")
puts
puts "[1] Sydney".colorize(:color => :light_white, :background => :light_black)
puts "[2] Brisbane".colorize(:color => :light_white, :background => :light_black)
puts "[3] Melbourne".colorize(:color => :light_white, :background => :light_black)
campus = gets.strip
if campus == '1'
    typew("Wow. Sydney is a beautiful city. It can get very busy so make sure you find ways to unwind")
elsif campus == '2'
    typew("Brisbane is awesome. It's such a great city with amazing weather. Lucky you!")
elsif campus == '3'
    typew("Wow. Melbourne is really cool. Even if it's cold in winter find ways to get outside")
end
puts `clear`

# # --------------------------------------Graph--------------------------------
typew("So #{name}, I want you to have a look at this")
puts
puts
puts
puts "..................................................".colorize(:color => :light_white, :background => :light_black)
print "    1    2".colorize(:color => :light_white, :background => :light_black)
print "    3    4".colorize(:color => :light_white, :background => :light_black)
print "    5    6".colorize(:color => :light_white, :background => :light_black)
print "    7    8    ".colorize(:color => :light_white, :background => :light_black)
puts
print "..................................................".colorize(:color => :light_white, :background => :light_black)
sleep(3)
puts 
puts
typew("On a scale from 1 to 8 - 1 being the lowest and 8 the highest - how are you feeling right now?")
puts
scale = gets.strip
# # ---------------------------------1st Thought--------------------------------
# typew("Can you put into words how you are feeling?")
# puts
# first_thought = gets.strip
# first_thought_array << first_thought

# puts `clear`

if scale == '1' || scale == '2'
    typew("#{name}, it's ok to feel down.")
    puts
    typew("But it's also important not to stay there too long")
    puts
    typew("Rememeber, you are an incredible individual.")
    typew(" And you are doing an amazing thing")
    puts `clear`
    typew("Sometimes, when there's a lot on our plate we lose sight of the present")
    puts
    typew("In these moments, it's always important to ground ourselves")
    puts
    typew("And that is what we're going to do now")
end


# ------------------------Breathing-----------------------------------------

clear()
typew("We are going to do a set of breathing exercises")
puts
typew("Breathing exercises help us relax")
puts
typew("Employing a relaxed breathing pattern calms the nervous system.")
puts
typew("Would you like to do this exercise, #{name}?(Y/N)")
puts

exercise_response = gets.strip.downcase
if exercise_response == "n"

else
    clear()
    typew("Fantastic")
    puts
    typew("Remember to breathe in through your nose and out through your mouth")
    clear()
    puts typew("Let's begin")
    inhale
    breathe_out_command
    breathing_pursed
    inhale
    breathe_out_command
    breathing_pursed
    inhale
    breathe_out_command
    breathing_pursed
    clear
    typew("Great")
    puts
    typew("Spare a moment to write one thing that you are grateful for today and why")
    puts
    second_thought_array = gets.strip    
    typew("Thank you for sharing your thoughts")
end
# Ryan's affirmation exercise

affirmations = ["Mistakes help me learn and grow", "I haven't figured it out YET", "I am on the right track", "I can do hard things", "This might take time and effort", "I stick with things and don't give up easily", "I strive for progress, not perfection", "I go after my dreams", "I cheer myself up when it gets hard", "I am a problem solver", "I try new things", "I embrace new challenges", "Learning is my superpower", "I am brave enough to try", "I improve with lots of practice", "I grow my brain by learning hard things", "I try different strategies", "When I don't succeed right away. I try again", "I ask for help when I need it","I learn from my mistakes", "I focus on my own results", "I was born to learn", "When I fall, I say I can't do it YET and try again", "I ask for help when I need it", "I learn from my mistakes", "I focus on my own results", "I was born to learn", "When I fail, I say, I can't d it YET and try again", "I strive to do my best", "I can learn anything"]

ran_affirmations = affirmations.sample(8)

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

    clear()
    typew("They say that laughter is the best medicine")
    puts
    typew("It boosts the immune system and releases endorphins")
    puts
    typew("It also protects the heart and lightens anger's heavy load")
    puts
    typew("But more importantly...........it's fun")
    clear
    typew("Here are a series of jokes to make you laugh")
    puts
    typew("If they fail, I'm sorry.")
    puts
    typew("It's what I could find.")
    typew(" Brace yourself")
    clear
    typew("By the way, this is compulsory. No choice :\)")
    puts
    typew("Enjoy...")
    
    ran_jokes = jokes.sample(6)
    
    ran_jokes.each do |joke|
        puts `clear`
        typew(joke)
        sleep(2)
        puts
    end