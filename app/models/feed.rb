class Feed
  attr_accessor(:title, :description, :entries, :last_modified)

  def initialize
    url = "http://feeds.bbci.co.uk/news/world/rss.xml"
    feed = Feedjira::Feed.fetch_and_parse url
    @title = feed.title
    @description = feed.description
    @entries = feed.entries
    @last_modified = feed.last_modified
  end
end