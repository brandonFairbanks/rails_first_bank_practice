class ProfilesController < ApplicationController
    before_action :set_account
    before_action :set_profile, only: [:show, :edit, :update, :destroy]

    def index
        @profiles = current_user.profile
    end

    def show
    end

    def new
        @profile = @account.profiles.new
        render partial: 'form'
    end

    def edit
        render partial: 'form'
    end

    def create 
        @profile = @account.profiles.new(profile_params)

        if @profile.save
            redirect_to [@account, @profile]
        else
            render :edit
        end
    end

    def update
        if @profile.update(profile_params)
            redirect_to [@account, @profile]
        else
            render :edit
        end
    end

    def destroy
        @profile.destroy
        redirect_to account_profiles_path
    end

    private
    def set_account 
        @account = Account.find(params[:account_id])
    end

    def set_profile
        @profile = Profile.find(params[:id])
    end

    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :email)
    end
end