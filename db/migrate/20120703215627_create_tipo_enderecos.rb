class CreateTipoEnderecos < ActiveRecord::Migration
  def change
    create_table :tipo_enderecos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
