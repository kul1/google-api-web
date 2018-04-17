require 'google/api_client/client_secrets'

describe Google::APIClient::ClientSecrets do

	describe '::new' do
		let(:client_id) do
			Google::Auth::ClientId.new(ENV['GOOGLE_CLIENT_ID'],ENV['GOOGLE_CLIENT_SECRET']).client
			Google::Auth::Stores::RedisTokenStore.new(redis: Redis.new)
		end
		
		context 'without option' do
			subject { google::APIClient::ClientSecrets.new(data) }

			describe 'existance of instannce variables' do
				it '@access_token' do
					expect(subject).to respond_to(:access_token)
				end
			end
		end

	end
end
