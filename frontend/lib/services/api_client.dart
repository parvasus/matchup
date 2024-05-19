import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiClient {
  final String baseUrl = 'http://192.168.0.11:8000/api/v1/user';

  // 회원가입
  Future<void> signup(String email, String password, String nickname, DateTime birth, String gender) async {
    var response = await http.post(
      Uri.parse('$baseUrl/signup'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {
        'email': email,
        'password': password,
        'nickname': nickname,
        'birth': birth.toIso8601String(),
        'gender': gender,
      },
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to sign up: ${response.body}');
    }
  }

  // 로그인
  Future<String> login(String email, String password) async {
    var response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {'email': email, 'password': password},
    );
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data['access_token'];
    } else {
      throw Exception('Login failed: ${response.body}');
    }
  }

  // 프로필 정보 입력
  Future<void> createProfile(Map<String, dynamic> profileData, String accessToken) async {
    var response = await http.post(
      Uri.parse('$baseUrl/profile'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $accessToken'
      },
      body: profileData,
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to create profile: ${response.body}');
    }
  }

  // 프로필 정보 조회
  Future<Map<String, dynamic>> getProfile(String accessToken) async {
    var response = await http.get(
      Uri.parse('$baseUrl/profile'),
      headers: {'Authorization': 'Bearer $accessToken'},
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to get profile: ${response.body}');
    }
  }

  // 프로필 정보 업데이트
  Future<void> updateProfile(Map<String, dynamic> profileData, String accessToken) async {
    var response = await http.put(
      Uri.parse('$baseUrl/profile'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $accessToken'
      },
      body: profileData,
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to update profile: ${response.body}');
    }
  }

  // 새로운 엑세스 토큰 반환
  Future<String> refreshToken(String refreshToken) async {
    var response = await http.post(
      Uri.parse('$baseUrl/token'),
      headers: {'Authorization': 'Bearer $refreshToken'},
    );
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data['access_token'];
    } else {
      throw Exception('Failed to refresh token: ${response.body}');
    }
  }
}