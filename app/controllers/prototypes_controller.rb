class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.includes(:user).order("created_at DESC")
    #% allは省略できているから問題なし
  end

  def new 
    @prototype = Prototype.new  
  end 
  
  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:prototype, :catch_copy, :concept, :image,)
    
  end

end
