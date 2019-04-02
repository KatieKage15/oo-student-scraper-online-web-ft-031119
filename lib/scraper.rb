require 'open-uri'
require 'pry'
require 'Nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
      index_page.css(".roster").each do |card|
        card.css(".student-card a").each do |student|
      index_page = student.css(".view").text

        binding.pry
    students = []
        end
      end
  end
  def self.scrape_profile_page(profile_url)
  end
end
