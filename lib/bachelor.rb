def get_first_name_of_season_winner(data, season_str)
  winner = ""
  data.each do |season, array|
    if season == season_str
      array.each do |hash|
        if hash["status"] == "Winner"
          winner = hash["name"].split(" ")[0]
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation_str)
  contestant = ""
  data.each do |season, array|
    array.each do |hash|
      if hash["occupation"] == occupation_str
        contestant = hash["name"]
        break
      end
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown_str)
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] == hometown_str
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown_str)
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] == hometown_str
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season_str)
  total_age = 0.0
  counter = 0.0
  data.each do |season, array|
    if season == season_str
      array.each do |hash|
        total_age += hash["age"].to_f
        counter += 1.0
      end
    end
  end
  (total_age / counter).round
end
