# coding: utf-8

require 'spec_helper'

feature 'gerenciar tipoendereco' do
  scenario 'incluir tipoendereco' do
    visit new_tipo_endereco_path
    preencher_e_verificar_tipoendereco
    page.should have_content 'Tipo de Endereço cadastrado com sucesso'
    
    
  end
  
  scenario 'alterar tipoendereco' do
    
    visit edit_tipo_endereco_path(FactoryGirl.create(:tipo_endereco))
    preencher_e_verificar_tipoendereco
    page.should have_content 'Tipo de Endereço alterado com sucesso'
  end
  
  scenario 'excluir Tipo de Endereco' do #, :javascript => true  do
    cliente = FactoryGirl.create(:tipo_endereco)
    visit tipo_enderecos_path
    click_link 'Excluir'
    
    TipoEndereco.count.should == 0
  end
  
  def preencher_e_verificar_tipoendereco
    
  
    fill_in 'Descrição', :with => 'Comercial'
        
    click_button 'Salvar'
    page.should have_content 'Descrição: Comercial'
      
  
  end
    
end
