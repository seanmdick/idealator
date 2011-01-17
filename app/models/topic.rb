class Topic < ActiveRecord::Base
  has_many :votes
  
  scope :title_order, :order => 'title asc'
  scope :total_votes_order, :order => 'total_votes desc'
  scope :updated_at_order, :order => 'updated_at desc'
  
  def update_total_votes
    self.total_votes = votes.length
    self.save!
  end
end
