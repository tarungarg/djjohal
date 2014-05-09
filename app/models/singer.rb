class Singer < ActiveRecord::Base
	attr_accessible :name
	has_many :songs, :dependent => :destroy
	validates_presence_of :name
end
