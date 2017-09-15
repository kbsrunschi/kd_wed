date_formats = {
  short_date: "%m/%e/%y",
  short_time: "%l:%M%P",
}

Time::DATE_FORMATS.merge! date_formats
Date::DATE_FORMATS.merge! date_formats

