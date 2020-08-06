class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(number)
        @age = number
    end

    def bark
        if @age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end

    def favorite_foods 
        @favorite_foods
    end

    def favorite_food?(arr)
        arr.split.each do |food|
            new_food = food.capitalize
            if favorite_foods.include?(new_food)
                return true
            end
        end
        false
    end
end

dog = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
dog.favorite_food?("bacon")