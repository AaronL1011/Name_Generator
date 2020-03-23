require 'artii'
require 'tty-progressbar'

def chooseName()
    all_the_humans = [
        "Aaron Lewis",
        "Adam Payne",
        "Andrew Tran",
        "Anh Nguyen",
        "Ashley Bridges",
        "Christopher Morris",
        "Vicky Pham",
        "Esther Csoke",
        "Evelyn Paplauskas",
        "Gary Ho",
        "Gregory Martin",
        "Harrison Powell",
        "Harry Buisman",
        "Hoang Hai Ho",
        "Hugh Greethead",
        "Jacob Colyvan",
        "Jeremy Wu",
        "Linda Ojinnaka",
        "Ling Yen Lee",
        "Martin Kennedy",
        "Martin Valdivia",
        "Matthew Molloy",
        "Morgan Webb",
        "Morgan Batterham",
        "Nikki Waelkens",
        "Oliver Mason",
        "Patricia Pavia",
        "Rederyck Vazquez",
        "Rose Hernandez",
        "Ross Baker",
        "Ryan Cook",
        "Vincent Lieu",
        "Gini Thomas",
        "Wendy Doan",
        "Wilkins Cheng"]        
    puts `clear`
    randomChoice = all_the_humans[rand(all_the_humans.length)]
    bar = TTY::ProgressBar.new("Preparing a name... [:bar]", total: 30)
    30.times do
      sleep(2)
      bar.advance(1)
    end
    a = Artii::Base.new :font => 'slant'
    puts a.asciify(randomChoice)
end


chooseName()