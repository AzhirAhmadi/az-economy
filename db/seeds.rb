# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

general_params = {
  first_name: 'Azhir',
  last_name: 'Ahmadi',
  password: '123456'
}
User.create(general_params.merge({
                                   email: 'admin@test.com',
                                   role: Admin.create
                                 }))
User.create(general_params.merge({
                                   email: 'teacher@test.com',
                                   role: Teacher.create
                                 }))
User.create(general_params.merge({
                                   email: 'student@test.com',
                                   role: Student.create(student_number: 123_456)
                                 }))
