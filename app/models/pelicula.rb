class Pelicula < ApplicationRecord
	# Presence: Els que hi ha en la validacio presence:true son obligatoris
	# validates :name, :stars, :main_actor, :year, presence:true
	# Numericality: Les "stars" poden variar entre 0 i 5
	# validates :stars, :numericality => {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
	# Numericality: l'any ha de variar entre el 1800 i el 2030
	# validates :year, :numericality => {less_than_or_equal_to: 1800, greater_than_or_equal_to: 2030}
	# Uniqueness: El nom ha de ser unic, no poden haber dos d'iguals
	# validates :name, uniqueness:true
	# Lenght: La llargada del nom ha de variar entre 2 i 30 caracters
	# validates :name, :main_actor, length: { in: 2..20}
	# Format: el format del actor pot contenir majuscules, minuscules i espais
	# validates :name, :main_actor, format: {with: /\A[A-Z a-z0-9]+\z/}
end
