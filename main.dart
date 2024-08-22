import 'dart:math'; // Importing the math library (currently not used, can be removed if not needed)

// Song class represents a single song
class Song {
  String title; // Title of the song
  String artist; // Artist of the song
  double duration; // Duration of the song in minutes

  // Constructor to initialize the song
  Song(this.title, this.artist, this.duration);

  // Overriding the toString method to provide a custom string representation of a Song object
  @override
  String toString() {
    return '$title by $artist (${duration.toStringAsFixed(2)} mins)'; // Formats the duration to 2 decimal places
  }
}

// Playlist class represents a collection of songs
class Playlist {
  String name; // Name of the playlist
  List<Song> songs; // List of songs in the playlist

  // Constructor to initialize the playlist with a name
  Playlist(this.name) : songs = []; // Initializes an empty list of songs

  // Method to add a song to the playlist
  void addSong(Song song) {
    songs.add(song); // Adds a song to the list of songs
  }

  // Method to remove a song from the playlist
  void removeSong(Song song) {
    songs.remove(song); // Removes a song from the list of songs
  }

  // Method to calculate the total duration of all songs in the playlist
  double totalDuration() {
    // Uses fold to sum up the durations of all songs in the playlist
    return songs.fold(0, (total, song) => total + song.duration);
  }

  // Overriding the toString method to provide a custom string representation of a Playlist object
  @override
  String toString() {
    // Joins all song details into a single string
    return 'Playlist: $name\n' + songs.map((song) => song.toString()).join('\n');
  }
}

// MusicFestival class represents a collection of playlists (stages)
class MusicFestival {
  String name; // Name of the festival
  List<Playlist> playlists; // List of playlists (stages) in the festival

  // Constructor to initialize the festival with a name
  MusicFestival(this.name) : playlists = []; // Initializes an empty list of playlists

  // Method to add a playlist to the festival
  void addPlaylist(Playlist playlist) {
    playlists.add(playlist); // Adds a playlist to the list of playlists
  }

  // Method to remove a playlist from the festival
  void removePlaylist(Playlist playlist) {
    playlists.remove(playlist); // Removes a playlist from the list of playlists
  }

  // Method to display details of the festival
  void showFestivalDetails() {
    print('🎶 Music Festival: $name 🎶'); // Prints the name of the festival
    // Loops through each playlist and prints its details
    playlists.forEach((playlist) {
      print('\n$playlist'); // Prints the playlist details using the overridden toString method
      print('Total Duration: ${playlist.totalDuration().toStringAsFixed(2)} mins'); // Prints the total duration of the playlist
    });
  }
}

// Main function is the entry point of the program
void main() {
  print('Welcome to the Music Festival Playlist Manager!');

  // Create songs for Stage 1: The Script
  Song song1 = Song('The Man Who Can’t Be Moved', 'The Script', 4.02);
  Song song2 = Song('Breakeven', 'The Script', 4.21);
  Song song3 = Song('For The First Time', 'The Script', 4.12);
  Song song4 = Song('Hall of Fame', 'The Script', 3.23);
  Song song5 = Song('Superheroes', 'The Script', 3.59);

  // Create songs for Stage 2: Coldplay
  Song song6 = Song('Fix You', 'Coldplay', 4.55);
  Song song7 = Song('Yellow', 'Coldplay', 4.29);
  Song song8 = Song('The Scientist', 'Coldplay', 5.09);
  Song song9 = Song('Viva La Vida', 'Coldplay', 4.02);
  Song song10 = Song('Paradise', 'Coldplay', 4.38);

  // Create songs for Stage 3: Rivermaya
  Song song11 = Song('Liwanag Sa Dilim', 'Rivermaya', 4.48);
  Song song12 = Song('214', 'Rivermaya', 5.04);
  Song song13 = Song('Elesi', 'Rivermaya', 4.26);
  Song song14 = Song('Awit ng Kabataan', 'Rivermaya', 4.27);
  Song song15 = Song('Himala', 'Rivermaya', 4.24);

  // Create playlists (stages) and add songs to each stage
  Playlist stage1 = Playlist('Stage 1: The Script Hits');
  stage1.addSong(song1);
  stage1.addSong(song2);
  stage1.addSong(song3);
  stage1.addSong(song4);
  stage1.addSong(song5);

  Playlist stage2 = Playlist('Stage 2: Coldplay Classics');
  stage2.addSong(song6);
  stage2.addSong(song7);
  stage2.addSong(song8);
  stage2.addSong(song9);
  stage2.addSong(song10);

  Playlist stage3 = Playlist('Stage 3: Rivermaya Anthems');
  stage3.addSong(song11);
  stage3.addSong(song12);
  stage3.addSong(song13);
  stage3.addSong(song14);
  stage3.addSong(song15);

  // Create a music festival and add the stages (playlists)
  MusicFestival festival = MusicFestival('Summer Beats Festival');
  festival.addPlaylist(stage1);
  festival.addPlaylist(stage2);
  festival.addPlaylist(stage3);

  // Display festival details and demonstrate the methods
  festival.showFestivalDetails(); // Displays the details of each stage in the festival
}
