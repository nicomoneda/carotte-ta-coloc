puts 'Hello'

louis = User.find_by(email: 'louis.lafon@gmail.com')

UserTask.create!(
  user: louis,
  task: Task.first,
  status: false
)