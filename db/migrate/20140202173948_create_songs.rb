class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.integer :singer_id
      t.has_attached_file :audio

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
