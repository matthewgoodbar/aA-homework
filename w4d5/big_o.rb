fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh','fiiiissshhhhhh']

 def sluggish_octopus(fish)
    largest = ''
    fish.each do |first_fish|
        fish.each do |second_fish|
            first_fish.length > second_fish.length ? largest = first_fish : largest = second_fish
        end
    end
    return largest
 end

#  p sluggish_octopus(fish)

def dominant_octopus(fish)
    return '' if fish.length == 0
    return fish[0] if fish.length == 1
    mp = fish.length / 2
    biggest_on_left = dominant_octopus(fish[0...mp])
    biggest_on_right = dominant_octopus(fish[mp..-1])
    return biggest_on_left.length > biggest_on_right.length ? biggest_on_left : biggest_on_right
end

# p dominant_octopus(fish)

def clever_octopus(fish)
    largest = ''
    fish.each do |candidate|
        largest = candidate if candidate.length > largest.length
    end
    return largest
end

# p clever_octopus(fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
    (0...tiles_array.length).each do |i|
        return i if tiles_array[i] == dir
    end
    return nil
end

# p slow_dance("right-down", tiles_array)

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance(dir, tiles_hash)
    return tiles_hash[dir]
end

# p constant_dance("right-down", tiles_hash)