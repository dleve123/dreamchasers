# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
dan = User.create(first_name: "Dan", last_name: "Lev", email_address: "dan@example.com")
kate = User.create(first_name: "Kate", last_name: "B", email_address: "kate@example.com")

dan.goals.create(name: "Complete the move", due_date: "August 15 2019".to_datetime)
dan.goals.create(
  name: "Learn to cook",
  description: "I want to spend some less money on food",
  due_date: 3.months.from_now
)

kate.goals.create(name: "Spin consistently")
kate.goals.create(name: "Complete masters program", due_date: 6.months.from_now)
