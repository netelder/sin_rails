class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :short_name
      t.text   :url
      t.integer :click_count
      t.references :user

      t.timestamps
    end
  end
end
