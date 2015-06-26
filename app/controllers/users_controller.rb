class UsersController < ApplicationController
  def index
    @search = User.search(params[:q])
    @users = @search.result
    @search.build_condition
    @search.build_sort if @search.sorts.empty?
  end
end
