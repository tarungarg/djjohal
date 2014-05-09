class Song < ActiveRecord::Base
	has_attached_file :audio
	attr_accessible :singer_id, :audio

	belongs_to :singer

  before_save :check_length

	validates_attachment_presence :audio
	validates_attachment_content_type :audio, :content_type => [ 'audio/mp3','audio/rm']

	def check_length
		audio_name = self.audio_file_name.split('.')
		audio_name.pop
 		if audio_name.join.length > 5
			return true
		else
			errors.add(:audio, "File name should be more then 5 characters.")
			return false
		end
	end
end
