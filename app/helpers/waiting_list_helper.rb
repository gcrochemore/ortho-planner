module WaitingListHelper
  def show_waiting_list_age(age)
    if !age.nil? 
      age = age / 60
      if age < 60
        return age.round.to_s + " minutes"
      else
        age = age / 60
        if age < 24
          return age.round.to_s + " heures"
        else
          age = age / 24
          if age < 31
            return age.round.to_s + " jours"
          else
            age = age / 31
            return age.round.to_s + " mois"
          end
        end
      end
    end    
  end
end