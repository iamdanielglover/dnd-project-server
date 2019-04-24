class Character < ApplicationRecord

  def set_up
    set_proficiency_bonus
    set_ac_and_initiative
    set_speed
    set_max_hp
  end

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

  def set_ac_and_initiative
    if (self.dexterity < 2)
      num = -5
    elsif (self.dexterity < 4)
      num = -4
    elsif (self.dexterity < 6)
      num = -3
    elsif (self.dexterity < 8)
      num = -2
    elsif (self.dexterity < 10)
      num = -1
    elsif (self.dexterity < 12)
      num = 0
    elsif (self.dexterity < 14)
      num = 1
    elsif (self.dexterity < 16)
      num = 2
    elsif (self.dexterity < 18)
      num = 3
    elsif (self.dexterity < 20)
      num = 4
    elsif (self.dexterity > 19)
      num = 5
    end
    self.armor_class = num + 10
    self.initiative = num
  end

  def set_speed
    race = Race.find {|race| race.id === Character.first.race_id}
    self.speed = race.speed
  end

  def set_max_hp
    klass = Klass.find {|klass| klass.id === Character.first.klass_id}
    if (self.constitution < 2)
      num = -5
    elsif (self.constitution < 4)
      num = -4
    elsif (self.constitution < 6)
      num = -3
    elsif (self.constitution < 8)
      num = -2
    elsif (self.constitution < 10)
      num = -1
    elsif (self.constitution < 12)
      num = 0
    elsif (self.constitution < 14)
      num = 1
    elsif (self.constitution < 16)
      num = 2
    elsif (self.constitution < 18)
      num = 3
    elsif (self.constitution < 20)
      num = 4
    elsif (self.constitution > 19)
      num = 5
    end
    self.max_hp = num + klass.hit_die
    self.current_hp = self.max_hp
  end

end
