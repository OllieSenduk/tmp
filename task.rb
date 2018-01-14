class Task

  attr_reader :name

  def initialize(name)
    # Called when a new Task Object is created *Task.new("shopping")
    # State
    @name = name
    # String
    @completed = false
    # Boolean
  end

  # Behavior

  def completed?
    # Returns us the current state of our Task object
    return @completed
  end

  def finished
    # Changes the state of our current Task object
    @completed = true
  end

end
