class CreateUsers < ActiveRecord::Migration
    def change
      create_table :comments do |t|
        t.string :username
        t.string :email 
        t.string :password_digest
        
      end
   end
end