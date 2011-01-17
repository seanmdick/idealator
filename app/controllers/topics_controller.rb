class TopicsController < ApplicationController
  # GET /topics
  # GET /topics.xml
  def index
    # Use a "scope" to find Topics and sort them.  This concentrates the database
    # logic in the Topic model.
    case session[:topic_order]
    when 'title'
      @topics = Topic.title_order.all
    when 'votes'
      @topics = Topic.total_votes_order.all
    else
      @topics = Topic.updated_at_order.all
    end

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /topics/1
  # GET /topics/1.xml
  def show
    @topic = Topic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /topics/new
  # GET /topics/new.xml
  def new
    @topic = Topic.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end

  # POST /topics
  # POST /topics.xml
  def create
    @topic = Topic.new(params[:topic])

    respond_to do |format|
      if @topic.save
        format.html { redirect_to(topics_path :notice => 'Topic was successfully created.') }
        format.js {}
      else
        format.html { render :action => "new" }
        format.js {}
      end
    end
  end

  # PUT /topics/1
  # PUT /topics/1.xml
  def update
    @topic = Topic.find(params[:id])

    respond_to do |format|
      if @topic.update_attributes(params[:topic])
        format.html { redirect_to(@topic, :notice => 'Topic was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.xml
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to(topics_url) }
    end
  end
  
  # Sets the column to sort the index page
  def sort_change
    # If the :column web parameter is valid then save it.
    valid_column_names_for_sorting = ['title', 'votes', 'updated_at']
    if valid_column_names_for_sorting.include?(params[:column])
      session[:topic_order] = params[:column]
    else
      session[:topic_order] = 'updated_at'
    end

    # Note: You could compact the logic above using a "ternary" comparison:
    #
    # session[:topic_order] = valid_column_names_for_sorting.include?(params[:column]) ? params[:column] : 'updated_at'
    #
    # It is space-efficient but perhaps harder to read.
    
    redirect_to topics_path
  end
end
