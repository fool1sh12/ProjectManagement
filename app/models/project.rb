class Project < ApplicationRecord
  has_many :tasks
 
  def overdue_counter 
    counter = 0
    tasks.all.each do |task|
      if task.complete.blank? && task.due < Date.today
        counter = counter + 1
      end
    end
    return counter
  end

  def counter 
    tasks.all.count
  end

  def completion_counter
    counter - overdue_counter
  end

  def percentage
    "#{((completion_counter.to_f / counter.to_f) * 100.0).to_i}%" 
  end

end
