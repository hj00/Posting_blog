class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    require 'digest'
    User.create(
      email: params[:email],
      password: Digest::MD5.hexdigest(params[:password])
    )
    redirect_to '/'
  end
  
  def login_form
  end
  
  def login
    user = User.find_by(email: params[:email])
    pw = Digest::MD5.hexdigest(params[:password])
    if user
      if user.password == pw
        session[:user_id] = user.id
        flash[:notice] = "환영합니다. #{user.email}님. 성공적으로 로그인되었습니다."
        redirect_to '/'
      else
        flash[:alert] = "비밀번호가 틀렸습니다. 다시 시도해주세요."
        redirect_to '/user/login_form'
      end
    else
      flash[:alert] = "존재하지 않는 이메일입니다. 다시 시도해주시거나 회원가입 부탁드립니다."
      redirect_to :back
    end
  end
end
