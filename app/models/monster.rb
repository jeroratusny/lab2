class Monster < ApplicationRecord
    validates :name, presence: true
    validates_uniqueness_of:name # valida que el nombre del monstruo sea unico


   # def must_have_victims_eldest_18
#	    if scare_level > 5 # && title.blank?	      errors.add(:imdb_url, :blank, message: "must be set when current time is past 10 pm")
#	    end
#	  end
end
