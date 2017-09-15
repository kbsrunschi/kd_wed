module PagesHelper
  def address_query(event)
    if Rails.env == "production"
      google_base = "https://www.google.com/maps/embed/v1/place?q="
      query = "#{event.address} #{event.city}"
      key = "&key=#{Rails.application.secrets.google_maps_api_key}"
      url = google_base + query + key
      URI.escape(url)
    else
      "http://geography.wisc.edu/maplib/images/projection.png"
    end
  end

  def total_attending(attending)
    attending.sum("number_attending")
  end

  def event_width_for(quantity)
    case quantity
    when 2
      "col-xs-12 col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-0"
    when 1
      "col-xs-12 col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3"
    else
      "hidden"
    end
  end

  def user_on_admin_page(user)
    if user.attending? && user.rsvp?
      "#{user.name} - #{user.number_attending}"
    else
      user.name
    end
  end
end
