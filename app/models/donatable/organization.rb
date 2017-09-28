module Donatable
  class Organization < ApplicationRecord
    include PgSearch
    pg_search_scope :public_search, :against => [:name, :short_description, :long_description]
  end
end
