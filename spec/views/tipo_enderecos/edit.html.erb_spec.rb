require 'spec_helper'

describe "tipo_enderecos/edit" do
  before(:each) do
    @tipo_endereco = assign(:tipo_endereco, stub_model(TipoEndereco,
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_endereco form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_enderecos_path(@tipo_endereco), :method => "post" do
      assert_select "input#tipo_endereco_descricao", :name => "tipo_endereco[descricao]"
    end
  end
end
