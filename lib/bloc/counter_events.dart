import 'package:equatable/equatable.dart';
abstract class CounterEvents extends Equatable{

  const CounterEvents();

  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class Increment extends CounterEvents{}
class Decrement extends CounterEvents{}