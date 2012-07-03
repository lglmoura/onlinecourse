require "spec_helper"

describe TipoTelefonesController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_telefones").should route_to("tipo_telefones#index")
    end

    it "routes to #new" do
      get("/tipo_telefones/new").should route_to("tipo_telefones#new")
    end

    it "routes to #show" do
      get("/tipo_telefones/1").should route_to("tipo_telefones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_telefones/1/edit").should route_to("tipo_telefones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_telefones").should route_to("tipo_telefones#create")
    end

    it "routes to #update" do
      put("/tipo_telefones/1").should route_to("tipo_telefones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_telefones/1").should route_to("tipo_telefones#destroy", :id => "1")
    end

  end
end
