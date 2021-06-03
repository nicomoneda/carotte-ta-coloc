desc "This task is called by the Heroku scheduler add-on"
task :assign_tasks => :environment do
  puts "Assign the tasks to the users..."
  Coloc.all.each do |coloc|
    DistribTasksToUsersJob.perform_later(coloc)
    puts "Finito."
  end
end