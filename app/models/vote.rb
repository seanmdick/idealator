class Vote < ActiveRecord::Base
  # Belongs to one topic (that received the vote)
  # Touch updates the Topic when the vote is saved
  # (http://ryandaigle.com/articles/2009/4/20/what-s-new-in-edge-rails-touching)
  belongs_to :topic, :touch => true
end
