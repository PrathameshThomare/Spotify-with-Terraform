resource "spotify_playlist" "classic" {
    name = "Classic"
    #Adding tracks using song ID.
    tracks = ["6pFkZQ3o224K3dAR16oWAj"]
  
}

#Adding another playlist

data "spotify_search_track" "Alan_Walker" {

    artist = "Alan Walker"
  
}

resource "spotify_playlist" "Alan_Walker" {
    name = "Alan-Walker"
    tracks = [data.spotify_search_track.Alan_Walker.tracks[0].id,
    data.spotify_search_track.Alan_Walker.tracks[1].id,
    data.spotify_search_track.Alan_Walker.tracks[2].id]
  
}
