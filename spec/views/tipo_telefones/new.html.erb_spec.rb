require 'spec_helper'

describe "tipo_telefones/new" do
  before(:each) do
    assign(:tipo_telefone, stub_model(TipoTelefone,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_telefone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_telefones_path, :method => "post" do
      assert_select "input#tipo_telefone_descricao", :name => "tipo_telefone[descricao]"
    end
  end
end
