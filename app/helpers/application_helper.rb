# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  # Builds a Google CSE URL from a string
  def googlethis(s)
    # Use url_for() to help prep params for the google <a> tag
    p1 = url_for( {'q' => s, 'cx' => '010334745099783175565:49dkyo8ytbk', 'cof' => 'FORID:1', :controller => "jjnnkk", :trailing_slash => false} )
    # But wait, url_for() puts tokens in there I dont want.
    # So, I use a jjnnkk controller to help me corral them.  I will then clobber them with a .sub()
    p2 = p1.sub(/^.*jjnnkk/,'')
    s3 = "<a class='googlethis' target='git' href='http://google.com/cse#{p2}'>"
    s5 = "Google-This: </a>"
    return "#{s3}#{s5}"
  end

#  # Builds a simple a-tag from a string.  String assumed to be like http://ibm.com
#  def uurl_column(record)
#    "<a target='uurl'  href='#{record.uurl}'>#{record.uurl}</a>"
#  end

  # Builds a simple a-tag from a string.  String assumed to be like http://ibm.com
  def uurl_column(record)
    s1 = "<a target='uurl'  href='#{record.uurl}'>#{record.uurl}</a>"
    return "#{googlethis(record.uurl)} #{s1}"
  end

  # Prepends a googlethis to values in name column.
  def name_column(record)
    n = record.name
    return "#{googlethis(n)} #{n}"
  end

  # Builds a ul-element from a collection of record.categs
  def categs_column(record)
    strng = ""
    record.categs.each {|e| strng << "<li> #{link_to(h(e.name), :action => :show, :controller => 'categs', :id => e)}</li>" }
    return "<ul> #{strng} </ul>"
  end

  # Builds a ul-element from a collection of record.names and record.urlls
  def urlls_column(record)
    # Start with empty array which I will use to ease sorting
    sa = []
    # Fill the array
    record.urlls.each {|e| sa << [e.name, e.uurl, e.id] }
    # Sort the array and use it.
    strng = ""
    sa.sort.each do |e|
#    record.urlls.each do |e|
      e_name = e[0]
      e_uurl = e[1]
      e_id   = e[2]
      strng << "<li><p />name: #{link_to(h(e_name), :action => :show, :controller => 'urlls', :id => e_id)}"
      strng << "<br />URL is: <a href='#{e_uurl}' target='uurl' > #{e_uurl} </a></li>"
    end
    return "<ul> #{strng} </ul>"
  end

end

