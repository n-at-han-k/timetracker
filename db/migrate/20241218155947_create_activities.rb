class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.timestamps
      t.string :name
      t.string :icon 
    end
  end
end
