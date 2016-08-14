# README

## Versioning, etc.

* Ruby: 2.3.1, Rails 5.0.0

* rspec test suite with capybara

* pg for heroku deployment

## Project details

1. Landing page
  * Immediate links for each kind of event 
    *(Banana Peek Circus, Purple People Painters, Noisy Neighbors, etc.)
  * BOOK NOW button for each
    * when BOOK NOW is clicked, expands a list of each option for the event as checkboxes
    * upon selection, calendar is displayed with available dates and times
    * When date is selected, taken to confirmation and payment page

2. Visible calendar to see which events and times are booked
  * Generate .ics for event export to other calendars upon confirmation
  * Will this sync to an existing calendar? 

3. Payment and booking
  * Square, Stripe, or Braintree (though Braintree requires older Ruby, so it may be Stripe)
  * No login for booking, just info
    * (Option to join the newsletter here, regardless)

4. Transactional emails (using SendGrid?)
  * confirmation to visitor and to office manager (immediate)
    * includes copy to expect a call and/or email about insurance and other details to be worked out
    * include .ics for the event
  * reminder to visitor and to office manager (24-48 hours prior)


## Questions to be answered

1. Will the office manager be using this to book for call ins? (should be yes, imo)
2. Will the calendar on the app sync to an existing calendar (such as Outlook?), or will it be the primary?
  * If there is an existing calendar, I need to know how to access it?
3. Will the app replace the existing website? 
  *pros and cons for both, but this app should stay more up to date easier than a static page, so I vote yes
4. How often do the shows change and need to be updated on the booking site?
5. How will people set times and dates? 
  * They pick a time and durations?
  * Prescheduled times and durations?
6. What do you guys call these? shows? events? I need to know so I can name them accurately.
7. Can the various tiers of events be purchased as mix-and-match, or are they set?


## Page Heirarchy and Plan

* Main page
  - Dropdown menu that populates a second dynamically.
     - Each Event Option dropdown populates a description, gallery and price section
      - Partial for each to take to BOOK NOW shopping cart
        - Will need some to open a Radio menu to choose multiple instead of a dropdown
  - Two tabs at bottom. When clicked, expands.
    -Contact info
    -About Us

* Backend EventCreator (using Clearance gem) 
  - Admin Login
    - Basic login for users
  - create_event 
    - event_option_id
    - event_option
      - price, description
  - Each event_option will be iterated through on the event.html.erb page using event_option.each


* Event (model)
  - event_name:string
  - t.boolean :active
* EventTier (model)
  - tier_title:string
  - price:float
  - description:text
