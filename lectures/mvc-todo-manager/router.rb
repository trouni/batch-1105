class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "#" * 10
    puts "Welcome to the MVC Todo Manager"
    puts "#" * 10
    puts
    loop do
      puts "What would you like to do?"
      puts "1. Display your tasks"
      puts "2. Add a task"
      puts "3. Mark a task as done"
      puts "0. Exit"
      puts
      puts "Please enter a number:"
      print '> '
      user_choice = gets.chomp.to_i

      case user_choice
      when 1 then @controller.display_tasks
      when 2 then @controller.add_task
      when 3 then @controller.mark_task_as_done
      when 0 then break
      end
    end

    puts
    puts "Thanks for using the MVC Todo Manager! See you!"
  end
end