import 'package:just_audio/just_audio.dart';

class AudioPlayerManager {
  final AudioPlayer player = AudioPlayer();

  Future<void> initAudioPlayer() async {
    await player.setUrl('https://radio.socialgenix.com/8004/stream');
  }

  void playAudio() {
    player.play();
  }

  void pauseAudio() {
    player.pause();
  }

  void dispose() {
    player.dispose();
  }
}
