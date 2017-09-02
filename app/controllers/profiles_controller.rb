class ProfilesController < ApplicationController
    before_action :set_account
    before_action :set_topic, only: [:show, :edit, :update]

    def index
        @profiles = @accounts.profiles
    end

    def show
    end

    def new
        @profiles = @account.profiles.new
    end

    def create 
        @profiles = @acccount.profiles.new(profile_params)

        if @profiles.save
            redirect_to [@acconunt, @profile]
        else
            render :edit
        end
    end

    private
    def set_account 
        @account = Account.find(params[:id])
    end

    def set_profile
        @profile = Profile.find(params[:id])
    end

    def profile_params
        params.require(:topic).permit(:first_name, :last_name, :email)
    end
end
