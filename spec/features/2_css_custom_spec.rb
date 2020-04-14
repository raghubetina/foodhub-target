require "rails_helper"

describe "The landing page" do
  it "should have a nav element with a mostly red background color.", {:js => true, :points => 1} do
    
    visit "/"

    navbar = find("nav")
    rgba_color_value = navbar.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    
    expect(green_value).to be < red_value,
      "Expected the amount of Green(#{green_value}) in the color of the link to be less than the amount of Red(#{red_value}), but wasn't."
    expect(blue_value).to be < red_value,
      "Expected the amount of Blue(#{blue_value}) in the color of the link to be less than the amount of Red(#{red_value}), but wasn't."
    
  end
end

describe "The landing page" do
  it "should have a link in a nav with the text 'FOODHUB' in white text.", {:js => true, :points => 1} do

    visit "/"

    foodhub_link = find("a", :text => /FOODHUB/i)
    
    rgba_color_value = foodhub_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")


    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
  end
end

describe "The landing page" do
  it "should have a secondary heading with the text 'Who delivers in your neighborhood?' in white text.", {:js => true, :points => 1} do

    visit "/"

    deliver_heading = find("h2", :text => /Who delivers in your neighborhood/i)
    
    rgba_color_value = deliver_heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a label with the text 'Enter your address below.' in white text.", {:js => true, :points => 1} do

    visit "/"

    address_label = find("h2", :text => /Who delivers in your neighborhood/i)
    
    rgba_color_value = address_label.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the label to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a secondary heading with the text 'How to Foodhub' in non-white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h2", :text => /How to Foodhub/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to_not match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to not be white. Neither rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'The where' in non-white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /The where/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to_not match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to not be white. Neither rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'The what' in non-white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /The what/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to_not match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to not be white. Neither rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'The delivery' in non-white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /The delivery/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to_not match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to not be white. Neither rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a secondary heading with the text 'Download apps' in white text.", {:js => true, :points => 1} do

    visit "/"

    download_heading = find("h2", :text => /Download apps/i)
    
    rgba_color_value = download_heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a paragraph with the text 'Millions of users...' in white text.", {:js => true, :points => 1} do

    visit "/"

    paragraph = find("p", :text => /Millions of users and we want to befriend each one/i)
    
    rgba_color_value = paragraph.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the paragraph to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have the 'app-store-badge.png' resized to be 200 pixels.", {:js => true, :points => 1} do

    visit "/"
    
    app_store_image = find("img[src*='app-store-badge.png'")
    img_width = app_store_image.rect.width
    expect(img_width).to eq(200),
      "Expected width of the image to be 200px, but was #{img_width}px instead."
  end
end

describe "The landing page" do
  it "should have the 'google-play-badge.png' resized to be 200 pixels.", {:js => true, :points => 1} do

    visit "/"
    
    google_play_image = find("img[src*='google-play-badge.png'")
    img_width = google_play_image.rect.width
    expect(img_width).to eq(200),
      "Expected width of the image to be 200px, but was #{img_width}px instead."
  end
end

describe "The landing page" do
  it "has the 'gem.jpg' reshaped to be a circle (has a border-radius of 50%.)", {:js => true, :points => 1} do

    visit "/"
    
    gem_image = find("img[src*='gem.jpg'")
    img_border_radius = gem_image.native.style("border-radius")
    expect(img_border_radius).to eq("50%"),
      "Expected width of the image to be 50%, but was #{img_border_radius} instead."
  end
end

describe "The landing page" do
  it "has the 'like.jpg' reshaped to be a circle (has a border-radius of 50%.)", {:js => true, :points => 1} do

    visit "/"
    
    gem_image = find("img[src*='like.jpg'")
    img_border_radius = gem_image.native.style("border-radius")
    expect(img_border_radius).to eq("50%"),
      "Expected width of the image to be 50%, but was #{img_border_radius} instead."
  end
end

describe "The landing page" do
  it "has the 'bite.jpg' reshaped to be a circle (has a border-radius of 50%.)", {:js => true, :points => 1} do

    visit "/"
    
    gem_image = find("img[src*='bite.jpg'")
    img_border_radius = gem_image.native.style("border-radius")
    expect(img_border_radius).to eq("50%"),
      "Expected width of the image to be 50%, but was #{img_border_radius} instead."
  end
end

describe "The landing page" do
  it "has a footer element that has a dark blue background color.", {:js => true, :points => 1} do
           
    visit "/"

    footer = find("footer")
    rgba_color_value = footer.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the color of the link to be less than the amount of Blue(#{blue_value}), but wasn't."
    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the color of the link to be less than the amount of Blue(#{blue_value}), but wasn't."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'Sign up for special offers' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /Sign up for special offers/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'Get to know us' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /Get to know us/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'help' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /Get to know us/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'Connect with us' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /Connect with us/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a fourth level heading with the text 'Partner with us' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /Partner with us/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a list item with the text 'About Grubhub' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("h4", :text => /Get to know us/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the heading to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a list item with the text 'Our apps' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("li", :text => /Our apps/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the list item to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a list item with the text 'Our blog' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("li", :text => /Our blog/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the list item to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a list item with the text 'Careers' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("li", :text => /Careers/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the list item to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a list item with the text 'Investor relations' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("li", :text => /Investor relations/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the list item to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

describe "The landing page" do
  it "should have a list item with the text 'News' in white text.", {:js => true, :points => 1} do

    visit "/"

    heading = find("li", :text => /News/i)
    
    rgba_color_value = heading.native.style("color")
    
    expect(rgba_color_value).to match(/rgba?\(255, 255, 255,?\s?1?\)/),
      "Expected computed color style of the list item to be white. Either rgb(255, 255, 255) or rgba(255, 255, 255, 1), but was #{rgba_color_value}."
    
  end
end

