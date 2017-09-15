class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :username, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true, on: :create

  has_many :gifts

  default_scope { order(:name) }

  scope :attending, -> { where("rsvp = true AND attending = true AND admin = false").order(:name) }
  scope :not_attending, -> { where("rsvp = true AND attending = false AND admin = false").order(:name) }
  scope :not_responded, -> { where("rsvp = false AND admin = false AND admin = false").order(:name) }

  def rehearsal_info?
    rehearsal? || rehearsal_dinner?
  end

  def rehearsal_count
    if rehearsal_dinner? && rehearsal?
      2
    elsif rehearsal_dinner? || rehearsal?
      1
    else
      0
    end
  end

  def shower_info?
    chicago_shower? || tipton_shower?
  end

  def shower_count
    if chicago_shower? && tipton_shower?
      2
    elsif chicago_shower? || tipton_shower?
      1
    else
      0
    end
  end
end
