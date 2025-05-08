class DashboardController < ApplicationController
  def index
    @songs_count = Song.count
    @recent_songs = Song.order(created_at: :desc).limit(5)
    @upcoming_services = WorshipService.where("date >= ?", Date.today).order(:date).limit(3)
    @members_count = Member.count
    @collections_count = Collection.count
  end
end
