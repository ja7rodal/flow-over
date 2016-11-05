# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

questions = Question.create([{title: 'Question 1', description: 'Primeros del CRUD, index,show,create?'},
  {title: 'tal bootstrap', description: 'la gem, scss y el javascript?'},
  {title: 'finish scaff', description: 'update and delete'},
  {title: 'Announcents -alert ', description: 'notice'}
  ])
