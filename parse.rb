# http://www.nokogiri.org/tutorials/searching_a_xml_html_document.html
require 'rubygems'
require 'nokogiri'

def parseXML(filename)
  page = Nokogiri::XML(open(filename))
  puts page.class
  page.css('//ssn//p').each do |a|
   start =  a['strt'].to_i
    stop = a['stp'].to_i
    puts a['qn'] + " " + "Start Time: " + a['strt'] + " " + "Stop Time: " + a['stp']


  page.css('//ssn//p//v').each do |e|

    puts e['id'] + " " + "Given answer: " + e['ans']
    end
  end
end

if __FILE__ == $0
  parseXML('CS 141 FALL 2016/SessionData/L1609211319.xml')
end
