json.user do
    json.extract! @user, :id, :email, :session_token, :reservations,   :created_at, :updated_at
end
