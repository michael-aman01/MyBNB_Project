class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection
    rescue_from StandardError, with: :unhandled_error
    rescue_from ActionController::InvalidAuthenticityToken, with: :invalid_authenticity_token
  
    protect_from_forgery with: :exception
    before_action :snake_case_params, :attach_authenticity_token

    def current_user
        current_user ||= User.find_by(session_token: session[:session_token])
    end

      
      def login!(user)
        user.last_login = Time.now
        user.save
        session_token = user.reset_session_token!
        session[:session_token] = session_token
        
        return user
      end
      
      def logout!
        # reset the `current_user`'s session cookie, if one exists
        # clear out token from `session` cookie
        current_user.reset_session_token! if current_user
        session[:session_token] = nil
        @current_user = nil # so that subsequent calls to `current_user` return nil
      end
      
      def require_logged_in
        unless current_user
          render json: { message: 'Unauthorized' }, status: :unauthorized 
        end
      end

      def test
        if params.has_key?(:login)
          login!(User.first)
        elsif params.has_key?(:logout)
          logout!
        end
      
        if current_user
          render json: { user: current_user.slice('id', 'username', 'session_token') }
        else
          render json: ['No current user']
        end
    end
    
    def attach_authenticity_token
      headers['X-CSRF-Token'] = masked_authenticity_token(session)
    end

    private

    def snake_case_params
        params.deep_transform_keys!(&:underscore)
    end


    def invalid_authenticity_token
      render json: { message: 'Invalid authenticity token' }, 
        status: :unprocessable_entity
    end
    
    def unhandled_error(error)
      if request.accepts.first.html?
        raise error
      else
        @message = "#{error.class} - #{error.message}"
        @stack = Rails::BacktraceCleaner.new.clean(error.backtrace)
        render 'api/errors/internal_server_error', status: :internal_server_error
        
        logger.error "\n#{@message}:\n\t#{@stack.join("\n\t")}\n"
      end
    end

end
