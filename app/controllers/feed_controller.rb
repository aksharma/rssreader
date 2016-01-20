class FeedController < ApplicationController
  def index
    @feed = Feed.new
    @favorite_entry_ids = Entry.where(user_id: @user_id).pluck(:entry_id)
  end
end
