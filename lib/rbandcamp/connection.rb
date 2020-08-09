require 'addressable'
require 'base64'
require 'json'
require 'restclient'

module RBandcamp
  class MissingAuthentication < StandardError; end

  API_URI       = 'https://bandcamp.com/api/'
  AUTHORIZE_URI = 'https://bandcamp.com/oauth_token'.freeze
  TOKEN_URI     = ''
  VERBS         = %w[get post put delete].freeze 

  class << self
    attr_accessor :raw_response
    attr_reader :client_token

    # Authenticates access to restricted data. Requires {https://developer.spotify.com/my-applications user credentials}
    #
    # @param client_id [String]
    # @param client_secret [String]
    #
    # @example
    #           RBanmdcamp.authenticate("<your_client_id>", "<your_client_secret>")

    def authenticate(client_id, client_secret)
      
    end
    

  end
