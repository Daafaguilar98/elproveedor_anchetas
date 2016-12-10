class Anchetum < ActiveRecord::Base
	serialize :descripcion, Array

	validates :nombre, :presence => true
	validates :celular, :presence => true
	validates :descripcion, :presence => true
end
