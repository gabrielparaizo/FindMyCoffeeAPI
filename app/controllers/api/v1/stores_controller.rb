class Api::V1::StoresController < ApplicationController
  # Callbacks
  before_action :set_store, only: [:show]
  
  def show  
  end

  private
  
  def set_store
    # Permite encontrar um registro por qualquer tipo de atríbuto
    # Retorna erro se não encontrar nada
    @store = Store.find_by!(google_place_id: params[:id])
  end
  
end
