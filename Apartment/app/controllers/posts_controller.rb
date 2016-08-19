class PostsController < ApplicationController
  def index
  	@users = User.all.includes(:properties)
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
