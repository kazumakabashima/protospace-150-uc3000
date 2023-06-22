class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.includes(:user).order("created_at DESC")
    #% allは省略できているから問題なし
  end

end
