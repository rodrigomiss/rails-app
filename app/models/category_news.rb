class CategoryNews < ActiveRecord::Base
	has_many :news

	validates_presence_of :name, message: "O nome da categoria é obrigatório"
end
