class HelperMethods
  #Declarations
  @@attack_count = 0
  @@wall_strength = { 'N' => 0, 'S' => 0, 'E' => 0, 'W' => 0}
  
  # Parse attack details. Check if attacked? and update count. Rebuild wall and
  # show result
  def parse_input attack_details
    attack_details_arr = attack_details.split(":")
    attack_details_arr.each do |attack_detail|
      tribal, direction, tribal_strength = attack_detail.split(" - ")
      attacked?(tribal_strength.to_i, direction) ? @@attack_count += 1 : 0
    end
    rebuild_wall(attack_details_arr)
    print_outcome
  end

  # Return true if attack is possible
  def attacked? tribal_strength, direction
    (tribal_strength > @@wall_strength[direction])
  end

  # Rebuild wall at the end of the day's battle
  def rebuild_wall attack_details_arr
    attack_details_arr.each do |attack_detail|
      tribal, direction, tribal_strength = attack_detail.split(" - ")
      strengthen_the_wall tribal_strength.to_i, direction
    end
  end

  # Check and update wall strength
  def strengthen_the_wall tribal_strength, direction
    if tribal_strength > @@wall_strength[direction]
      @@wall_strength[direction] = tribal_strength
    end
  end

  # output
  def print_outcome
    puts "Wall Strength: #{@@wall_strength}"
    puts "Attack Count: #{@@attack_count}"
  end

end