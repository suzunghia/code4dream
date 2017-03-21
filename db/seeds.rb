# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Content.create(content_type: 'article', title: 'test1', body: 'body for test1')
# Content.create(content_type: 'article', title: 'test2', body: 'body for test2')
# Content.create(content_type: 'article', title: 'test3', body: 'body for test3')
# Content.create(content_type: 'article', title: 'test4', body: 'body for test4')


Category.create(name: 'root-cat', lft: 1, rgt: 22)
Category.create(name: 'sub-cat-1', lft: 2, rgt: 7)
Category.create(name: 'sub-cat-1-1', lft: 3, rgt: 4)
Category.create(name: 'sub-cat-1-2', lft: 5, rgt: 6)
Category.create(name: 'sub-cat-2', lft: 8, rgt: 11)
Category.create(name: 'sub-cat-2-1', lft: 9, rgt: 10)
Category.create(name: 'sub-cat-3', lft: 12, rgt: 21)
Category.create(name: 'sub-cat-3-1', lft: 13, rgt: 20)
Category.create(name: 'sub-cat-3-1-1', lft: 14, rgt: 17)
Category.create(name: 'sub-cat-3-1-1-1', lft: 15, rgt: 16)
Category.create(name: 'sub-cat-3-1-2', lft: 18, rgt: 19)

