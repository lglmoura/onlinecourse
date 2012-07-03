require 'spec_helper'

describe "tipo_telefones/edit" do
  before(:each) do
    @tipo_telefone = assign(:tipo_telefone, stub_model(TipoTelefone,
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_telefone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_telefones_path(@tipo_telefone), :method => "post" do
      assert_select "input#tipo_telefone_descricao", :name => "tipo_telefone[descricao]"
    end
  end
end
