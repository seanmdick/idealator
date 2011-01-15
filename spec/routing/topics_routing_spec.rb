require "spec_helper"

describe TopicsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/topics" }.should route_to(:controller => "topics", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/topics/new" }.should route_to(:controller => "topics", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/topics/1" }.should route_to(:controller => "topics", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/topics/1/edit" }.should route_to(:controller => "topics", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/topics" }.should route_to(:controller => "topics", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/topics/1" }.should route_to(:controller => "topics", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/topics/1" }.should route_to(:controller => "topics", :action => "destroy", :id => "1")
    end

  end
end
