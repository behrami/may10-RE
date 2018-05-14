require 'httparty'

def password

	response = HTTParty.get('https://makemeapassword.org/api/v1/alphanumeric/json?c=10&l=12')

	parsed_response = JSON.parse(response.body)
	password_list = []

	parsed_response['pws'].each do |password|
		password_list.push(password)
	end

	return password_list

end

puts password
