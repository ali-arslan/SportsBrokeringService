Given /the following bets exist/ do |bets_table|
  bets_table.hashes.each do |bet|
    Bet.create!(bet)
  end
end
