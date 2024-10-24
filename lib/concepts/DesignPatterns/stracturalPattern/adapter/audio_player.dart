import 'interface_media_player.dart';
import 'media_adapter.dart';

class AudioPlayer implements MediaPlayer {
  late MediaAdapter mediaAdapter;

  @override
  void play(String audioType, String fileName) {
    if (audioType == 'mp3') {
      print("Playing mp3 file: $fileName");
    } else if (audioType == 'mp4' || audioType == 'vlc') {
      mediaAdapter = MediaAdapter(audioType);
      mediaAdapter.play(audioType, fileName);
    } else {
      print("Invalid media. $audioType format not supported.");
    }
  }
}
