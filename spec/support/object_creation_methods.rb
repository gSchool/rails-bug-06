def create_user(overrides = {})
  User.create!({
    name: 'Some User',
    email: 'user@example.com',
    password: 'password',
    password_confirmation: 'password'
  }.merge(overrides))
end

def create_task(overrides = {})
  task = Task.new(overrides)
  task.task_list_id = counter
  task.save!
  task
end

def create_task_list(overrides = {})
  task = TaskList.new(overrides)
  task.id = counter
  task.save!
  task
end

def counter
  @counter ||= 0
end