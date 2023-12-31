class PrototypesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :set_prototype, only: [:show, :edit, :update, :destroy, :move_to_index]
  before_action :move_to_index, except: [:index, :show, :new, :create]

  def index
    @prototypes = Prototype.all.includes(:user).order("created_at DESC")
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

  def show 
    # set_prototype
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
  end 
  
  def edit
    # set_prototype
  end

  def update
    # set_prototype
    if @prototype.update(prototype_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    # set_prototype
    @prototype.destroy
    redirect_to root_path
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image,).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def move_to_index
    unless current_user.id == @prototype.user_id
      redirect_to action: :index
    end
  end
end
