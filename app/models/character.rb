class Character < ApplicationRecord
  belongs_to :klass
  belongs_to :race
  belongs_to :user
  has_many :spells
  has_many :character_proficiencies
  has_many :proficiencies, through: :character_proficiencies
  validates :name, uniqueness: true

  def set_up
    add_race_bonuses
    set_level
    set_proficiency_bonus
    set_ac_and_initiative
    set_speed
    set_max_hp
  end

  def level_up
    set_proficiency_bonus
    set_ac_and_initiative
    set_max_hp
  end

  def add_race_bonuses
    race = Race.find {|race| race.id === self.race_id}
    self.strength += race.strength_bonus
    self.dexterity += race.dexterity_bonus
    self.constitution += race.constitution_bonus
    self.intelligence += race.intelligence_bonus
    self.wisdom += race.wisdom_bonus
    self.charisma += race.charisma_bonus
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
    race = Race.find {|race| race.id === self.race_id}
    self.speed = race.speed
  end

  def set_max_hp
    klass = Klass.find {|klass| klass.id === self.klass_id}
    if (self.constitution < 2)
      num = 0
    elsif (self.constitution < 4)
      num = 0
    elsif (self.constitution < 6)
      num = 0
    elsif (self.constitution < 8)
      num = 0
    elsif (self.constitution < 10)
      num = 0
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
    self.max_hp = ((num + klass.hit_die) * self.level) + (num + klass.hit_die)
    self.current_hp = self.max_hp
  end

  def set_level
    if (self.experience < 300)
      self.level = 1
    elsif (self.experience < 900)
      self.level = 2
    elsif (self.experience < 2700)
        self.level = 3
    elsif (self.experience < 6500)
        self.level = 4
    elsif (self.experience < 14000)
        self.level = 5
    elsif (self.experience < 23000)
        self.level = 6
    elsif (self.experience < 34000)
        self.level = 7
    elsif (self.experience < 48000)
        self.level = 8
    elsif (self.experience < 64000)
        self.level = 9
    elsif (self.experience < 85000)
        self.level = 10
    elsif (self.experience < 100000)
        self.level = 11
    elsif (self.experience < 120000)
        self.level = 12
    elsif (self.experience < 140000)
        self.level = 13
    elsif (self.experience < 165000)
        self.level = 14
    elsif (self.experience < 195000)
        self.level = 15
    elsif (self.experience < 225000)
        self.level = 16
    elsif (self.experience < 265000)
        self.level = 17
    elsif (self.experience < 305000)
        self.level = 18
    elsif (self.experience < 355000)
        self.level = 19
    elsif (self.experience >= 355000)
        self.level = 20
    end
  end

end
