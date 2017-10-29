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
  end

  # Return true if attack is possible
  def attacked? tribal_strength, direction
    (tribal_strength > @@wall_strength[direction])
  end

end