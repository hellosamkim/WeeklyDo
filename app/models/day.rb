class Day < ActiveRecord::Base
  has_many :day_tasks

  def bg_colour
    generator = ColorGenerator.new saturation: rand(0.291..0.635), lightness: rand(0.658..0.912), value: 1.0
    generator.create_hex
  end
end
