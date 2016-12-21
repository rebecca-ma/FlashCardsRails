class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.belongs_to :deck, index: true
      t.belongs_to :card, index: true
      t.timestamps
    end
  end
end
