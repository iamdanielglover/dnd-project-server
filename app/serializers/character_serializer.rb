class CharacterSerializer < ActiveModel::Serializer
  attributes :id,
              :user_id,
              :name,
              :klass_id,
              :race_id,
              :armor_class,
              :initiative,
              :speed,
              :alignment,
              :level,
              :experience,
              :proficiency_bonus,
              :max_hp,
              :current_hp,
              :strength,
              :dexterity,
              :constitution,
              :intelligence,
              :wisdom,
              :charisma,
              :proficiencies

end
