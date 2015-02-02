class Day < ActiveRecord::Base
  has_many :day_tasks

  def bg_colour
    generator = ColorGenerator.new saturation: rand(0.3..0.5), lightness: rand(0.8..0.9)
    generator.create_hex
  end
end
