import 'audio_player.dart';

void main() {
  AudioPlayer audioPlayer = AudioPlayer();

  audioPlayer.play('mp3', 'song.mp3'); // Plays mp3
  audioPlayer.play('mp4', 'video.mp4'); // Plays mp4 via adapter
  audioPlayer.play('vlc', 'movie.vlc'); // Plays vlc via adapter
  audioPlayer.play('avi', 'movie.avi'); // Unsupported format
}
