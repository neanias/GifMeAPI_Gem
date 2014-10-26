# coding: utf-8
require 'httparty'

class Search
  include HTTParty
  base_uri 'api.gifme.io/v1'

  API_KEY = 'rX7kbMzkGu7WJwvG'

  def initialize(query, limit=42, page=0,
                 sfw=true, key=API_KEY)
    @options = {
      query:
        {
          query:  query,
          limit:  limit,
          page:   page,
          sfw:    sfw,
          key:    key
       }
    }
  end

  def search
    self.class.get('/search', @options)
  end
end
