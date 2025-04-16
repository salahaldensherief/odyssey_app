abstract class Failure{
  final String massage;

  Failure( this.massage);
}
class ServerFailure extends Failure{
 ServerFailure(super.massage);


}