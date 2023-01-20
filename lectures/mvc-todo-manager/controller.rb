require_relative 'task'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def add_task
    # 1. Tell the view to ask the user for the title of the task and store it
    title = @view.ask_for_title
    # 2. Create the task instance
    task = Task.new(title)
    # 3. Add it to the repository
    @repository.add_task(task)
  end

  def display_tasks
    list_tasks
  end

  def mark_task_as_done
    # Display the tasks
    list_tasks
    # Ask the user for the index of the task to mark as done
    index = @view.ask_for_index
    # Get the task instance from the repository
    task = @repository.find(index)
    # Mark the task as done
    task.mark_as_done!
  end

  private

  def list_tasks
    # 1. Get the tasks from the repository
    tasks = @repository.all
    # 2. Tell the view to display the tasks
    @view.display(tasks)
  end
end