module Donatable
  class Organization < ApplicationRecord
    include PgSearch
    extend FriendlyId
    acts_as_taggable

    friendly_id :name, use: :slugged
    pg_search_scope :public_search,
                    :against => [:name, :short_description, :long_description],
                    :using => :dmetaphone

    acts_as_taggable_on :tags

    validates :name, presence: true
    validates :website, presence: true
    validates :short_description, presence: true
    validates :long_description, presence: true

    validates_uniqueness_of :name
    validates_uniqueness_of :website
  end
end
