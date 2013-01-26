class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "provider", :null => false
      t.string "uid", :null => false
      t.string "info"
      t.string "credentials"
      t.string "extra"
      t.timestamps
    end

    add_index :users, [:provider, :uid], :unique => true
  end
end
