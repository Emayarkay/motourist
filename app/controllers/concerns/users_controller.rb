def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    # Redirect to a page after successful signup
    redirect_to root_path, notice: 'User was successfully created.'
  else
    # If there are validation errors, re-render the signup form
    render :new
  end
end

private

def user_params
  params.require(:user).permit(:username, :email, :password, :password_confirmation)
end
end
