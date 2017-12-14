def sluggish_octopus(arr)
  result = nil
  array.each do |fish, idx|
    result ||= fish
    array.each do |fish2, idx2|
      if result < fish2
        result = fish2
      end
    end
  end
  result
end

def dominant_octopus(arr)
  arr.sort.last
end


def clever_octopus(arr)

  best = nil
  i = 0
  while i  < arr.length
    best ||= arr[i]
    if arr[i] > best
      best = arr[i]
    end
    i += 1
  end
  best
end


def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |el, idx|
    if el == direction
      return idx
    end
  end

end

new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, new_tiles_data_structure)
  new_tiles_data_structure[direction]
end
