class CreateRepkaStorage < ActiveRecord::Migration
  def self.up
    create_table :repka_storage do |t|
      t.date :date
      t.string :storage
      t.timestamps
    end
    add_index :repka_storage, [:date], :name =>"idx_date"
  end

  def self.down
    drop_table :repka_storage
  end
end
