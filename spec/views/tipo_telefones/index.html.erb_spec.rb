require 'spec_helper'

describe "tipo_telefones/index" do
  before(:each) do
    assign(:tipo_telefones, [
      stub_model(TipoTelefone,
        :descricao => "Descricao"
      ),
      stub_model(TipoTelefone,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipo_telefones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
