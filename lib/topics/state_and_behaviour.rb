# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # Car behaviour
  class Car
    attr_reader :color, :model, :year, :current_speed

    def initialize(car)
      @year = car[:year] || 2015
      @color = car[:color] || 'purple'
      @model = car[:model] || 'skyline'
      @current_speed = 0
    end

    def push_break(x)
      @current_speed -= x if @current_speed >= x
    end

    def speed_up(speed)
      @current_speed += speed
    end

    def self.default_car
      new({})
    end
  end
end
