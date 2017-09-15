class Gift < ActiveRecord::Base
  belongs_to :user

  default_scope { order(:name) }

  # validate category is in:

  def self.kitchen
    select do |gift|
      gift.category == "kitchen" && !gift.claimed?
    end
  end

  def self.decorations
    select do |gift|
      gift.category == "decorations" && !gift.claimed?
    end
  end

  def self.adventure
    select do |gift|
      gift.category == "adventure" && !gift.claimed?
    end
  end

  def self.home
    select do |gift|
      gift.category == "home" && !gift.claimed?
    end
  end

  def self.other
    select do |gift|
      gift.category == "other" && !gift.claimed?
    end
  end

  def self.claimed
    select do |gift|
      gift.claimed?
    end
  end

  def belongs_to?(user)
    user == self.user
  end

  def claimed?
    user != nil
  end
end
