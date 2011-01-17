class Topic < ActiveRecord::Base
  has_many :votes
  
  def update_total_votes
    self.total_votes = votes.length
    self.save!
  end
end
