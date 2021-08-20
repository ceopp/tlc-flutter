class ApiPath {
  const ApiPath._();

  static const _serverAddress = '45.90.34.23';

  static const baseUrl = 'http://$_serverAddress:8000/stuff_api/v1/';
  static const restaurants = 'restaurants/';

  static String getRestaurantById(int id) => 'restaurants/$id/';
}
