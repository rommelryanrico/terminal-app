
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
# require 'colorize'
# require 'colorized_string'

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
# puts `clear`
# typew("I know things can get difficult during this course.")
# puts
# typew("It's normal to struggle with coding.")
# puts
# typew("But I want you to know that whatever you are going through, I'm here to listen.")
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
    typew("Wow. Melbourne is really cool. Even if it's cold in winter find ways to do get outside")
end
name = 'ivan'
puts `clear`
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
typew("On a scale from 1 to 8 - 1 being the lowest and 9 the highest - how are you feeling right now?")
puts
scale = gets.strip
first_thought_array = []
typew("Can you put into words how you are feeling?")
first_thought = gets.strip
first_thought_array << first_thought

puts `clear`

if scale == '1' || scale == '2'
    typew("#{name}, it's ok to feel down.")
    puts
    typew(" But it's also important no to stay there too long")
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