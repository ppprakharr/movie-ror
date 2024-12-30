class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile, only: [:edit, :update]

    def update
    end


    private
    def set_profile
        @profile = current_user.profile
    end
end