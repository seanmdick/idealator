class VotesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    vote = @topic.votes.build

    if vote.save
     flash[:notice] = 'Vote was successfully created.'
    else
     flash[:notice] = 'Sorry we could not count your vote.'
    end
    respond_to do |format|
      format.html {redirect_to(topics_path)}
      format.js   {}
    end
  end
end
