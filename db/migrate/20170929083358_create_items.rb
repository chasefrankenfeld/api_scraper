class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :category
      t.string :title
      t.decimal :width
      t.decimal :length
      t.decimal :height
      t.decimal :cubic_weight

      t.timestamps
    end
  end
end
