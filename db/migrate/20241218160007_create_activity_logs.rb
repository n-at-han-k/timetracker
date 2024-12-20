class CreateActivityLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :activity_logs do |t|
      t.timestamps
      t.belongs_to :activity
      t.integer :duration 
      t.text :description
    end
  end
end
