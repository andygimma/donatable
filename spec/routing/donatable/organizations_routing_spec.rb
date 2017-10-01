require 'spec_helper'

module Donatable
  RSpec.describe OrganizationsController, type: :routing do
    routes { Donatable::Engine.routes }

    describe 'routing' do

      it 'routes to #index' do
        expect(get: '/organizations').to route_to('donatable/organizations#index')
      end

      it 'routes to #new' do
        expect(get: '/organizations/new').to route_to('donatable/organizations#new')
      end

      it 'routes to #show' do
        expect(get: '/organizations/1').to route_to('donatable/organizations#show', id: '1')
      end

      it 'routes to #edit' do
        expect(get: '/organizations/1/edit').to route_to('donatable/organizations#edit', id: '1')
      end

      it 'routes to #create' do
        expect(post: '/organizations').to route_to('donatable/organizations#create')
      end

      it 'routes to #update via PUT' do
        expect(put: '/organizations/1').to route_to('donatable/organizations#update', id: '1')
      end

      it 'routes to #update via PATCH' do
        expect(patch: '/organizations/1').to route_to('donatable/organizations#update', id: '1')
      end

      it 'routes to #destroy' do
        expect(delete: '/organizations/1').to route_to('donatable/organizations#destroy', id: '1')
      end

    end
  end
end
