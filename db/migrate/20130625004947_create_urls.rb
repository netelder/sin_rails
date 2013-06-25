class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :short_name
      t.text   :url
      t.integer :click_count, :default => 0
      t.references :user

      t.timestamps
    end
  end
end
