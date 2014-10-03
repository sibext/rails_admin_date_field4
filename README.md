Rails Admin Date Field 4
=====================

Rails Admin plugin for view date and time by date_field Rails 4.0 helper

---

Installation
------------

Add gem to Gemfile:

    gem 'rails_admin_date_field4', github: 'sibext/rails_admin_date_field4'

Execute from console:

    bundle install


Usage
-----

    = form_for @user do |f|
      = f.date_field :birthday
