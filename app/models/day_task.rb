class DayTask < ActiveRecord::Base
  belongs_to :day

  x = 0
  def finished?
    !finished_at.blank?
  end
end
