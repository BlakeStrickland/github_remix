class GitInfosController < ApplicationController
  def ask
  end

  def show
   @user_repo_list = GitInfo.new(params[:user_name])
  end
end
