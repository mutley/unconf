class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "provider", :null => false
      t.string "uid", :null => false
      t.text "info", :limit => nil
      t.text "credentials", :limit => nil
      t.text "extra", :limit => nil
      t.timestamps
    end

    add_index :users, [:provider, :uid], :unique => true
  end
end
