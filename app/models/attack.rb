class Attack < ApplicationRecord
    belongs_to :victim
    belongs_to :monster
    validate :must_have_victims_eldest_18

    def must_have_victims_eldest_18
        if monster.scare_level > 5  && (Date.today - victim.birthdate) < 6570
            errors.add(:birthdate, 'You should be over 18 years old.')     
	    end
    end
end
