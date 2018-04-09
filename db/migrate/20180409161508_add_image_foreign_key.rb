class AddImageForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :images, :projects
  end
end
