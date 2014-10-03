require "rails_admin_date_field4/engine"

module RailsAdminDateField4
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class DateField4 < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option :partial do
            :form_date_field
          end

        end
        class DatetimeField4 < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option :partial do
            :form_datetime_field
          end

        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  model = parent.abstract_model.model

  if properties.type.to_s.eql?('date')
    fields << RailsAdmin::Config::Fields::Types::DateField4.new(parent, properties.name, properties)
    puts "Will be used date field"
    true
  elsif properties.type.to_s.eql?('datetime')
    fields << RailsAdmin::Config::Fields::Types::DatetimeField4.new(parent, properties.name, properties)
    puts "Will be used datetime field"
    true
  else
    false
  end
end


