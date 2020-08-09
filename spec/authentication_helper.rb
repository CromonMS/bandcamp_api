module AuthenticationHelper
  CLIENT_SECRET = 'BQBj_AiSFlKCkNIMbCWEYjuJLl6n76QmVsHU6MGDgTUBLZqNiKZ4ALs6Kvm6ulbsW9O81JDdIHyXBndXyhUOxg'

  def authenticate_client
    client_id = '29'
    client_secret = 'CuBFGlv2DGUrAJr%2BrTAcKMcwv9Se0lK4fBxxvM0pusU3D'
    VCR.use_cassette('authenticate:client') do
      RBandcamp.authenticate(client_id, client_secret)
    end
  end
end
