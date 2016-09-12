Given(/^I set header key "(.*?)" and value "(.*?)"$/) do |key, value|
    @headers = {} if @headers.nil?
    p_value = value
    @grabbed.each { |k, v| p_value = v if value == %/{#{k}}/ } unless @grabbed.nil?
    p_value = File.new %-#{Dir.pwd}/#{p_value.sub 'file://', ''}- if %/#{p_value}/.start_with? "file://"
    @headers[%/#{key}/] = p_value
end

Then(/^I dump the JSON response$/) do
    puts @response.to_s
end

Then(/^I dump the pretty JSON response$/) do
    puts @response.to_json_s
end
