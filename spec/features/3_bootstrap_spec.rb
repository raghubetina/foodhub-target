require "rails_helper"

describe "The landing page" do
  it "has the images 'map.jpg' and 'menu.jpg' next to each other when browser width is >= 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 1024, 768 px
    current_window.resize_to(1024, 768)

    within "html" do
      within "body" do
        map_img = find("img[src*='map.jpg")
        menu_img = find("img[src*='menu.jpg")
        
        top_of_map_img = map_img.rect.y
        
        bottom_of_map_img = top_of_map_img + map_img.rect.height
        
        top_of_menu_img = menu_img.rect.y
        
        expect(top_of_map_img..bottom_of_map_img).to cover(top_of_menu_img),
          "Expected the top of 'menu.jpg' to be between top and bottom of 'map.jp' (#{top_of_map_img} and #{bottom_of_map_img}), but was #{top_of_menu_img} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'menu.jpg' and 'delivery.jpg' next to each other when browser width is >= 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 1024, 768 px
    current_window.resize_to(1024, 768)

    within "html" do
      within "body" do
        menu_img = find("img[src*='menu.jpg")
        delivery_img = find("img[src*='delivery.jpg")
        
        top_of_menu_img = menu_img.rect.y.round
        
        bottom_of_menu_img = top_of_menu_img + menu_img.rect.height
        
        top_of_delivery_img = delivery_img.rect.y.round
        
        expect(top_of_menu_img..bottom_of_menu_img).to cover(top_of_delivery_img),
          "Expected the top of 'menu.jpg' to be between top and bottom of menu.jpg (#{top_of_menu_img} and #{bottom_of_menu_img}), but was #{top_of_delivery_img} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'app-store-badge.png' and 'google-play-badge.png' next to each other.", { :js => true, :points => 1} do
    visit "/"

    within "html" do
      within "body" do
        app_store_img = find("img[src*='app-store-badge.png'")
        google_play_img = find("img[src*='google-play-badge.png'")
        
        top_of_app_store_img = app_store_img.rect.y.round
        
        bottom_of_app_store_img = top_of_app_store_img + app_store_img.rect.height
        
        top_of_google_play_img = google_play_img.rect.y.round
        
        expect(top_of_app_store_img..bottom_of_app_store_img).to cover(top_of_google_play_img),
          "Expected the top of 'app-store,jpg' to be between top and bottom of app-store-badge(#{top_of_app_store_img} and #{bottom_of_app_store_img}), but was #{top_of_google_play_img} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'map.jpg' and 'menu.jpg' be on their own line when browser width is < 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 750, 768 px
    current_window.resize_to(750, 768)

    within "html" do
      within "body" do
        map_img = find("img[src*='map.jpg")
        menu_img = find("img[src*='menu.jpg")
        
        top_of_map_img = map_img.rect.y
        
        bottom_of_map_img = top_of_map_img + map_img.rect.height
        
        top_of_menu_img = menu_img.rect.y
        
        expect(top_of_map_img..bottom_of_map_img).to_not cover(top_of_menu_img),
          "Expected the top of 'map.jpg' to be between top and bottom of map.jpg (#{top_of_map_img} and #{bottom_of_map_img}), but was #{top_of_menu_img} instead."
      
      end
    end
  end 
end

describe "The landing page" do
  it "should have the images 'menu.jpg' and 'delivery.jpg' be on their own line when browser width is < 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 750, 768 px
    current_window.resize_to(750, 768)

    within "html" do
      within "body" do
        menu_img = find("img[src*='menu.jpg")
        delivery_img = find("img[src*='delivery.jpg")
        
        top_of_menu_img = menu_img.rect.y.round
        
        bottom_of_menu_img = top_of_menu_img + menu_img.rect.height
        
        top_of_delivery_img = delivery_img.rect.y.round
        
        expect(top_of_menu_img..bottom_of_menu_img).to_not cover(top_of_delivery_img),
          "Expected the top of 'menu.jpg' to be between top and bottom of menu.jpg (#{top_of_menu_img} and #{bottom_of_menu_img}), but was #{top_of_delivery_img} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'user-1.jpg', 'user-2.jpg' be next to each other when browser width is >= 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 1024, 768 px
    current_window.resize_to(1024, 768)

    within "html" do
      within "body" do
        user_1 = find("img[src*='user-1.jpg'")
        user_2 = find("img[src*='user-2.jpg'")
        
        top_of_user_1 = user_1.rect.y.round
        
        bottom_of_user_1 = top_of_user_1 + user_1.rect.height
        
        top_of_user_2 = user_2.rect.y.round
        
        expect(top_of_user_1..bottom_of_user_1).to cover(top_of_user_2),
          "Expected the top of 'user-1.jpg' to be between top and bottom of user-1.jpg #{top_of_user_1} and #{bottom_of_user_1}, but was #{top_of_user_2} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'user-3.jpg', 'user-4.jpg' be next to each other when browser width is >= 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 1024, 768 px
    current_window.resize_to(1024, 768)

    within "html" do
      within "body" do
        user_3 = find("img[src*='user-3.jpg'")
        user_4 = find("img[src*='user-4.jpg'")
        
        top_of_user_3 = user_3.rect.y.round
        
        bottom_of_user_3 = top_of_user_3 + user_3.rect.height
        
        top_of_user_4 = user_4.rect.y.round
        
        expect(top_of_user_3..bottom_of_user_3).to cover(top_of_user_4),
          "Expected the top of 'user-3.jpg' to be between top and bottom of user-3.jpg(#{top_of_user_3} and #{bottom_of_user_3}), but was #{top_of_user_4} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'user-1.jpg' and 'user-4.jpg' be on separate lines when browser width is < 991px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 991, 768 px
    current_window.resize_to(991, 768)

    within "html" do
      within "body" do
        user_1 = find("img[src*='user-1.jpg'")
        user_4 = find("img[src*='user-4.jpg'")
        
        top_of_user_1 = user_1.rect.y.round
        
        bottom_of_user_1 = top_of_user_1 + user_1.rect.height
        
        top_of_user_4 = user_4.rect.y.round
        
        expect(top_of_user_1..bottom_of_user_1).to_not cover(top_of_user_4),
          "Expected the top of 'user-1.jpg' to not be between top and bottom of user-1.jpg(#{top_of_user_1} and #{bottom_of_user_1}), but was #{top_of_user_4} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'user-1.jpg' and 'user-2.jpg' be on their own line when browser width is < 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 767, 768 px
    current_window.resize_to(767, 768)

    within "html" do
      within "body" do
        user_1 = find("img[src*='user-1.jpg'")
        user_2 = find("img[src*='user-2.jpg'")
        
        top_of_user_1 = user_1.rect.y.round
        
        bottom_of_user_1 = top_of_user_1 + user_1.rect.height
        
        top_of_user_2 = user_2.rect.y.round
        
        expect(top_of_user_1..bottom_of_user_1).to_not cover(top_of_user_2),
          "Expected the top of 'user-1.jpg' to not be between top and bottom of user-1.jpg(#{top_of_user_1} and #{bottom_of_user_1}), but was #{top_of_user_2} instead."
      
      end
    end
  end 
end

describe "The landing page" do
  it "should have the images 'user-3.jpg' and 'user-4.jpg' be on their own line when browser width is < 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 767, 768 px
    current_window.resize_to(767, 768)

    within "html" do
      within "body" do
        user_3 = find("img[src*='user-3.jpg'")
        user_4 = find("img[src*='user-4.jpg'")
        
        top_of_user_3 = user_3.rect.y.round
        
        bottom_of_user_3 = top_of_user_3 + user_3.rect.height
        
        top_of_user_4 = user_4.rect.y.round
        
        expect(top_of_user_3..bottom_of_user_3).to_not cover(top_of_user_4),
          "Expected the top of 'user-3.jpg' to not be between top and bottom of user-3.jpg(#{top_of_user_3} and #{bottom_of_user_3}), but was #{top_of_user_4} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "should have the images 'user-1.jpg' and 'user-4.jpg' be on their own line when browser width is < 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 767, 768 px
    current_window.resize_to(767, 768)

    within "html" do
      within "body" do
        user_1 = find("img[src*='user-1.jpg'")
        user_4 = find("img[src*='user-4.jpg'")
        
        top_of_user_1 = user_1.rect.y.round
        
        bottom_of_user_1 = top_of_user_1 + user_1.rect.height
        
        top_of_user_4 = user_4.rect.y.round
        
        expect(top_of_user_1..bottom_of_user_1).to_not cover(top_of_user_4),
          "Expected the top of 'user-1.jpg' to not be between top and bottom of user-1.jpg(#{top_of_user_1} and #{bottom_of_user_1}), but was #{top_of_user_4} instead."
      
      end
    end
  end
end

describe "The landing page" do
  it "has a secondary heading 'About Foodhub' next to 'Foodhub helps you find and order food' paragraph when browser width is >= 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 1024, 768 px
    current_window.resize_to(1024, 768)

    within "html" do
      within "body" do
        heading = find("h2", :text => /About Foodhub/i)
        paragraph = find("p", :text => /Foodhub helps you find and order food/i)
        
        top_of_heading = heading.rect.y
        
        top_of_paragraph = paragraph.rect.y
        
        bottom_of_paragraph = top_of_paragraph + paragraph.rect.height
        
        expect(top_of_heading).to be_between(top_of_paragraph, bottom_of_paragraph),
          "Expected the top of heading to be between top and bottom of paragraph(#{top_of_paragraph} and #{bottom_of_paragraph}), but was #{top_of_heading} instead."
      
      end
    end

  end
end

describe "The landing page" do
  it "has a secondary heading 'About Foodhub' 'Foodhub helps you find and order food' paragraph are on separate lines when browser width is < 768px.", { :js => true, :points => 1} do
    visit "/"

    # Resize page to be 767, 768 px
    current_window.resize_to(767, 768)

    within "html" do
      within "body" do
        heading = find("h2", :text => /About Foodhub/i)
        paragraph = find("p", :text => /Foodhub helps you find and order food/i)
        
        top_of_heading = heading.rect.y
        
        top_of_paragraph = paragraph.rect.y
        
        bottom_of_paragraph = top_of_paragraph + paragraph.rect.height
        
        expect(top_of_heading).to_not be_between(top_of_paragraph, bottom_of_paragraph),
          "Expected the top of heading to not be between top and bottom of paragraph(#{top_of_paragraph} and #{bottom_of_paragraph}), but was #{top_of_heading} instead."
      
      end
    end

  end
  
end

