class GiftsController < ApplicationController
  before_action :admin_only, only: [:new, :create, :update, :destroy]
  before_action :_set_gift, only: [:edit, :update, :destroy]

  def index
    @navbar_active = "registry"

    @javascripts = %w(isotope.pkgd.min.js secondary-navbar.js gifts.js)
    @stylesheets = %w(jquery.fullPage.css navbar-shadow.css)

    gifts = Gift.all
    @mine = gifts.select do |gift|
      gift.user == current_user
    end
    @kitchen = gifts.kitchen
    @decorations = gifts.decorations
    @adventure = gifts.adventure
    @home = gifts.home
    @other = gifts.other
    @claimed = gifts.claimed
  end

  def new
    @gift = Gift.new
    render :edit
  end

  def edit
    @gift = Gift.find(params[:id])
  end

  def create
    @gift = Gift.new(_create_params)

    if @gift.save
      redirect_to new_gift_path, flash: { success: "#{@gift.name} successfully created." }
    else
      render :index, flash: { danger: "There was an error." }
    end
  end

  def claim
    @gift = Gift.find(params[:gift_id])
    if @gift.user.nil?
      @gift.update_attribute(:user_id, current_user.id)

      respond_to do |format|
        format.js {}
      end
    end
  end

  def unclaim
    @gift = Gift.find(params[:gift_id])
    if @gift.user == current_user
      @gift.update_attribute(:user_id, nil)

      respond_to do |format|
        format.js {}
      end
    end
  end

  def update
    if @gift.update(_update_params)
      redirect_to edit_gift_path(@gift), flash: { success: "#{@gift.name} successfully updated!" }
    else
      render :edit
    end

  end

  def destroy
    @gift.destroy
    redirect_to gifts_path, flash: { info: "Gift was successfully destroyed." }
  end

  private
    def _set_gift
      @gift = Gift.find(params[:id])
    end

    def _create_params
      _admin_params
    end

    def _update_params
      _admin_params
    end

    def _admin_or_owner
      not_authorized unless current_user.admin? || current_user == gift.user
    end

    def _admin_params
      params.require(:gift).permit(:name, :description, :category, :pic_name, :user_id)
    end
end
