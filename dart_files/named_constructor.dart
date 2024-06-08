void main() {
  //! Creating Object with the help of default constructor
  Login login = Login('8281314701', '000');
  print(login.loginMethod());
  print(login.forgotPassword());

  //! Creating Object with the help of named Constructor
  Login loginForgotPassword = Login.forgortPasswordParams(mobile: '8281314701');
  print(loginForgotPassword.forgotPassword());
}

class Login {
  late final String _mobileNumber;
  late final String? _password;

  //! Normal Constructor
  Login(this._mobileNumber, this._password);

  //! Named Constructor
  Login.forgortPasswordParams({required String mobile}) : this(mobile, null);

  String loginMethod() {
    if (_mobileNumber == '8281314701' && _password == '000') {
      return 'Login Success';
    } else {
      return 'Login Failed';
    }
  }

  String forgotPassword() {
    return 'Forgot Password has been sent as a link to $_mobileNumber';
  }
}

/*

Named constructors in Dart provide a way to create multiple constructors for a class with different names and 
initialization logic. They are particularly useful when you need to create instances of a class with specific 
initial states or with different parameters.

The use of this in the named constructor Login.forgortPasswordParams is a way 
to forward the construction process to the default constructor  Login(this._mobileNumber, this._password); 
This technique is called Constructor Forwarding and it helps to avoid code duplication by reusing the 
logic defined in the default constructor. 

Login.forgortPasswordParams({required String mobile}) : this(mobile, null); 

this can can also use like below

Login.forgortPasswordParams({required String mobile}) {
     this._mobileNumber = mobile;
     this._password = null;
 }

 Thank You

 */
