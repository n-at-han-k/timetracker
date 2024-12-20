class AddDateLog < ActiveRecord::Migration[8.0]
  def change
    add_column :activity_logs , :date , :date , null: false  
  end
end
