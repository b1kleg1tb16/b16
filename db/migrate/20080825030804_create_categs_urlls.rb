class CreateCategsUrlls < ActiveRecord::Migration
  def self.up
    create_table :categs_urlls, :id => false do |t|
      t.column :categ_id, :integer
      t.column :urll_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :categs_urlls
  end
end
