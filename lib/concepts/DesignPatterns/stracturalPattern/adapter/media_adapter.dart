import 'adapter_media_player.dart';
import 'interface_media_player.dart';

class MediaAdapter implements MediaPlayer {
  late AdvancedMediaPlayer advancedMusicPlayer;

  MediaAdapter(String audioType) {
    if (audioType == 'mp4') {
      advancedMusicPlayer = Mp4Player();
    } else if (audioType == 'vlc') {
      advancedMusicPlayer = VlcPlayer();
    }
  }

  @override
  void play(String audioType, String fileName) {
    if (audioType == 'mp4') {
      advancedMusicPlayer.playMp4(fileName);
    } else if (audioType == 'vlc') {
      advancedMusicPlayer.playVlc(fileName);
    }
  }
}
