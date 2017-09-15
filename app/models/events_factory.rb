class EventsFactory
  def self.wedding_factory
    Event.new({
      title: "The Wedding",
      public: true,
      date: "12-19-15",
      time: "3:00pm",
      location: "St. James Catholic Church<br/>820 N. Arlington Hts. Rd.<br/>Arlington Hts., IL 60004",
      map: "https://www.google.com/maps/place/St.+James+Church/@42.0930626,-87.9809768,17.84z/data=!4m2!3m1!1s0x880fbafba8595d65:0x39119d0d67f492e",
      notes: "We have the church from 2:30 until 4:30 pm. There is another wedding before and a mass after. Also, the only bathrooms in the church are not handicap accessible, please plan accordingly.",
      pic_name: "st-james.jpg",
    })
  end

  def self.reception_factory
    Event.new({
      title: "The Reception",
      public: true,
      date: "12-19-15",
      time: "4:30pm",
      location: "KC Hall<br/>15 N. Hickory Ave.<br/>Arlington Hts., IL 60004",
      map: "https://www.google.com/maps/place/Knights+of+Columbus/@42.0825781,-87.9741077,17z/data=!3m1!4b1!4m2!3m1!1s0x880fbaf50b245eaf:0xe4d0e6f1ca0bec6e",
      notes: "Cocktail hour from 4:30-5:30 with dinner starting at 5:45.<br/>There is a small parking lot available across the street. Please reserve this for the elderly and park along the street if possible.",
      pic_name: "reception.jpg",
    })
  end

  def self.hotel_factory
    Event.new({
      title: "The Hotel",
      location: "Comfort Inn<br/>2120 S Arlington Heights Rd<br/>Arlington Heights, IL 60005",
      public: true,
      contact_phone: "(847) 593-9400",
      map: "https://www.google.com/maps/place/Comfort+Inn/@42.0464007,-87.9835929,17z/data=!4m5!1m2!2m1!1scomfort+inn+near+Arlington+Heights,+IL!3m1!1s0x880fb06f511cb13d:0x5f7cd483f11d9f16",
      notes: "There is a block of rooms under Hawkins/DeWyze and the rate is $72/night. Hot breakfast is provided with the room, and it is less than a 10 minute drive and there is (basically) only one road from the hotel to the church!",
      pic_name: "comfort-inn.jpg",
    })
  end

  def self.rehearsal_factory
    Event.new({
      title: "The Rehearsal",
      date: "12-18-15",
      time: "6:30pm",
      location: "St. James Catholic Church<br/>820 N. Arlington Hts. Rd.<br/>Arlington Hts., IL 60004",
      map: "https://www.google.com/maps/place/St+James+Parish+-+A+Catholic+Christian+Community/@42.092465,-87.981207,17z/data=!4m6!1m3!3m2!1s0x880fbafba8500001:0x7a8529c8c7285f59!2sSt+James+Parish+-+A+Catholic+Christian+Community!3m1!1s0x880fbafba8500001:0x7a8529c8c7285f59",
      notes: "The Rehearsal starts promptly at 6:30pm and is no more than 1 hour long. It sounds like promptness is important!",
      pic_name: "st-james.jpg",
    })
  end

  def self.rehearsal_dinner_factory
    Event.new({
      title: "The Rehearsal Dinner",
      date: "12-18-15",
      time: "7:30pm",
      location: "KC Hall<br/>15 N. Hickory Ave.<br/>Arlington Hts., IL 60004",
      map: "https://www.google.com/maps/place/Knights+of+Columbus/@42.0825781,-87.9741077,17z/data=!3m1!4b1!4m2!3m1!1s0x880fbaf50b245eaf:0xe4d0e6f1ca0bec6e",
      notes: "We will be having Chicago-style deep dish pizza from Lou Malnati's (John's favorite). If you have any dietary concerns let us know. After pizza we will have a night of card games!",
      pic_name: "rehearsal-dinner.jpg",
    })
  end

  def self.chicago_shower_factory
    Event.new({
      title: "The Chicago Shower",
      date: "10-10-15",
      time: "4:30pm",
      location: "Fausto's Kitchen<br/> 16 S. Evergreen Ave.<br/> Arlington Heights, IL 60005",
      map: "https://www.google.com/maps/place/Fausto's+Kitchen/@42.08141,-87.9822027,18.71z/data=!4m6!1m3!3m2!1s0x880fbaf29f1dbec1:0xdd8c7317d100ed82!2sFausto's+Kitchen!3m1!1s0x880fbaf29f1dbec1:0xdd8c7317d100ed82",
      pic_name: "chicago-shower.jpg",
    })
  end

  def self.tipton_shower_factory
    Event.new({
      title: "The Tipton Shower",
      date: "11-28-15",
      time: "2:00pm",
      location: "The Ripberger Home<br/>1607 W 400 S<br/>Tipton, IN 46072",
      map: "https://www.google.com/maps/place/1607+W+400+S,+Tipton,+IN+46072/@40.245725,-86.0455957,17z/data=!3m1!4b1!4m2!3m1!1s0x88149628bb2b1d73:0x52ab716990ee89e1",
      pic_name: "tipton-shower.jpg",
    })
  end
end
