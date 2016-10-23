class CreateFaker < ActiveRecord::Migration[5.0]
  def change
    create_table :fakers do |t|
      t.string :name
      t.string :avatar
      t.string :color
      t.string :title
      t.string :email
      t.string :food

      t.timestamps
    end
  end
end
