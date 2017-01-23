class AddPolymorphismToVotes < ActiveRecord::Migration[5.0]
  def change
        remove_column :votes,  :voteable_id
  end
end
