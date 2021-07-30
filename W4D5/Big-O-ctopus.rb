def sluggish_octopus(fishes)
    biggest_fish_size = 0
    biggest_fish = ''

    fishes.each do |fish|
        fishes.each do |guppy|
        
            if fish.length > biggest_fish_size
                biggest_fish = fish
                biggest_fish_size = fish.length
            elsif guppy.length > biggest_fish_size
                biggest_fish = guppy
                biggest_fish_size = guppy.length
            end
        end
    end
    biggest_fish


end

def clever_Octopus(fishes)
    biggest_fish_size = 0
    biggest_fish = ''

    fishes.each do |fish|
        if fish.length > biggest_fish_size
            biggest_fish = fish
            biggest_fish_size = fish.length
        end
    end
    biggest_fish
end

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, i|
        if direction == tile
            return i
        end
    end
    -1
end

def constant_dance(direction, tiles_array)
    tiles_array.index(direction)
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p slow_dance("down", tiles_array)
p constant_dance("left-down", tiles_array)

# fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# p sluggish_octopus(fish)

# p clever_Octopus(fish)