class VotesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    vote = @topic.votes.build

    if vote.save
     flash.now[:notice] = 'Vote was successfully created.'
    else
     flash.now[:error] = 'Sorry we could not count your vote.'
    end
    respond_to do |format|
      format.html {redirect_to(topics_path)}
      format.js   {}
    end
  end
  
  def destroy
    @topic = Topic.find(params[:topic_id])
    
    if @topic.votes.first.try(:destroy)
     flash.now[:notice] = 'Vote was successfully Destroyed.'
    else
     flash.now[:error] = 'Sorry we could not count your vote.'
    end
    respond_to do |format|
      format.html {redirect_to(topics_path)}
      format.js   {}
    end
  end
end
