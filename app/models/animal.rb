class Animal < ActiveRecord::Base
	belongs_to :tribe
	self.inheritance_column = :race

    validates :race, presence: true

	scope :lions, -> { where(race: 'Lion') }
	scope :meerkats, -> { where(race: 'Meerkat') }
	scope :wild_boars, -> { where(race: 'WildBoar') }

	def talk
		raise 'Abstract Method'
	end

  class << self
    def races
<<<<<<< HEAD
      %w(Lion WildBoar Meerkat)
=======
      %w(lion wild_boar meerkat)
>>>>>>> cdf7e07c88497b596e3dc5b797861a248a5da2fb
    end
  end
end

