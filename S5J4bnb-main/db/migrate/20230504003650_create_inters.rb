class CreateInters < ActiveRecord::Migration[7.0]
  def change
    create_table :inters do |t|
      t.belongs_to :stroll, index: true
      t.belongs_to :dog, index: true
      t.timestamps
    end
  end
end
