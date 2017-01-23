class AddVoteableToVotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :votes, :voteable, polymorphic: true
  end
end
