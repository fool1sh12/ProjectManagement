class Project < ApplicationRecord
  has_many :tasks
 
  def overdue_counter 
    overdue_tasks = tasks.select do |task|
      task.complete.blank? && task.due < Date.today
    end
    return overdue_tasks.count
  end

  def counter 
    tasks.all.count
  end

  def completion_counter
    counter - overdue_counter
  end

  def percentage
    if counter != 0
      "#{((completion_counter.to_f / counter.to_f) * 100.0).to_i}%" 
    else
      "0%"
    end
  end


end
