class GitInfosController < ApplicationController
  def ask
  end

  def show
   b = GitInfo.new(user_name: "blakestrickland")
   render json: b
  end
end
