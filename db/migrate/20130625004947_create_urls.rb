class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :email
      t.string :password_hash
      t.string :name

      t.timestamps
    end
  end
end
