# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
create_account = User.create([email: 'cc@123.com',
  password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts 'Admin account is created successfully!'

create_account = User.create([email: 'bb@123.com',
  password: '123456', password_confirmation: '123456', is_admin: 'false'])
puts 'Admin account is created successfully!'

job_info = [
  '印度阿育吠陀按摩師',
  '泰式推拿按摩師',
  '中式經穴按摩師',
  '中式腳底按摩師',
  '瑞典式按摩師',
  '芳香精油按摩師',
  '熱石按摩師',
  '日式按摩師',
  '德式生物電經絡按摩師',
  '淋巴按摩師',
  '中式人體穴位電療按摩師'
]
create_jobs = for i in 1..10 do
              Job.create!([title: job_info[rand(job_info.length)], description: "这是一个公开的工作", wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'false'])
            end
for i in 1..10 do
Job.create!([title: job_info[rand(job_info.length)], description: "这是一个隐藏的工作", wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'true'])
end

puts '10 Public jobs created.'
puts '10 Hidden jobs created.'
