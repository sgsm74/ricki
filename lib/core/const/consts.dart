class ServerPaths {
  static String baseUrl = 'https://rickandmortyapi.com/api';

  static String characters = '$baseUrl/character';
  static String getCharacter(int id) => '$baseUrl/character/$id';
  static String getCharacters(List<int> ids) => '$baseUrl/character/$ids';
  static String filterCharacter = '$baseUrl/character/';

  static String locations = '$baseUrl/location';
  static String getLocation(int id) => '$baseUrl/location/$id';
  static String getLocations(List<int> ids) => '$baseUrl/location/$ids';
  static String filterLocation = '$baseUrl/location/';

  static String episodes = '$baseUrl/episode';
  static String getEpisode(int id) => '$baseUrl/episode/$id';
  static String getEpisodes(List<int> ids) => '$baseUrl/episode/$ids';
  static String filterEpisode = '$baseUrl/episode/';
}
