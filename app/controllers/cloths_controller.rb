class ClothsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
        @cloths = Cloth.all

        if params[:search] != nil && params[:search] != ''
            search = params[:search]
            @cloths= Cloth.joins(:user).where("color LIKE ? OR username LIKE ?", "%#{search}%", "%#{search}%")
        else
            @cloths = Cloth.all
        end
    end

    def new
        @cloth = Cloth.new
    end

    def create
        cloth = Cloth.new(cloth_params)
        cloth.user_id = current_user.id
        if cloth.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @cloth = Cloth.find(params[:id])
        @comments = @cloth.comments
        @comment = Comment.new
    end

    def edit
        @cloth = Cloth.find(params[:id])
    end

    def update
        cloth = Cloth.find(params[:id])
        if cloth.update(cloth_params)
            redirect_to :action => "show", :id => cloth.id
        else
            redirect_to :action => "new"
        end
    end

    def destroy
        cloth = Cloth.find(params[:id])
        cloth.destroy
        redirect_to action: :index
    end

    private
    def cloth_params
        params.require(:cloth).permit(:tops, :outer, :pants, :color, :size, :price, :brand, :place, :image)
    end

    def top

    end

end
