class TaskController

  def self.list
    Task.all.each do |t|
      View.display_list(t.id,t.title)
    end
  end

  def self.add(new_task)
    new_task = Task.create(title: "#{new_task}", object: "")
    View.display_item_added_successfully(new_task.title)
  end

  def self.delete(id) #=> self.delete(3)
    task_delete = Task.find_by(id: id)
    View.delete(task_delete)
    task_delete.destroy
  end

  def self.update(id)
    new_update = Task.find_by(id: id)
    View.update(new_update)
    new_update.update(completed: true)

  end
end

class View
  def self.display_list(id,title)
    puts "#{id}. #{title}"
  end

  def self.display_item_added_successfully(new_task_title)
    puts "#{new_task_title} added!"
  end

  def self.delete(task)
    puts "#{task.title} deleted!"
  end

  def self.update(task)
    puts "#{task.title} completed!"
  end
end
