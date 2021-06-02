ap "coucou je suis la"

tasks = [13, 9, 50, 10, 21, 25, 45, 37, 3].sort.reverse

users = {
    lucas: {
        id: 1,
        tasks: [],
        points: []
    },
    louis: {
        id: 2,
        tasks: [],
        points: []
    },
    nicolas: {
        id: 3,
        tasks: [],
        points: []
    }
}

users.map do |user|
  user_task = tasks.sample(3)
  users[user][:tasks] << user_task
  # user[:tasks]
  # user[:tasks] << user_task

  # tasks = tasks - user_task
  #user[:tasks]
end

ap users[:lucas][:tasks]
users[:lucas][:tasks]
