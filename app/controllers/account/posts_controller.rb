class Account::PostsController < ApplicationController

  def index
    @post = current_user.posts.order("updated_at DESC")
  end
end
