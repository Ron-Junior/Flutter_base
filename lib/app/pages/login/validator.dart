import 'dart:async';

mixin Validators {
  var emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if(email.contains("@")){
        sink.add(email);
      }else{
        sink.addError("email is not valid");
      }
    }
  );

  var passwordValidator = StreamTransformer<int, int>.fromHandlers(
    handleData: (password, sink) {
      if(password > 0){
        sink.add(password);
        print(password);
      }else{
        sink.addError("senha não pode ser vasio");
      }
    }
  );
}