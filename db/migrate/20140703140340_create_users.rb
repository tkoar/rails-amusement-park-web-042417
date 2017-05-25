class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :name 
      t.boolean :admin, default: false
      t.integer :tickets
      t.integer :height
      t.integer :nausea
      t.integer :happiness
      t.string :password_digest
    end
  end
    
end
