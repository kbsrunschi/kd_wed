class PagesController < ApplicationController
  before_action :admin_only, only: [:admin]

  def index
    flash.discard
  end

  def events
    @navbar_active = "info"

    @javascripts = %w(jquery.fullPage.min.js secondary-navbar.js)
    @stylesheets = %w(jquery.fullPage.css navbar-shadow.css)

    _set_event_variables
  end

  def admin
    @javascripts = %w(admin.js)

    @attending = User.attending
    @not_attending = User.not_attending
    @unknown = User.not_responded
  end

  def people
    @navbar_active = "people"

    @javascripts = %w(people.js)
    _set_user_variables
  end

  def _set_event_variables
    @wedding = EventsFactory.wedding_factory
    @reception = EventsFactory.reception_factory
    @hotel = EventsFactory.hotel_factory
    @rehearsal = EventsFactory.rehearsal_factory
    @rehearsal_dinner = EventsFactory.rehearsal_dinner_factory
    @chicago_shower = EventsFactory.chicago_shower_factory
    @tipton_shower = EventsFactory.tipton_shower_factory
  end

  def _set_user_variables
    @groomsmen = [
      @joe = PeopleFactory.joe_factory,
      @john_luke = PeopleFactory.john_luke_factory,
      @lee = PeopleFactory.lee_factory,
      @ryan = PeopleFactory.ryan_factory,
      @jeff = PeopleFactory.jeff_factory,
      @dave = PeopleFactory.dave_factory,
      @steve = PeopleFactory.steve_factory,
    ]
    @bridesmaids = [
      @cassandra = PeopleFactory.cassandra_factory,
      @katie = PeopleFactory.katie_factory,
      @sarah = PeopleFactory.sarah_factory,
      @rebekah = PeopleFactory.rebekah_factory,
      @maggie = PeopleFactory.maggie_factory,
      @abby = PeopleFactory.abby_factory,
      @danielle = PeopleFactory.danielle_factory,
    ]
  end
end
