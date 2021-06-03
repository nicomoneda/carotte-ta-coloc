reload!;

UserTask.destroy_all

louis = User.find_by(email: 'llafon@gmail.com')
nico = User.find_by(email: 'nbraun@gmail.com')
lucas = User.find_by(email: 'lboitier@gmail.com')
guillaume = User.find_by(email: 'gdore@gmail.com')

# generate task current week

users = [louis, lucas, guillaume, nico]

Task.all.each do |task|
  UserTask.create(
    user: users.sample,
    task: task,
    status: false,
    week_on: Date.today.beginning_of_week
  )
end
# generate task next week
DistribTasksToUsersJob.perform_now(Coloc.first)

