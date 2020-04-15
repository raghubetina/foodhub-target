require "rails_helper"

describe "The landing page" do
  it "has only one nav tag.", :points => 1 do
    visit "/"

    expect(page).to have_tag("nav", :count => 1),
      "Expected to find <nav> </nav> on the page but didn't."
  end
end

describe "The landing page" do
  it "has a nav tag that contains the 'FOODHUB' link.", :points => 1 do
    visit "/"

    expect(page).to have_css("nav a", :text => /FOODHUB/i),
      "Expected page to have an <a> tag with text 'FOODHUB' inside a nav, but didn't find one."
  end
end

describe "The landing page" do
  it "has a nav tag that contains the 'Sign In' link.", :points => 1 do
    visit "/"
    
    expect(page).to have_css("nav a", :text => /Sign In/i),
      "Expected page to have an <a> tag with text 'Sign In' inside a nav, but didn't find one."
  end
end

describe "The landing page" do
  it "has a nav tag that contains the shopping icon link.", :points => 1 do
    visit "/"
    
    non_text_link = all("nav a", :text => "", :exact_text => true).first
    
    expect(non_text_link).to have_css("i", :count => 1),
      "Expected <a> tag with no text to have an icon (<i> tag) inside of it, but didn't find one."
  end
end

describe "The landing page" do
  it "has only one footer.", :points => 1 do
    visit "/"

    expect(page).to have_tag("footer", :count => 1),
      "Expected page to have exactly 1 <footer> tag, but found either 0 or more than 1."
  end
end

describe "The landing page" do
  it "has at least one label.", :points => 0 do
    visit "/"
    
    expect(page).to have_tag("label", :min => 1),
      "Expected page to have at least 1 <label> tag, but didn't find any."
  end
end

describe "The landing page" do
  it "has at least two label.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("label", :min => 2),
      "Expected page to have at least 2 <label> tags, but found less than that."
  end
end
describe "The landing page" do
  it "has exactly 3 labels.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("label", :count => 3),
      "Expected page to have exactly 3 <label> tags, but didn't find 3."
  end
end

describe "The landing page" do
  it "has a label with the text 'Enter your address below.'.", :points => 0 do
    visit "/"
    
    expect(page).to have_tag("label", :text => /Enter your address below/i, :count => 1),
      "Expected page to have exactly 1 <label> tag with text 'Enter your address below', but didn't find one."
  end
end

describe "The landing page" do
  it "has a label with the text 'Email address'.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("label", :text => /Email Address/i, :count => 1),
      "Expected page to have exactly 1 <label> tag with text 'Email Address', but didn't find one."
  end
end

describe "The landing page" do
  it "has a label with the text 'Zip Code'.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("label", :text => /Zip Code/i, :count => 1),
      "Expected page to have exactly 1 <label> tag with text 'Zip Code', but didn't find one."
  end
end

describe "The landing page" do
  it "has a label 'Enter your address below.' with a for attribute that is not empty.", :points => 1 do
    visit "/"
    
    address_label = find("label", :text => /Enter your address below/i)
    for_attribute = address_label[:for]

    expect(for_attribute).to_not be_empty,
      "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
  end
end
  
describe "The landing page" do
  it "has a label 'Enter your address below.' with a matching input tag.", :points => 1 do
    visit "/"
    
    address_label = find("label", :text => /Enter your address below/i)
    for_attribute = address_label[:for]
    
    if for_attribute.nil?
      expect(for_attribute).to_not be_empty,
        "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
    else
      all_inputs = all("input")
  
      all_input_ids = all_inputs.map { |input| input[:id] }
  
      expect(all_input_ids.count(for_attribute)).to eq(1),
        "Expected label's for attribute(#{for_attribute}) to match only 1 of the ids of an <input> tag (#{all_input_ids}), but found 0 or more than 1."  
    end

  end
end


describe "The landing page" do
  it "has a label 'Email address' with a for attribute that is not empty.", :points => 1 do
    visit "/"
    
    email_label = find("label", :text => /Email address/i)
    for_attribute = email_label[:for]

    expect(for_attribute).to_not be_empty,
      "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
  end
end

describe "The landing page" do
  it "has a label 'Email address' with a matching input tag.", :points => 1 do
    visit "/"
    
    address_label = find("label", :text => /Email address/i)
    for_attribute = address_label[:for]

    if for_attribute.nil?
      expect(for_attribute).to_not be_empty,
        "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
    else
      all_inputs = all("input")
  
      all_input_ids = all_inputs.map { |input| input[:id] }
  
      expect(all_input_ids.count(for_attribute)).to eq(1),
        "Expected label's for attribute(#{for_attribute}) to match only 1 of the ids of an <input> tag (#{all_input_ids}), but found 0 or more than 1."  
    end
  end
end


describe "The landing page" do
  it "has a label 'Zip Code' with a for attribute that is not empty.", :points => 1 do
    visit "/"
    
    address_label = find("label", :text => /Zip Code/i)
    for_attribute = address_label[:for]
    
    expect(for_attribute).to_not be_empty,
     "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
  end
end

describe "The landing page" do
  it "has a label 'Zip Code' with a matching input tag.", :points => 1 do
    visit "/"
    
    address_label = find("label", :text => /Zip Code/i)
    for_attribute = address_label[:for]

    if for_attribute.nil?
      expect(for_attribute).to_not be_empty,
        "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
    else
      all_inputs = all("input")
  
      all_input_ids = all_inputs.map { |input| input[:id] }
  
      expect(all_input_ids.count(for_attribute)).to eq(1),
        "Expected label's for attribute(#{for_attribute}) to match only 1 of the ids of an <input> tag (#{all_input_ids}), but found 0 or more than 1."  
    end
  end
end
