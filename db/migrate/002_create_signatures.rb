class CreateSignatures < ActiveRecord::Migration
  def self.up
    create_table :signatures do |t|
      t.string :title
      t.integer :account_id
      t.text :svg_data
      t.datetime :created_at
      t.datetiem :updated_at
    end
  end

  def self.down
    drop_table :signatures
  end
end
