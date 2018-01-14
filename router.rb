class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What would you like to do?"
      puts "1. Add a task"
      puts "2. List the tasks"
      puts "3. Mark a task as complete"

      choice = gets.chomp.to_i
      if choice == 1
        @controller.create
      elsif choice == 2
        @controller.list
      else choice == 3
        @controller.mark_as_done
      end
    end
  end
end
