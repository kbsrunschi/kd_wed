class Person
  attr_accessor :name, :description, :relation, :pic_name

  def initialize(params)
    params.each do |k, v|
      self.send("#{k}=", v)
    end
  end
end
