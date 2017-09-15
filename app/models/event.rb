class Event
  attr_accessor :title, :time, :date, :location, :map, :notes, :contact_name, :contact_email, :contact_phone, :public, :coming_soon, :pic_name

  def initialize(params)
    params.each do |k, v|
      self.send("#{k}=", v)
    end
  end
end
