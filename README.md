# README

## Versioning, etc.

* Ruby: 2.3.1, Rails 5.0.0

* rspec test suite with capybara

* pg for heroku deployment

## Project details

1. Landing page
  * Immediate links for each kind of event 
    *(Banana Peel Circus, Purple People Painters, Noisy Neighbors, etc.)
  * BOOK NOW button for each
    * when BOOK NOW is clicked, expands a list of each option for the event as checkboxes
    * upon selection, calendar is displayed with available dates and times
    * When date is selected, taken to confirmation and payment page

2. Visible calendar to see which events and times are booked
  * Generate .ics for event export to other calendars upon confirmation
  * This will sync to an existing Google Calendar

3. Payment and booking
  * Square, Stripe, or Braintree (as of early Augist, Braintree requires older Ruby version, so it may be Stripe)
  * No login for booking, just info
    * (Option to join the newsletter here, regardless)

4. Transactional emails (using SendGrid?)
  * confirmation to visitor and to office manager (immediate)
    * includes copy to expect a call and/or email about insurance and other details to be worked out
    * include .ics for the event
  * reminder to visitor and to office manager (24-48 hours prior)


## Questions to be answered

1. Will the office manager be using this to book for call ins? (should be yes, imo)
2. Will the calendar on the app sync to an existing calendar?
    * Yes. Will sync to existing GOOGLE CALENDAR. (I must know how to access it.)
3. Will the app replace the existing website? 
  * yes
4. How often do the shows change and need to be updated on the booking site?
5. How will people set times and dates? 
  * They pick a time and durations?
  * Prescheduled times and durations?
6. What do you guys call these? shows? events? I need to know so I can name them accurately.
7. Can the various tiers of events be purchased as mix-and-match, or are they set?
  * SOME are pre-set, some are add-ons. May have to include a "booking add-on option" menu, depending.


## Page Heirarchy and Plan

* Main page
  - Dropdown menu that populates a second dynamically.
     - Each Event Option dropdown populates a description, gallery and price section
      - Partial for each to take to BOOK NOW shopping cart
        - Will need some to open a Radio menu to choose multiple instead of a dropdown
  - Two tabs at bottom. When clicked, expands.
    -Contact info
    -About Us

* Backend EventCreator (using ActiveAdmin and Devise gems) 
  - Admin Login
    - Basic login for users
  - create_event 
    - event_option_id
    - event_option
      - price, description

** Calendar workflow
  - See all events. Radio menu? Maybe
  - Click book now
  - Populate div with .datepicker()
  - select date and time
    - rails checks for conflicts on Google Calendar
      - If no conflict, populate div with booking info
      - If conflict, flash error message of conflict and repeat until no conflict.
  - Once booking is confirmed, send confirmation email wtih ICS to user and to Be The Show office manager calendar account
    - (The ICS should be added automagically to Be The Show event calendar)

** BIG TIME ERRORS TO FIX:
  - When selecting the blank on #event-select dropdown, it loads events/index in the div
  - AJAX event-select needs routing fix for Http 
  