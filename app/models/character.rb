class Character < ApplicationRecord

  def set_proficiency_bonus
    if self.level > 16
      self.proficiency_bonus = 6
    elsif self.level > 12
      self.proficiency_bonus = 5
    elsif self.level > 8
      self.proficiency_bonus = 4
    elsif self.level > 4
      self.proficiency_bonus = 3
    else
      self.proficiency_bonus = 2
    end
    self.save
  end

  def set_speed
    race = Race.find {|race| race.id === Character.first.race_id}
    self.speed = race.speed
  end

end
 
