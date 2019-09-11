bool validateEmail(String email){
  RegExp regExp =
    new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[A-Z0-9.-]+\.[A-Z]{2,}$");
  return regExp.hasMatch(email);
}