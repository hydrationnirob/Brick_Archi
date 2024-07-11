
abstract class BaseApiAbstract {

  Future<dynamic> get(String url, String token); // get method to fetch data from the server
  Future<dynamic> post(String url, dynamic data, String token); // post method to send data to the server
  Future<dynamic> put(String url, dynamic data, String token); // put method to update data on the server
  Future<dynamic> delete(String url, String token); // delete method to delete data on the server
}