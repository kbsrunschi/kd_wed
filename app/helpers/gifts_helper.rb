module GiftsHelper
  def gift_form_name(gift)
    if gift.name.present?
      gift.name
    else
      "New Gift"
    end
  end

  def active_class(active)
    puts "ACTIVE: #{active}"
    if active
      "active"
    else
      ""
    end
  end

  def registry_claim_button(gift)
    gift.user == current_user ? "Unclaim" : "Claim"
  end

  def registry_claim_path(gift)
    if gift.user.nil?
      claim_path(gift)
    elsif gift.user == current_user
      unclaim_path(gift)
    else
      "#"
    end
  end

  def registry_claim_class(gift)
    gift.user == current_user ? "unclaim-button btn btn-danger" : "claim-button btn btn-primary"
  end
end
