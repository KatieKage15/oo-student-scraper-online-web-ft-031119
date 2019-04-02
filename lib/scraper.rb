require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
    index_page.css("div.roster-cards-container")

        binding.pry
    students = []
  end

  def self.scrape_profile_page(profile_url)

  end

end
