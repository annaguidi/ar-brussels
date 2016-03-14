require 'faker'


10.times do
  Recipe.create(name: Faker::Hacker.noun)
end

3.times do
  i=1
  10.times do
    Comment.create(title: Faker::Hacker.noun, body: Faker::Hacker.say_something_smart, recipe_id: "#{i}" )
    i += 1
  end
end
