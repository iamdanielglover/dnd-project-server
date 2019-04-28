# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "user1")

class1 = Klass.create(name: "Barbarian", api_url: "http://www.dnd5eapi.co/api/classes/1", hit_die: 12)
class2 = Klass.create(name: "Bard", api_url: "http://www.dnd5eapi.co/api/classes/2", hit_die: 8)
class3 = Klass.create(name: "Cleric", api_url: "http://www.dnd5eapi.co/api/classes/3", hit_die: 8)
class4 = Klass.create(name: "Druid", api_url: "http://www.dnd5eapi.co/api/classes/4", hit_die: 8)
class5 = Klass.create(name: "Fighter", api_url: "http://www.dnd5eapi.co/api/classes/5", hit_die: 10)
class6 = Klass.create(name: "Monk", api_url: "http://www.dnd5eapi.co/api/classes/6", hit_die: 8)
class7 = Klass.create(name: "Paladin", api_url: "http://www.dnd5eapi.co/api/classes/7", hit_die: 10)
class8 = Klass.create(name: "Ranger", api_url: "http://www.dnd5eapi.co/api/classes/8", hit_die: 10)
class9 = Klass.create(name: "Rogue", api_url: "http://www.dnd5eapi.co/api/classes/9", hit_die: 8)
class10 = Klass.create(name: "Sorcerer", api_url: "http://www.dnd5eapi.co/api/classes/10", hit_die: 6)
class11 = Klass.create(name: "Warlock", api_url: "http://www.dnd5eapi.co/api/classes/11", hit_die: 8)
class12 = Klass.create(name: "Wizard", api_url: "http://www.dnd5eapi.co/api/classes/12", hit_die: 6)

Race.create(name: "Dwarf", api_url: "http://www.dnd5eapi.co/api/races/1", speed: 30, strength_bonus: 0, dexterity_bonus: 0, constitution_bonus: 2, intelligence_bonus: 0, wisdom_bonus: 0, charisma_bonus: 0)
Race.create(name: "Elf", api_url: "http://www.dnd5eapi.co/api/races/2", speed: 30, strength_bonus: 0, dexterity_bonus: 2, constitution_bonus: 0, intelligence_bonus: 0, wisdom_bonus: 0, charisma_bonus: 0)
Race.create(name: "Halfling", api_url: "http://www.dnd5eapi.co/api/races/3", speed: 25, strength_bonus: 0, dexterity_bonus: 3, constitution_bonus: 0, intelligence_bonus: 0, wisdom_bonus: 0, charisma_bonus: 0)
Race.create(name: "Human", api_url: "http://www.dnd5eapi.co/api/races/4", speed: 30, strength_bonus: 1, dexterity_bonus: 1, constitution_bonus: 1, intelligence_bonus: 1, wisdom_bonus: 1, charisma_bonus: 1)
Race.create(name: "Dragonborn", api_url: "http://www.dnd5eapi.co/api/races/5", speed: 30, strength_bonus: 2, dexterity_bonus: 0, constitution_bonus: 0, intelligence_bonus: 0, wisdom_bonus: 0, charisma_bonus: 1)
Race.create(name: "Gnome", api_url: "http://www.dnd5eapi.co/api/races/6", speed: 25, strength_bonus: 0, dexterity_bonus: 0, constitution_bonus: 0, intelligence_bonus: 2, wisdom_bonus: 0, charisma_bonus: 0)
Race.create(name: "Half-Elf", api_url: "http://www.dnd5eapi.co/api/races/7", speed: 30, strength_bonus: 0, dexterity_bonus: 0, constitution_bonus: 0, intelligence_bonus: 0, wisdom_bonus: 0, charisma_bonus: 2)
Race.create(name: "Half-Orc", api_url: "http://www.dnd5eapi.co/api/races/8", speed: 30, strength_bonus: 2, dexterity_bonus: 0, constitution_bonus: 1, intelligence_bonus: 0, wisdom_bonus: 0, charisma_bonus: 0)
Race.create(name: "Tiefling", api_url: "http://www.dnd5eapi.co/api/races/9", speed: 30, strength_bonus: 0, dexterity_bonus: 0, constitution_bonus: 0, intelligence_bonus: 1, wisdom_bonus: 0, charisma_bonus: 2)

Proficiency.create(name: "Acrobatics", mod: "dexterity")
Proficiency.create(name: "Animal Handling", mod: "wisdom")
Proficiency.create(name: "Arcana", mod: "intelligence")
Proficiency.create(name: "Athletics", mod: "strength")
Proficiency.create(name: "Deception", mod: "charisma")
Proficiency.create(name: "History", mod: "intelligence")
Proficiency.create(name: "Insight", mod: "wisdom")
Proficiency.create(name: "Intimidation", mod: "charisma")
Proficiency.create(name: "Investigation", mod: "intelligence")
Proficiency.create(name: "Medicine", mod: "wisdom")
Proficiency.create(name: "Nature", mod: "intelligence")
Proficiency.create(name: "Perception", mod: "wisdom")
Proficiency.create(name: "Performance", mod: "charisma")
Proficiency.create(name: "Persuasion", mod: "charisma")
Proficiency.create(name: "Religion", mod: "intelligence")
Proficiency.create(name: "Sleight of Hand", mod: "dexterity")
Proficiency.create(name: "Stealth", mod: "dexterity")
Proficiency.create(name: "Survival", mod: "wisdom")



Character.create(
  user_id: 1,
  name: "Blarg The Hobo-Warrior",
  klass_id: 5,
  race_id: 1,
  armor_class: 0,
  initiative: 0,
  speed: 0,
  alignment: "",
  level: 1,
  experience: 0,
  proficiency_bonus: 0,
  max_hp: 0,
  current_hp: 0,
  strength: 10,
  dexterity: 10,
  constitution: 10,
  intelligence: 10,
  wisdom: 10,
  charisma: 10
)

Character.create(
  user_id: 1,
  name: "Dongol Schmav",
  klass_id: 1,
  race_id: 8,
  armor_class: 0,
  initiative: 0,
  speed: 0,
  alignment: "",
  level: 1,
  experience: 0,
  proficiency_bonus: 0,
  max_hp: 0,
  current_hp: 0,
  strength: 10,
  dexterity: 10,
  constitution: 10,
  intelligence: 10,
  wisdom: 10,
  charisma: 10
)
