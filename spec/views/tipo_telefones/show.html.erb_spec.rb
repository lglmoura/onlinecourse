require 'spec_helper'

describe "tipo_telefones/show" do
  before(:each) do
    @tipo_telefone = assign(:tipo_telefone, stub_model(TipoTelefone,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
