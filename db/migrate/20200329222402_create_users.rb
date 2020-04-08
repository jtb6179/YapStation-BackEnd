class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :profile_name
      t.string :age
      t.string :bio
      t.string :location
      t.string :education_status

      t.timestamps
    end
  end
end
