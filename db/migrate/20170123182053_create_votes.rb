class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :user_id, null: false
      t.references :voteable, polymorphic: true, index: true

    end
  end
end
