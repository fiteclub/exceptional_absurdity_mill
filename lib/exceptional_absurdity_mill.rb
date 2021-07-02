# frozen_string_literal: true

# require 'faker'

require_relative "exceptional_absurdity_mill/version"

module ExceptionalAbsurdityMill
  class Error < StandardError; end

  class Base
    def self.hash_array(number_of_columns, number_of_rows)
      keys = number_of_columns.times.each_with_object([]) do |n, keys_array|
        keys_array[n] = "lorem"
      end

      number_of_rows.times.each_with_object([]) do |n, new_array|
        new_array[n] = number_of_rows.times.each_with_object({}) do |i, new_hash |
          new_hash[keys[i]] = "ipsum"
        end
      end
    end

    def self.random
      random_string = "This is your random string"
    end
  end
end
