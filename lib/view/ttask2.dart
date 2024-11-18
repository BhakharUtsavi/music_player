import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class TTask2 extends StatefulWidget {
  const TTask2({super.key});

  @override
  State<TTask2> createState() => _TTask2State();
}

class _TTask2State extends State<TTask2> {

  final AssetsAudioPlayer _audioPlayer = AssetsAudioPlayer();

  bool _isPlaying = false;
  int _sleepDurationInMinutes = 0;
  late Duration _sleepDuration;
  late Future _sleepTimerFuture;

  final List<int> _presetDurations = [15, 30, 60];

  void _playAudio() async {
    await _audioPlayer.open(
      Audio.network('https://pagal-world.com.in/files/download/id/996'),
      autoStart: true,
      showNotification: true,
    );
    setState(() {
      _isPlaying = true;
    });
  }

  void _stopAudio() async {
    await _audioPlayer.stop();
    setState(() {
      _isPlaying = false;
    });
  }

  void _startSleepTimer() {
    _sleepDuration = Duration(minutes: _sleepDurationInMinutes);
    _sleepTimerFuture = Future.delayed(_sleepDuration, () {
      _stopAudio();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Audio playback stopped after $_sleepDurationInMinutes minutes')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _isPlaying ? _stopAudio : _playAudio,
              child: Text(_isPlaying ? 'Stop Audio' : 'Play Audio'),
            ),
            SizedBox(height: 20),
            Text('Select Sleep Timer:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _presetDurations.map((duration) {
                return ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _sleepDurationInMinutes = duration;
                    });
                  },
                  child: Text('$duration min'),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (_sleepDurationInMinutes > 0 && !_isPlaying)
                  ? _startSleepTimer
                  : null,
              child: Text('Start Sleep Timer'),
            ),
            SizedBox(height: 20),

            Text(
              'Selected Timer: $_sleepDurationInMinutes minutes',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
