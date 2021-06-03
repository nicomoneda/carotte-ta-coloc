puts 'Hello'

louis = User.find_by(email: 'louis.lafon@gmail.com')

UserTask.create!(
  user: louis,
  task: Task.first,
  status: 'To be done'
)

UserTask.create!(
  user: louis,
  task: Task.second,
  status: 'To be done'
)