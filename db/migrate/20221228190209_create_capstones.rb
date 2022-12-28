class CreateCapstones < ActiveRecord::Migration[7.0]
  def change
    create_table :capstones do |t|
      t.string :capstone_name
      t.text :capstone_description
      t.string :capstone_url
      t.string :capstone_screenshot

      t.timestamps
    end
  end
end
