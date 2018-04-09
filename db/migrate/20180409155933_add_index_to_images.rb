class AddIndexToImages < ActiveRecord::Migration[5.1]
  def change
    add_index :images, :project_id
  end
end
