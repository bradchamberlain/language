require "spec_helper"

describe LanguagestringsController do
  describe "routing" do

    it "routes to #index" do
      get("/languagestrings").should route_to("languagestrings#index")
    end

    it "routes to #new" do
      get("/languagestrings/new").should route_to("languagestrings#new")
    end

    it "routes to #show" do
      get("/languagestrings/1").should route_to("languagestrings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/languagestrings/1/edit").should route_to("languagestrings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/languagestrings").should route_to("languagestrings#create")
    end

    it "routes to #update" do
      put("/languagestrings/1").should route_to("languagestrings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/languagestrings/1").should route_to("languagestrings#destroy", :id => "1")
    end

  end
end
