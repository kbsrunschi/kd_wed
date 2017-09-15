module FlashHelper
  def css_for_flash(kind)
    case kind
    when :success
      "alert-success" # green
    when :info
      "alert-info" # blue
    when :warning
      "alert-warning" # yellow
    when :danger
      "alert-danger" # red
    else
      ""
    end
  end
end
