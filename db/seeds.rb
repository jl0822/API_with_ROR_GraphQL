# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

author1 = Author.create(name: 'Arjunan', bio: 'Ruby developer')
author2 = Author.create(name: 'David', bio: 'Angular developer')
Article.create(
title: 'Basics of Ruby Programming',
description: 'This article is related to ruby programming',
author: author1
)
Article.create(
title: 'How to create Angular application',
description: 'This article is related to Angular App',
author: author2
)