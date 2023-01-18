require "debug"

def full_name(fname, lname)
  first_name = fname.capitalize
  debugger
  last_name = lname.capitalize

  "#{first_name} #{last_name}"
end

p full_name('kenta', 'asakura')

# 1. require 'debug'
# 2. add `debugger` where you want to stop your code
# 3. `next`, `continue` or `quit`
# 4. remove those lines when you're done
