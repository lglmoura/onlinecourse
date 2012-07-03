require "spec_helper"

describe TipoEnderecosController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_enderecos").should route_to("tipo_enderecos#index")
    end

    it "routes to #new" do
      get("/tipo_enderecos/new").should route_to("tipo_enderecos#new")
    end

    it "routes to #show" do
      get("/tipo_enderecos/1").should route_to("tipo_enderecos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_enderecos/1/edit").should route_to("tipo_enderecos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_enderecos").should route_to("tipo_enderecos#create")
    end

    it "routes to #update" do
      put("/tipo_enderecos/1").should route_to("tipo_enderecos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_enderecos/1").should route_to("tipo_enderecos#destroy", :id => "1")
    end

  end
end
