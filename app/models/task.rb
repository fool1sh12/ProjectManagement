class Task < ApplicationRecord
  belongs_to :project

  def complete_test
    if complete?
      "Complete"
    end
  end

  def overdue_calculator
    if complete?
      false
    else
      due < Date.today
    end
  end

end
