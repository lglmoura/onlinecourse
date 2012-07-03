# coding: utf-8
class TipoTelefonesController < InheritedResources::Base
  def create
    create! :notice => 'Tipo de Telefone cadastrado com sucesso'
  end
  
  def update
    update! :notice => 'Tipo de Telefone alterado com sucesso' 
  end
  
  def destroy
    destroy! :notice => 'Tipo de Telefone excluído com sucesso' 
  end
end
