class DayTask < ActiveRecord::Base
  belongs_to :day
  validates :task, presence: true

  x = 0
  def finished?
    !finished_at.blank?
  end
end
