# frozen_string_literal: true

# require 'faker'

require_relative "exceptional_absurdity_mill/version"
require "faker"

module ExceptionalAbsurdityMill
  class Error < StandardError; end

  class Base
    def self.hash_array(number_of_columns, number_of_rows)
      column_names = number_of_columns.times.each_with_object([]) do |n, names_array|
        names_array[n] = "#{random}-#{n}"
      end

      number_of_rows.times.each_with_object([]) do |n, new_array|
        new_array[n] = column_names.each_with_object({}) do |column, new_hash|
          new_hash[column] = random
        end
      end
    end

    def self.random
      Faker::Fantasy::Tolkien.character.to_s
    end
  end
end
