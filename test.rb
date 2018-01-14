require_relative 'tasks_repo'
require_relative 'tasks_controller'
require_relative 'router'
require 'pry'

# Creating the neccesary objects
tasks_repo = TasksRepo.new
tasks_controller = TasksController.new(tasks_repo)
Router.new(tasks_controller).run
# performing actions
