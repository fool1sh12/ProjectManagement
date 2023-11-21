class Project < ApplicationRecord
  has_many :tasks
 
  def complete_counter 
    counter = 0
    tasks.all.each do |task|
      if task.complete.blank?
        counter = counter + 1
      end
    end
    return counter
  end

end
