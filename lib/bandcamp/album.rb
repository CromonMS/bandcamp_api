require 'bandcamp/associated'
require 'bandcamp/methodical'

module Bandcamp
  class Album

    include Methodical
    include Associated

    def initialize album_hash
      to_methods album_hash
    end

    def band
      retrieve_associated :band
    end

  end
end
