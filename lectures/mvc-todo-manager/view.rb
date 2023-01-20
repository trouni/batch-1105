class View
  def display(tasks)
    puts '-' * 20
    puts 'Here are your tasks:'
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. [#{task.done? ? 'x' : ' '}] #{task.title}"
    end
    puts '-' * 20
  end

  def ask_for_title
    puts 'What is the title of your task?'
    print '> '
    gets.chomp
  end

  def ask_for_index
    puts 'What is the number of your task?'
    print '> '
    gets.chomp.to_i - 1
  end
end