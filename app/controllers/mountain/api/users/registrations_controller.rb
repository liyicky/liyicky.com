class Mountain::Api::Users::RegistrationsController < Devise::RegistrationsController
    skip_forgery_protection
    respond_to :json

    private

    def response_with(resource, _opts = {})
        register_sucess && return if resource.persisted?

        register_failed
    end

    def register_success
        render json: {
            message: "Signed up sucessfully.",
            user: current_user
        }, status: :ok
    end

    def register_failed
        render json: { message: "Something went wrong." }, status: :unprocessable_entity
    end
end