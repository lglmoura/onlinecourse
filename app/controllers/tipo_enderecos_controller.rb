# coding: utf-8
class TipoEnderecosController < InheritedResources::Base
  def create
    create! :notice => 'Tipo de Endereço cadastrado com sucesso'
  end
  
  def update
    update! :notice => 'Tipo de Endereço alterado com sucesso' 
  end
  
  def destroy
    destroy! :notice => 'Tipo de Endereço excluído com sucesso' 
  end
end
