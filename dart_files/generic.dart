//How to setup a generic class and fuction.

void main() async {
  Response<TokenGeneration> res = await makeApiCall<TokenGeneration>();
  print("Token: ${res.response.token}");
  print("Code: ${res.code}");
}

//! Api Call (StandAlone Function or Function Inside a Class)
Future<Response<T>> makeApiCall<T>() async {
  // API Call Here..
  TokenGeneration tokenData = TokenGeneration(token: "123456"); // Pack The Response
  Response<T> response = Response<T>(response: tokenData as T, code: "200");
  return response;
}

class Response<T> {
  final T response;
  final String code;
  Response({required this.response, required this.code});
}

class TokenGeneration {
  final String token;
  TokenGeneration({required this.token});
}

//! OutPut
// Token: 123456
// Code: 200
