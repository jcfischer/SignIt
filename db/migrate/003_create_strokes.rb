class CreateStrokes < ActiveRecord::Migration
  def self.up
    create_table :strokes do |t|
      t.text :data
      t.integer :signature_id
    end
  end

  def self.down
    drop_table :strokes
  end
end
