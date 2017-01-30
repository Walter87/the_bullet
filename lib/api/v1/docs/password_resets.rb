module Api
  module V1
    module Docs
      class PasswordResets
        # :nocov:
        include Swagger::Blocks

        swagger_path '/password_reset' do
          operation :post do
            key :summary, 'Password reset'
            key :description, 'Password reset'
            key :tags, ['password reset']
            parameter do
              key :name, :reset_token
              key :in, :formData
              key :required, true
              key :type, :string
              key :description, 'User reset token'
            end
            parameter do
              key :name, :password
              key :in, :formData
              key :required, true
              key :type, :string
              key :format, :password
              key :description, 'New user password'
            end
            parameter do
              key :name, :password_confirmation
              key :in, :formData
              key :required, true
              key :type, :string
              key :format, :password
              key :description, 'New user password confirmation'
            end
            response '200' do
              key :description, 'Success'
              schema do
                key :'$ref', :OutputSession
              end
            end
            # Reset token not found
            # Passwords are not identical
          end
        end
        # :nocov:
      end
    end
  end
end