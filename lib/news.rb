require_relative './utils'

class News
  include PickOne
  attr_reader :news_links

  def initialize
    @news_links = ['https://www.nairaland.com/']
  end

  def random_news
    PickOne.rand_string(@news_links)
  end
end
