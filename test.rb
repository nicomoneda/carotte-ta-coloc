UserTask.destroy_all

DistribTasksToUsersJob.perform_now(Coloc.first)
