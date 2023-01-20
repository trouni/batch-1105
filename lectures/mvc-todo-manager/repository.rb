class Repository
  def initialize
    @tasks = [] # array
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def add_task(task) # task is an instance of Task
    @tasks << task
  end
end