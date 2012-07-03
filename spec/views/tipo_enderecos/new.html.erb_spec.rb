require 'spec_helper'

describe "tipo_enderecos/new" do
  before(:each) do
    assign(:tipo_endereco, stub_model(TipoEndereco,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_endereco form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_enderecos_path, :method => "post" do
      assert_select "input#tipo_endereco_descricao", :name => "tipo_endereco[descricao]"
    end
  end
end
