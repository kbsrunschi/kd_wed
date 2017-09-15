module ApplicationHelper
  def navbar_active(page)
    if @navbar_active == page
      "active"
    end
  end
end
