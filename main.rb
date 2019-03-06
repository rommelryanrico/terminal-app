require_relative 'module'
require 'colorize'
require 'colorized_string'
require 'date'

class Wellness
    include WellnessExercises
    attr_accessor :name, :campus, :first_thought, :second_thought, :third_thought, :fourth_thought
    def initialize
        @name = ""
        @campus = ""
        @first_thought = ""
        @second_thought = ""
        @third_thought = ""
    end

    def get_name
        name = ""
        clear
        typew("Hey")
        # puts
        typew("May I ask your name?")
        # puts
        name = gets.strip
        @name = name.capitalize
        clear
        typew("Hi #{@name}. It's nice to meet you")
        # puts
        typew("Congratulations on being accepted into Coder Academy.")
        # puts
        typew("It's a wonderful achievement.")
        # puts
        clear
    end

    def get_location
        campus = ""
        typew("Tell me #{@name}, which campus are you located in?")
        # puts
        puts "[1] Sydney".colorize(:color => :light_white, :background => :light_black)
        puts "[2] Brisbane".colorize(:color => :light_white, :background => :light_black)
        puts "[3] Melbourne".colorize(:color => :light_white, :background => :light_black)
        campus = gets.strip
        if campus == '1'
            typew("Wow. Sydney is a beautiful city. It can get very busy so make sure you find ways to unwind")
            @campus = 'Sydney'
        elsif campus == '2'
            typew("Brisbane is awesome. It's such a great city with amazing weather. Lucky you!")
            @campus = 'Brisbane'
        elsif campus == '3'
            typew("Wow. Melbourne is really cool. Even if it's cold in winter find ways to get outside")
            @campus = 'Melbourne'
        end
        clear
    end


    def display_graph
        typew("So #{name}, I want you to have a look at this")
        # puts
        puts
        puts
        puts "..................................".colorize(:color => :light_white, :background => :light_black)
        print "    1    2".colorize(:color => :light_white, :background => :light_black)
        print "    3    4".colorize(:color => :light_white, :background => :light_black)
        print "    5    6    ".colorize(:color => :light_white, :background => :light_black)
        puts
        print "..................................".colorize(:color => :light_white, :background => :light_black)
        sleep(3)
        puts 
        puts
        typew("On a scale from 1 to 6 - 1 being the lowest and 6 the highest - how are you feeling right now?")
        # puts
        scale = gets.strip
        return scale
    end
    
    def breathing_preamble
        response = ""
        typew("#{@name}, it's ok to feel down.")
        # puts
        typew("But it's also important not to stay there too long")
        # puts
        typew("Remember, you are an incredible individual.")
        clear()
        typew("We are going to do a set of breathing exercises")
        # puts
        typew("Employing a relaxed breathing pattern calms the nervous system.")
        # puts
        typew("Would you like to do this exercise, #{@name}?(Y/N)")
        # puts
        response = gets.strip.downcase
        return response
    end
    
    def breathing_generator
        clear
        typew("Fantastic")
        # puts
        typew("Remember to breathe in through your nose and out through your mouth")
        clear
        typew("Let's begin")
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
        # puts
    end

    def get_first_thought
        first_thought_array = []
        typew("Spare a moment to write one thing that you are grateful for today and why")
        # puts
        first_thought_array = gets.strip    
        typew("Thank you for sharing your thoughts")
        @first_thought = first_thought_array
    end
    
    def affirmation_preamble
        response = ""
        clear
        typew("We are now going to do an affirmation exercise")
        # puts
        typew("By broadening the basis of our self-worth, affirmations can help us regulate our emotions.")
        # puts
        typew("Would you like to do this exercise, #{name}?(Y/N)")
        # puts
        response = gets.strip.downcase
        return response
    end

    def choice3_4_message
        clear
        typew("I'm glad you're feeling ok. Here is something that might help you through the day")
    end

    def affirmation_generator(array)
        clear
        typew("That's great to hear")
        # puts
        typew("Remember to repeat the affirmations, word for word")
        clear
        puts typew("Let's begin")
        ran_affirmations = array.sample(5)
        ran_affirmations.each do |affirmations|
            clear
            typew(affirmations)
            sleep(3)
            puts
        end
    end

    def get_second_thought
        second_thought_array = []
        typew("Great")
        # puts
        typew("Now, write about something that makes you happy")
        # puts
        second_thought_array = gets.strip    
        typew("Thank you for sharing that with me")
        @second_thought = second_thought_array
    end

    def joke_preamble
        clear
        typew("They say that laughter is the best medicine")
        # puts
        typew("It boosts the immune system and releases endorphins")
        # puts
        typew("But more importantly...........laughing is fun")
        clear
        typew("Here are a series of jokes to make you laugh")
        # puts
        typew("If they fail, I'm sorry.")
        # puts
        typew("Brace yourself")
    end

    def choice5_6_message
        clear
        typew("I'm so happy that you feel great! Let's keep the day going with some joy!")
    end

    def random_joke_generator(array)
        ran_jokes = array.sample(5)
        
        ran_jokes.each do |joke|
            clear
            typew(joke)
            sleep(2)
            puts
        end
    end

    def get_third_thought
        third_thought_array = []
        clear
        typew("Awesome")
        # puts
        typew("Write a short term goal to achieve by the end of the day")
        # puts
        third_thought_array = gets.strip    
        @third_thought = third_thought_array
    end

    def write_to_txt
        File.open("#{@name}.txt", 'a') do |line|
            line << Date.today.strftime("%d/%m/%y")
            line << "\n\n"
            line << "Name: " + @name + "\n"
            line << "-------------------\n\n"
            line << "Location: " + @campus + "\n"
            line << "-------------------\n"
            line << "\n\n"
            line << "Thank you for taking part in the Wellness App\n"
            line << "Here are the entries you made for your perusal\n\n"
            line << "\n" + "What I'm grateful for" + "\n"
            line << "-------------------"
            line << "\n" + @first_thought + "\n" + "\n"
            line << "\n" + "Makes me happy" + "\n"
            line << "-------------------"
            line << "\n" + @second_thought + "\n" + "\n"
            line << "\n" + "Short term goal" + "\n"
            line << "-------------------"
            line << "\n" + @third_thought + "\n" + "\n"
            line <<
        end
    end

    def goodbye_message
        clear
        typew("Thank you for being so open")
        # puts
        typew("I have created a personal file with all your entries for self-reflection")
        # puts
        typew("Remember...")
        # puts
        typew("Don't let what you cannot do intefere with what you can do")
        clear
        typew("Have a great day")
    end

end

jokes = ["And the Lord said unto John \"Come forth and you will receive eternal life\". \nBut John came fifth and won a toaster.", 
    "I threw a boomerang a few years ago.\nNow I live in constant fear.", "My grandfather has the heart of a lion \nand a lifetime ban at the zoo.",
    "Someone stole my Microsoft Office and they're gonna pay. \nYou have my Word.", "The first rule about Alzheimers club: \nDon't talk about chess club", 
    "I’ve just written a song about tortillas; \nactually, it’s more of a rap.", "I was raised as an only child, \nwhich really annoyed my sister",
    "Where does a king keep his armies? \nIn his sleevies."]

affirmations = ["Mistakes help me learn and grow", "I haven't figured it out YET", "I am on the right track",
                "I can do hard things", "This might take time and effort", "I stick with things and don't give up easily", 
                "I strive for progress, not perfection", "I go after my dreams", "I cheer myself up when it gets hard", 
                "I am a problem solver", "I try new things", "I embrace new challenges", "Learning is my superpower", 
                "I am brave enough to try", "I improve with lots of practice", "I grow my brain by learning hard things", 
                "I try different strategies", "When I don't succeed right away, I try again", "I ask for help when I need it", 
                "I learn from my mistakes", "I focus on my own results", "I was born to learn", "When I fall, I say I can't do it YET and try again", 
                "I ask for help when I need it", "I learn from my mistakes", "I focus on my own results", 
                "I was born to learn", "I strive to do my best", "I can learn anything"]

no_worries_expressions = ["No worries.", "Not a problem.", "That\'s ok."]                

new_user = Wellness.new
new_user.get_name
new_user.get_location
choice = new_user.display_graph

case
when choice == '5' || choice == '6'
    new_user.choice5_6_message
    new_user.joke_preamble
    new_user.random_joke_generator(jokes)
when choice == '3' || choice == '4'
    new_user.choice3_4_message
    yes_no = new_user.affirmation_preamble
    if yes_no == 'n'
        new_user.joke_preamble
        new_user.random_joke_generator
    else
        new_user.affirmation_generator(affirmations)
        new_user.get_second_thought
        new_user.joke_preamble
        new_user.random_joke_generator(jokes)
    end
else
    yes_no = new_user.breathing_preamble
    if yes_no == 'n'
        new_user.no_worries(no_worries_expressions)
        yes_no = new_user.affirmation_preamble
        if yes_no == 'n'
            new_user.joke_preamble
            new_user.random_joke_generator(jokes)
        else
            new_user.affirmation_generator(affirmations)
            new_user.get_second_thought
            new_user.joke_preamble
            new_user.random_joke_generator(jokes)
        end     
    else
        new_user.breathing_generator
        new_user.get_first_thought
        yes_no = new_user.affirmation_preamble
        if yes_no == 'n'
            new_user.joke_preamble
            new_user.random_joke_generator(jokes)
        else
            new_user.affirmation_generator(affirmations)
            new_user.get_second_thought
            new_user.joke_preamble
            new_user.random_joke_generator(jokes)
        end
    end
end

new_user.get_third_thought
new_user.write_to_txt
new_user.goodbye_message

