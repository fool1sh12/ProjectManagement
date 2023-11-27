class Task < ApplicationRecord
  belongs_to :project

  def complete_test
    if complete? && due < Date.today
      "Complete"
    elsif due < Date.today && complete? == false
      "Overdue"
    end
  end

  def overdue_calculator
    if complete?
      false
    else
      due < Date.today
    end
  end

  def class_selecter
    if complete_test == "Complete"
      "badge text-bg-success"
    elsif complete_test == "Overdue"
      "badge text-bg-danger"
    end
  end

end
