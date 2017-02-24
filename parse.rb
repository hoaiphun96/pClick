# http://www.nokogiri.org/tutorials/searching_a_xml_html_document.html
require 'rubygems'
require 'nokogiri'

def parseXML(filename)
  page = Nokogiri::XML(open(filename))
  puts page.class
  page.css('//ssn//p//v').each do |e|
    puts e['id']
  end
end

if __FILE__ == $0
  parseXML('CS141Sec1/SessionData/L1609161028.xml')
end
