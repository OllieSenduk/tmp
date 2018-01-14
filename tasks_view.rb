class TasksView

  def initialize
    # No state for view
  end

  def ask_user_for_task
    puts "What task would you like to add?"
    task = gets.chomp
  end

  def ask_user_for_task_index(tasks)
    puts "please provide the index"
    list_tasks(tasks)
    answer = gets.chomp
  end

  def list_tasks(tasks)
    tasks.each_with_index do |task, index|
      x = task.completed? ? "[X]" : "[]"
      puts "#{index + 1}. #{x} #{task.name}"
    end
  end

end
