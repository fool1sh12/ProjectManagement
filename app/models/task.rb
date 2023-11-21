class Task < ApplicationRecord
  belongs_to :project

  def complete_test
    if complete?
      "Complete"
    end
  end

end
