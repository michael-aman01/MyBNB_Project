json.user do
    json.extract! @user, :id, :email, :session_token, :first_name, :last_name, :reservations,   :created_at, :updated_at
end
