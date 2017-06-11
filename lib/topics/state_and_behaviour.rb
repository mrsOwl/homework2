# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # Car behaviour
  class Car
    attr_reader :color, :model, :year, :current_speed

    def initialize(car_options)
      @year = car_options.fetch(:year, 2015)
      @color = car_options.fetch(:color, 'purple')
      @model = car_options.fetch(:model, 'skyline')
      @current_speed = 0
    end

    def self.default_car
      new({})
    end

    def push_break(velocity)
      @current_speed -= velocity if @current_speed >= velocity
    end

    def speed_up(velocity)
      @current_speed += velocity
    end
  end
end
