class CreateUrlls < ActiveRecord::Migration
  def self.up
    create_table :urlls do |t|
      t.column :name, :string
      t.column :uurl, :string
      t.column :ddesc, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :urlls
  end
end
