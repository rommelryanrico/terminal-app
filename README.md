### Term 1 Terminal Project using Ruby

# Here4U

Here4U is a terminal application written in Ruby which helps Coder Academy students cope with the ~~inhumane~~ stresses provided by the fast track course.

## Table of Contents
- [Here4U](#here4u)
  - [Table of Contents](#table-of-contents)
  - [Motivation & Inspiration](#motivation--inspiration)
  - [Build Process](#build-process)
  - [Features](#features)
  - [Technical](#technical)
  - [Setup](#setup)
  - [Screenshots](#screenshots)
  - [Authors](#authors)
  - [License](#license)
  - [Master Repository](#master-repository)
  - [References](#references)

## Motivation & Inspiration

The idea for this application came to Ryan after his experience of the first week of this course. He was feeling quite overwhelmed with everything and his stress levels were at an all time high. He eventually imploded by the end of the week and lost all confidence in himself. But through talking with friends, family and peers he was able to forget his worries, reframe his thinking and remember the reasons why he decided to do this course.

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

<img src=./docs/Brainstorm.jpg>
<img src=./docs/Flowchart.jpg>
<img src=./docs/Slack1.png>
<img src=./docs/Slack3.png>
<img src=./docs/Trello1.png>
<img src=./docs/Trello3.png>
<img src=./docs/PryTest1.jpg>
<img src=./docs/PryTest2.jpg>

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
