class TasksController
  require_relative 'task'
  require_relative 'tasks_view'

  def initialize(repo)
    @repo = repo
    @view = TasksView.new
    # State
  end

  # Behavior

  # list
  def list
    # Get the array from the repository
    tasks = @repo.all
    # Give the array to the view
    @view.list_tasks(tasks)
  end

  # create
  def create
    # ask user what he wants to add
    name = @view.ask_user_for_task
    #create task
    task = Task.new(name)
    # give this to the repository
    @repo.add_task(task)
  end

  # mark_as_done
  def mark_as_done
    list
    puts "put in the number of the task you want to mark"
    answer = gets.chomp.to_i
    task = @repo.find(answer)
    task.finished
  end
end
