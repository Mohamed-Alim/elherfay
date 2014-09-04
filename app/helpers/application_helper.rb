module ApplicationHelper
  
def show_stars(l)
  image_tag "star#{l}.png", :style => "width:125px;height:50px"
end
  
def show_color(c)
  image_tag "circle#{c}.png", :style => "width:125;height:50px"
end  
end
