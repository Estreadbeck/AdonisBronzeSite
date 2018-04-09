class CreateImagesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :image
      t.string :name
      t.text :description
      t.bigint :project_id

      t.timestamps
    end
  end
end
