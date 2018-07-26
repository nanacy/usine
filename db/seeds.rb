require 'faker'

nb_piece = 10

nb_piece.times do
	Piece.create(part_number: Faker::Color.color_name)
end
puts "-- Création de #{nb_piece} pièces --"


nb_assemblage = 10
nb_assemblage.times do
	Assemblage.create(name: Faker::Cat.name)
end
puts "-- Création de #{nb_assemblage} Assemblage --"


nb_piece.times do |i|
	Assemblage.find(i+1).pieces = [Piece.find(rand(Piece.first.id..Piece.last.id)), Piece.find(rand(Piece.first.id..Piece.last.id))]
end
puts "-- Création des liens Assemblages & Pieces --"
