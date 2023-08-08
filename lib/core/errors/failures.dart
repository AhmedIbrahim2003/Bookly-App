abstract class Failuer{
  final String errorMessage;

  Failuer(this.errorMessage);
}

class ServerFaliuer extends Failuer{
  ServerFaliuer(super.errorMessage);
  
}