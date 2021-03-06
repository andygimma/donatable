module Donatable
  class Organization < ApplicationRecord
    include PgSearch
    extend FriendlyId
    acts_as_taggable
    acts_as_taggable_on :tags

    friendly_id :combine_name_and_language, use: :slugged
    pg_search_scope :public_search,
                    against: [:name, :short_description, :long_description],
                    using: :dmetaphone

    validates :name, presence: true
    validates :website, presence: true
    validates :short_description, presence: true
    validates :long_description, presence: true
    validates :language, presence: true

    validates_uniqueness_of :name, scope: :language
    validates_uniqueness_of :website, scope: :language

    has_attached_file :main_image, styles: { medium: '300x300>', thumb: '100x100>' }
    validates_attachment_content_type :main_image, content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

    has_attached_file :logo_image, styles: { logo: '80x80' }
    validates_attachment_content_type :logo_image, content_type: ['image/jpg', 'image/jpeg', 'image/png']

    paginates_per 5
    
    private

    def combine_name_and_language
      self.name.to_s + '-' + self.language.to_s
    end
  end
end
