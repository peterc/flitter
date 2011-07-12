module ApplicationHelper
  
  def page_title(title=nil)
    title.blank? ? "Flitter" : "#{title} | Flitter"
  end
  
end
