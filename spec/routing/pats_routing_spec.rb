require "spec_helper"

describe PatsController do
  describe "routing" do

    it "routes to #index" do
      get("/pats").should route_to("pats#index")
    end

    it "routes to #new" do
      get("/pats/new").should route_to("pats#new")
    end

    it "routes to #show" do
      get("/pats/1").should route_to("pats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pats/1/edit").should route_to("pats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pats").should route_to("pats#create")
    end

    it "routes to #update" do
      put("/pats/1").should route_to("pats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pats/1").should route_to("pats#destroy", :id => "1")
    end

  end
end
