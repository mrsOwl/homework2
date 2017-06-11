# frozen_string_literal: true

# exercise object model
module ObjectModel
  # Linux friendly
  module LinuxFriendly
    def fork_process
      super
    end
  end

  # Computer class
  class Computer
    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end

  # Inherits Computer
  class Laptop < Computer
    prepend ObjectModel::LinuxFriendly
  end
end
