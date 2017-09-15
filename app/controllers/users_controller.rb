class UsersController < ApplicationController
  before_action :admin_only, only: [:index, :new, :create, :destroy]
  before_action :_set_user, only: [:edit, :update, :destroy]
  before_action :_admin_or_self, only: [:edit, :update]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  # admin only
  def edit
    @javascripts = %w(wedding-form.js)
  end

  def rsvp
    @navbar_active = "rsvp"

    @javascripts = %w(wedding-form.js)
    @user = current_user
    render :edit
  end

  # POST /users
  def create
    create_params = _create_user_params
    create_params[:password] = create_params[:password].downcase if create_params[:password]
    create_params[:password_confirmation] = create_params[:password_confirmation].downcase if create_params[:password_confirmation]

    @user = User.new(create_params)

    if @user.save
      redirect_to users_path, flash: { success: "User was successfully created." }
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    update_params = _update_user_params
    update_params[:password] = update_params[:password].downcase if update_params[:password]
    update_params[:password_confirmation] = update_params[:password_confirmation].downcase if update_params[:password_confirmation]

    if @user.update(update_params)
      @user.update_attribute(:rsvp, true) unless current_user.admin?
      redirect_to edit_user_path(@user), flash: { success: "#{@user.name} was successfully updated." }
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, flash: { info: "User was successfully destroyed." }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def _admin_or_self
      not_authorizaed unless current_user.admin? || current_user == @user
    end

    def _set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def _create_user_params
      params.require(:user).permit(_admin_params)
    end

    def _update_user_params
      valid_params = _user_editable_params
      if current_user.admin?
        valid_params += _admin_params
      end
      params.require(:user).permit(valid_params)
    end

    def _user_editable_params
      [
        :attending,
        :number_attending,
        :attendees,
        :songs,
      ]
    end

    def _admin_params
      [
        :username,
        :password,
        :password_confirmation,
        :name,
        :bachelor_party,
        :bachelorette_party,
        :rehearsal,
        :rehearsal_dinner,
        :chicago_shower,
        :tipton_shower,
      ]
    end
end
