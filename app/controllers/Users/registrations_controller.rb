# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end


  def edit
    @gender_bin = []
#    @gender_bin[0] = @user.gender_id.to_s(2).rjust(2, "0")[0].to_i
#    @gender_bin[1] = @user.gender_id.to_s(2).rjust(2, "0")[1].to_i

    if @user.gender_id.to_s(2).rjust(2, "0")[0].to_i == 1
      @gender_bin[0] = true
    else
      @gender_bin[0] = false
    end

    if @user.gender_id.to_s(2).rjust(2, "0")[1].to_i == 1
      @gender_bin[1] = true
    else
      @gender_bin[1] = false
    end





    render :edit
  end


  # PUT /resource
   def update
     super


      if (params[:ovga_team]) == "1"
        @user.ovga_team = true
      else
        @user.ovga_team = false
      end

     @user.update!(user_params)


   end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected



  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :dob, :ovga_team, :gender_id, :category_id)
    end



  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
