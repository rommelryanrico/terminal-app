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

The idea for this application came to Ryan after his experience of the first week of this course. He was feeling quite overwhelmed with everything and his stress levels were at an all time high. He eventually imploded by the end of the week and lost all confidence in him myself. But through talking with friends, family and peers he was able to forget his worries, reframe his thinking and remember the reasons why he decided to do this course.

## Build Process

Our primary aim was to create an application that would provide a set of activities to the user based on how they were feeling at the time. The activities would help the user to reset their mind and feel positive emotions. The program would also store a set of journal entries and create a text file to keep for self reflection.

We really set our focus on the experience of the app. It was really important to us that the user felt like they were talking to someone real. We tried to convey this through the language we used and the way the information was presented, in order to build comfort and familiarity with the user. We also randomized the time it took to print each character and the time between each line to simulate computer sentience or the feeling that someone was typing to the user in real time.

## Features

1. Provides an activity path based on how the user is feeling.
2. Activities include a breathing exercise, an affirmation exercise and a random joke generator.
3. After every activity is completed, it asks the user a question designed to elicit positive emotions.
4. A list of the user's journal entries is provided at the end of the program for their own self reflection.
 
 - Extra features we wanted to implement:
    1. A physical exercise activity
    2. An imagery exercise that plays an audio file while running
    3. More paths for the user if they were feeling a 7-8 or 9-10 on the scale

## Technical

* Written in Ruby
* GEMS used:
  * colorize
  * colorized_string
  * date

Initially we cared more for the experiential component of the app at the expense of an organised control flow. However this made the source code very disorganised.

The implementaion of a class and class functions, as well as a module, allowed us to structure the code in a way that was more presentable and readable. We found that the output was also more efficient once the code was refactored. 

Dealing with the if/else conditionals was also easier when we used Ruby case statements.

## Setup

Install gems via terminal, set require and then run main.rb

```
gem install colorize

require_relative 'tools'
require 'colorize'
require 'colorized_string'
require 'date'

ruby main.rb
```

## Screenshots
#### Brainstorm
![brainstorm](https://user-images.githubusercontent.com/47291020/53855575-4871e400-4022-11e9-82ff-3f711dc0b28c.jpg)
#### Flowchart
![flowchart](https://user-images.githubusercontent.com/47291020/53855569-4576f380-4022-11e9-973f-518941adf520.jpg)
#### Digital Communication
<img width="1440" alt="slack1" src="https://user-images.githubusercontent.com/47291020/53855570-460f8a00-4022-11e9-9364-f4daf024c76f.png">
<img width="1440" alt="slack3" src="https://user-images.githubusercontent.com/47291020/53855571-460f8a00-4022-11e9-8de9-290ef3daa3eb.png">
<img width="1440" alt="trello1" src="https://user-images.githubusercontent.com/47291020/53855572-46a82080-4022-11e9-90ca-916c0003c59e.png">

#### Testing
![pry test 1](https://user-images.githubusercontent.com/47291020/53860451-3c435200-4035-11e9-8243-9eea28799bbc.jpg)
![pry test 2](https://user-images.githubusercontent.com/47291020/53860457-3e0d1580-4035-11e9-8eac-53ec124cd08d.jpg)

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
