### Term 1 Terminal Project using Ruby

# Here4U

Here4U is a terminal application written in Ruby which helps Coder Academy students cope with the ~~inhumane~~ stresses provided by the fast track course.

## Table of Contents
* [Motivation & Inspiration](#Motivation-&-Inspiration)
* [Build Process](#Build-Process)
* [Features](#Features)
* [Technical](#Technical)
* [Setup](#Setup)
* [Screenshots](#Screenshots)
* [Authors](#Authors)
* [License](#License)
* [Master Repository](#Master-Repository)
* [References](#References)
* [Acknowledgements](#Acknowledgements)

## Motivation & Inspiration

The idea for this application came to me (Ryan) after my experience of the first week of this course. I was feeling quite overwhelmed with everything and my stress levels were at an all time high. I eventually imploded by the end of the week and lost all confidence in myself. But through talking with friends, family and peers. I was able to forget my worries, reframe my thinking and remember the reasons why I decided to do this course.

## Build Process

Our primary aim was to create an application that would provide a set of activities to the user based on how they were feeling at the time. The activities would help the user to reset their mind, feel positive emotions and also remember their own reasons for doing this course. The program would then store their journals and create a text file to keep for self reflection.

We really set our focus on the experience of the app. It was really important to us that the user felt like they were talking to someone real, which we tried to convey through the language used and the way the information was presented, in order to build comfort and familiarity with the user. We also randomized the time it took to print each character and the time between each line to simulate computer sentience or the feeling that someone was typing to the user in real time.

## Features

1. Provides a set of activities based on how the user is feeling.
2. Activities include a breathing exercise, an affirmation exercise, a physical activity exercise and a random joke generator.
3. After every activity, it asks the user a question designed to elicit positive emotions.
4. Provides at the end of the program, a list of the user's journal entries for their own self reflection.
 
 - Extra features we wanted to implement:
    1. An exercise activity
    2. An imagery exercise that plays an audio file while running
    3. More paths for the user if they were feeling a 7-8 or 9-10 on the scale

## Technical

* Written in Ruby
* GEMS used:
  * colorize
  * colorized_string
  * date

## Setup

Install gems via terminal, set require and then run main.rb

```
gem install colorize

require_relative 'module'
require 'colorize'
require 'colorized_string'
require 'date'

ruby main.rb
```
## Screenshots



## Authors

* **Ivan Donato** - Coder Academy Cohort M0119

* **Rommel Ryan Rico** - Coder Academy Cohort M0119


## License

This project is licensed under the Ruby License - see the [LICENSE.txt](https://www.ruby-lang.org/en/about/license.txt) file for details

## Master Repository
https://github.com/rommelryanrico/terminal-app

## References

* Affirmations: 
https://biglifejournal.com/blogs/blog/growth-mindset-statements-affirmations-classroom-home
* Jokes: 
https://thenextweb.com/shareables/2009/10/17/376-oneliners-internet/

## Acknowledgements

* A-Pain: for the sick beats
* Coder Academy: for the sick beats
* Mum: also for the sick beats
