class CreateWorkItems < ActiveRecord::Migration[7.0]
  def change
    create_table :work_items do |t|
      t.string :work_id

      t.timestamps
    end
  end
end
