class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :username, null: false
      t.string :name, null: false
      t.date :birth, null: false
      t.string :nationality, null: false
      t.string :gender, null: false
      t.string :email, null: false
      t.string :mobile, null: false
    end
  end
end
