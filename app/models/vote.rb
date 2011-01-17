class Vote < ActiveRecord::Base
  belongs_to :topic
  
  after_save :update_topic_updated_at
  
  private
  
  def update_topic_updated_at
    topic.update_attribute(:updated_at, self.updated_at)
  end
end
