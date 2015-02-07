class Day < ActiveRecord::Base
  has_many :day_tasks

  def bg_colour
    generator = ColorGenerator.new saturation: rand(0.291..0.635), lightness: rand(0.658..0.912), value: 1.0
    generator.create_hex
  end

  def bg_colour2
    generator = ColorGenerator.new saturation: rand(0.3..0.4), lightness: rand(0.8..0.912), value: 1.0
    generator.create_hex
  end

  def all_done
    self.day_tasks.all? do |day_task|
      day_task.finished_at.to_s.length >= 3
    end
  end
end
