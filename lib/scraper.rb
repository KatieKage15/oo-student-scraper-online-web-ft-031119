require 'open-uri'
require 'pry'
require 'Nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
    students = []
    doc.css("div.roster-cards-container").each do |card|
      card.css(".student-card a").each do |student|
        name = student.css(".student-name").text
        profile_link = "#{student.attr('href')}"
        location = student.css('.student_location').text
        students << {name: name, location: location, profile_link: profile_link}
      end
    end
    students
  end
        
  def self.scrape_profile_page(profile_url)
  end
end
