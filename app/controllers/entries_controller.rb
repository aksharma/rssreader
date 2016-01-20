class EntriesController < ApplicationController
  def index
    @entries = Entry.where(user_id: @user_id).order("published desc")
  end

  def create
    entry = Entry.new(entry_params)
    entry.user_id = @user_id
    entry.save
    redirect_to controller: :feed
  end

  def destroy
    entry = Entry.find(params[:id])
    entry.destroy
    redirect_to action: :index
  end

  private

  def entry_params
    params.permit(:title, :summary, :url, :entry_id, :published)
  end
end