require 'spec_helper'

describe "tipo_enderecos/show" do
  before(:each) do
    @tipo_endereco = assign(:tipo_endereco, stub_model(TipoEndereco,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
