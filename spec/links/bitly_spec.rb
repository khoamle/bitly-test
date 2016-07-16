require 'rails_helper'

describe Bitly do
  before do
    @faker_url = Faker::Internet.url
    bitly_token = Rails.application.secrets.bitly_token
    bitly_username = Rails.application.secrets.bitly_username
    @bitly = Bitly.new(bitly_username, bitly_token)
  end
  let(:bitly_url) { 'http://bit.ly/CoDE' }
  let(:invalid_url) { 'invalid url' }

  it 'should shorten url' do
    shorten_url = @bitly.shorten(@faker_url).short_url
    expect(shorten_url).to_not be_empty
    expect(shorten_url).to_not eq(@faker_url)
  end

  it 'should return exception error if given url is already bitly url' do
    expect { @bitly.shorten(bitly_url).shorten }.to raise_error(BitlyError, "ALREADY_A_BITLY_LINK - '500'")
  end

  it 'should return exception error if given url is an invalid url' do
    expect { @bitly.shorten(invalid_url).shorten }.to raise_error(BitlyError, "INVALID_URI - '500'")
  end
end
