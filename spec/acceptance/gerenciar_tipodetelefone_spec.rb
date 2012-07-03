# coding: utf-8

require 'spec_helper'

feature 'gerenciar tipotelefone' do
  scenario 'incluir tipotelefone' do
    visit new_tipo_telefone_path
    preencher_e_verificar_tipotelefone
    page.should have_content 'Tipo de Telefone cadastrado com sucesso'
    
    
  end
  
  scenario 'alterar tipotelefone' do
    
    visit edit_tipo_telefone_path(FactoryGirl.create(:tipo_telefone))
    preencher_e_verificar_tipotelefone
    page.should have_content 'Tipo de Telefone alterado com sucesso'
  end
  
  scenario 'excluir Tipo de telefone' do #, :javascript => true  do
    cliente = FactoryGirl.create(:tipo_telefone)
    visit tipo_telefones_path
    click_link 'Excluir'
    
    TipoTelefone.count.should == 0
  end
  
  def preencher_e_verificar_tipotelefone
    
  
    fill_in 'Descrição', :with => 'Comercial'
        
    click_button 'Salvar'
    page.should have_content 'Descrição: Comercial'
      
  
  end
    
end
