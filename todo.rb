require_relative 'config/application'


input = ARGV


option = input[0]
input = input[1..-1].join(" ")

case option
when "add"
  TaskController.add(input)
when "list"
  TaskController.list
when "delete"
  TaskController.delete(input)
when "completed"
  TaskController.update(input)
else
  puts " wrong input"
end