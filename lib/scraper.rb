require 'open-uri'
require 'pry'
require 'Nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
    students = []
    index_page.css(".roster").each do |card|
      card.css(".student-card").each do |student|
        student_profile_link = "#{student.atrr('href')}"
        student_location = student.css('student_location').text
        

        binding.pry
    
        end
      end
  end
  def self.scrape_profile_page(profile_url)
  end
end
