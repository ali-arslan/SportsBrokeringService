Given /the following teams exist/ do |teams_table|
  teams_table.hashes.each do |team|
    Team.create!(team)
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  assert page.all("table#teams tbody tr td[1]").map{|t| t.text}.index(e1) < page.all("table#teams tbody tr td[1]").map{|t| t.text}.index(e2)
end

Then /I should (not )?see teams rated: (.*)/ do |should_not, rating_list|
  rating_list.split(', ').each do |type|
    if should_not
      assert page.has_no_xpath?('//td', :text => "#{type}")
    else
      assert page.has_xpath?('//td', :text => "#{type}")
    end
  end
end
