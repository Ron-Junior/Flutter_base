import 'dart:async';

mixin Validators {
  var emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if(email.contains("@")){
        sink.add(email);
      }else{
        sink.addError("E-mail não é válido");
      }
    }
  );

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if(password.isEmpty){
        sink.add(password);
        print(password);
      }else{
        sink.addError("A senha não pode ser vazia");
      }
    }
  );
}