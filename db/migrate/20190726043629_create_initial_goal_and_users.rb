class CreateInitialGoalAndUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address

      t.timestamps
    end

    create_table :goals do |t|
      t.string :name

      t.text :description
      t.datetime :due_date
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
