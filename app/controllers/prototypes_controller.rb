class PrototypesController < ApplicationController

  def index
    
  end 

  def new 
    @prototype = Prototype.new  
  end 
  
  def create
    Prototype.create(prototype_params)
    redirect_to root_path
  end

  private
  def prototype_params
    params.require(:prototype).permit(:prototype, :catch_copy, :concept, :image,)
  end

end
