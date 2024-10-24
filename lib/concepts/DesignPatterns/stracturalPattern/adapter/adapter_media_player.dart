abstract class AdvancedMediaPlayer {
  void playMp4(String fileName);
  void playVlc(String fileName);
}

class Mp4Player implements AdvancedMediaPlayer {
  @override
  void playMp4(String fileName) {
    print("Playing mp4 file: $fileName");
  }

  @override
  void playVlc(String fileName) {
    // Do nothing
  }
}

class VlcPlayer implements AdvancedMediaPlayer {
  @override
  void playVlc(String fileName) {
    print("Playing vlc file: $fileName");
  }

  @override
  void playMp4(String fileName) {
    // Do nothing
  }
}
