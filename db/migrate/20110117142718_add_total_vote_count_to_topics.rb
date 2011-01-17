class AddTotalVoteCountToTopics < ActiveRecord::Migration
  def self.up
    add_column :topics, :total_votes, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :topics, :total_votes
  end
end
