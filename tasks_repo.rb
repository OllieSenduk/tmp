class TasksRepo
  # Our database for the tasks
  def initialize
    # State
    @tasks = []
  end

# Behavior
# Add a task
# List all of the Tasks

  def add_task(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index - 1]
  end

end
