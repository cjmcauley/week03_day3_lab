require('pry')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Sia'
  })

  artist1.save()

  album1 = Album.new({
    'title' => '1000 Forms of Fear',
    'genre' => 'pop',
    'artist_id' => artist1.id
    })

    album2 = Album.new({
      'title' => 'This is Acting',
      'genre' => 'pop',
      'artist_id' => artist1.id
      })

      album1.save()
      album2.save()

      binding.pry
      nil
