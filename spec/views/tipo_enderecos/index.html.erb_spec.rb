require 'spec_helper'

describe "tipo_enderecos/index" do
  before(:each) do
    assign(:tipo_enderecos, [
      stub_model(TipoEndereco,
        :descricao => "Descricao"
      ),
      stub_model(TipoEndereco,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipo_enderecos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
