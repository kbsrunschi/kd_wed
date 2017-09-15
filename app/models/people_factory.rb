class PeopleFactory
  def self.lee_factory
    Person.new({
      name: "Lee Schelonka",
      relation: "Friend of the Groom",
      description: "Not Canadian.",
      pic_name: "lee.jpg",
    })
  end

  def self.joe_factory
    Person.new({
      name: "Joe DeWyze",
      relation: "Brother of the Groom",
      description: "This is a job for...someone else.",
      pic_name: "joe.jpg",
    })
  end

  def self.ryan_factory
    Person.new({
      name: "Ryan Von Borstel",
      relation: "Friend of the Couple",
      description: "Age: 25, drives a Buick.",
      pic_name: "ryan.jpg",
    })
  end

  def self.jeff_factory
    Person.new({
      name: "Jeff Van Dorn",
      relation: "Friend of the Groom",
      description: "2 words: Diplomatic Immunity",
      pic_name: "jeff.jpg",
    })
  end

  def self.john_luke_factory
    Person.new({
      name: "John Luke Hawkins",
      relation: "Brother of the Bride",
      description: "Has hair.",
      pic_name: "john-luke.jpg",
    })
  end

  def self.steve_factory
    Person.new({
      name: "Steve Sanda",
      relation: "Friend of the Groom",
      description: "Cries in artificial light.",
      pic_name: "steve.jpg",
    })
  end

  def self.dave_factory
    Person.new({
      name: "Dave Kubik",
      relation: "Friend of the Groom",
      description: "Still under construction.",
      pic_name: "dave.jpg",
    })
  end

  def self.cassandra_factory
    Person.new({
      name: "Cassandra Hawkins",
      relation: "Sister of the Bride",
      description: "Call me, maybe?",
      pic_name: "cassandra.jpg",
    })
  end

  def self.sarah_factory
    Person.new({
      name: "Sarah Bricker",
      relation: "Cousin of the Bride",
      description: "Grass fed, cage free.",
      pic_name: "sarah.jpg",
    })
  end

  def self.rebekah_factory
    Person.new({
      name: "Rebekah Ripberger",
      relation: "Cousin of the Bride",
      description: "She's got the beat.",
      pic_name: "rebekah.jpg",
    })
  end

  def self.maggie_factory
    Person.new({
      name: "Maggie Mastin",
      relation: "Cousin of the Bride",
      description: "Hugs children and trees.",
      pic_name: "maggie.jpg",
    })
  end

  def self.katie_factory
    Person.new({
      name: "Katie DeWyze",
      relation: "Sister of the Groom",
      description: "Careful! She's got a kick.",
      pic_name: "katie.jpg",
    })
  end

  def self.abby_factory
    Person.new({
      name: "Abby Greaney",
      relation: "Friend of the Couple",
      description: "A girl who reads.",
      pic_name: "abby.jpg",
    })
  end

  def self.danielle_factory
    Person.new({
      name: "Danielle Schroeder",
      relation: "Friend of the Bride",
      description: "Recreational Facebooker",
      pic_name: "danielle.jpg",
    })
  end
end
