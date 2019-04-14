class UsersController < ApplicationController

before_action :authenticate_user!



def new
  @user = User.new
  @categories = Category.order('name ASC').map { |i| [i.name, i.id]}
  @genders = Gender.order('name ASC').map { |i| [i.name, i.id]}


end

def create
  @user = User.new(user_params)
  @user.password = ("golf123")
  @user.password_confirmation = ("golf123")

  if @user.save
    redirect_to user_path
  else
    render 'new'
  end
  
end


  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :dob, :ovga_team, :gender_id, :category_id)
    end


end
