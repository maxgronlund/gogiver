require "spec_helper"

describe VisionboardsController do
  describe "routing" do

    it "routes to #index" do
      get("/visionboards").should route_to("visionboards#index")
    end

    it "routes to #new" do
      get("/visionboards/new").should route_to("visionboards#new")
    end

    it "routes to #show" do
      get("/visionboards/1").should route_to("visionboards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/visionboards/1/edit").should route_to("visionboards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/visionboards").should route_to("visionboards#create")
    end

    it "routes to #update" do
      put("/visionboards/1").should route_to("visionboards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/visionboards/1").should route_to("visionboards#destroy", :id => "1")
    end

  end
end
