# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Kam', email: 'kam@kam.com', password: '123')

Student.create(first_name: 'Sam', last_name: 'Lam', age: 99, education: 'College grad', user_id: 1)

Instructor.create(first_name: 'Alex', last_name: 'Zhe', age: 76, education: 'phd', salary: '134000', user_id: 1)

Course.create(course_name: 'Computer Programming 2100', hours: 200, user_id: 1)


