require 'pry'
class Event
    attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end
  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.inventory.include?(item)
    end
  end

  def total_inventory
    total = {}
    @food_trucks. each do |truck|
      truck.inventory.each do |item|
        total[item] = 0
      end
    end
    
    total

  end

    # inv = @food_trucks.map do |truck|
    #   truck.inventory.each do |items|
    #     if total[items] != nil && items[2] !=nil
    #     total[items] += items[2]
    #   elsif total[items] != nil && items[2] == nil
    #     total[items] = 0
    #   else
    #     total[items] = 0
    #     total[items] += items[2]
    #   end
    #   end
    # end
    # binding.pry
    # end

end
