class CreateSingers < ActiveRecord::Migration
  def self.up
    create_table :singers do |t|
      t.string :name
      t.refrences :user

      t.timestamps
    end
  end

  def self.down
    drop_table :singers
  end
end
