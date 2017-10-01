require_dependency 'donatable/application_controller'

module Donatable
  class OrganizationsController < ApplicationController
    before_action :set_organization, only: [:show, :edit, :update, :destroy]
    before_action :auth, only: [:new, :create, :edit, :update, :destroy]

    # GET /organizations
    def index
      if params[:search]
        @organizations = Organization.public_search(params[:search]).paginate(:page => params[:page])

      elsif params[:tag]
        sql = """SELECT taggable_id FROM taggings
                 WHERE taggable_type='Donatable::Organization'
                 AND tag_id IN (SELECT id FROM tags WHERE name='#{params[:tag]}');
              """
        org_ids = []
        ActiveRecord::Base.connection.select_all(sql).each do |org|
          org_ids << org['taggable_id']
        end
        @organizations = Organization.find(org_ids).paginate(:page => params[:page])
      else
        @organizations = Organization.all.paginate(:page => params[:page])
      end
    end

    # GET /organizations/1
    def show
    end

    # GET /organizations/new
    def new
      @organization = Organization.new
    end

    # GET /organizations/1/edit
    def edit
    end

    # POST /organizations
    def create
      @organization = Organization.new(organization_params)

      if @organization.save
        redirect_to @organization, notice: 'Organization was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /organizations/1
    def update
      if @organization.update(organization_params)
        redirect_to @organization, notice: 'Organization was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /organizations/1
    def destroy
      @organization.destroy
      redirect_to organizations_url, notice: 'Organization was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.friendly.find(params[:id])
    end

    def auth
      unless defined? current_user
        redirect_back(fallback_location: root_path)
        return
      end

      if current_user.nil?
        redirect_back(fallback_location: root_path)
        return
      end
    end

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.require(:organization).permit(:name, :website, :twitter, :facebook,
                                           :phone, :city, :state_or_district, :country,
                                           :banner_url, :logo_url, :short_description,
                                           :long_description, :tag_list, :email, :youtube_url,
                                           :main_image, :logo_image)
    end
  end
end
