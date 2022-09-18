class Monster < ApplicationRecord
    validates :name, presence: true
    validates_uniqueness_of:name # valida que el nombre del monstruo sea unico
    has_many :attacks
    has_many :victims, through: :attacks, dependent: :destroy


end
