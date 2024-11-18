List<String> mediaPlayers = [
  "VLC Media Player",
  "Windows Media Player",
  "QuickTime Player",
  "iTunes",
  "KMPlayer",
  "RealPlayer",
  "MX Player",
  "GOM Player",
  "MediaMonkey",
  "DivX Player",
  "PotPlayer",
  "AllPlayer",
  "Kodi",
  "Winamp",
  "AIMP",
  "Plex",
  "Spotify",
  "YouTube Music",
  "Apple Music",
  "Amazon Music",
];
List<AudioFile> audioList = [
  AudioFile(
    "name",
    "https://www.pagalworld.com.sb/files/download/type/320/id/71866/1.mp3?1",
  ),
  AudioFile(
    "name",
    "https://www.pagalworld.com.sb/files/download/type/320/id/72578/1.mp3?1",
  ),
  AudioFile(
    "name",
    "https://www.pagalworld.com.sb/files/download/type/320/id/71866/1.mp3?1",
  ),
  AudioFile(
    "name",
    "https://www.pagalworld.com.sb/files/download/type/320/id/71866/1.mp3?1",
  ),
];

class AudioFile {
  String? name;
  String path;

  AudioFile(this.name, this.path);
}