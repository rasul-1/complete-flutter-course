
import 'package:rxdart/subjects.dart';
///An in-memory Store bakced by BehaviorSubject that can be used to 
///store the authen state data

class InMemoryStore <T>{

  InMemoryStore(T initial):_subject=BehaviorSubject<T>.seeded(initial);

  //BehaviorSubject that holds the data
  final BehaviorSubject<T> _subject;

  // The output stream that can be used to listen to the data
  Stream<T> get stream=>_subject.stream;

  //A synchronous getter for the current user
  T get value=>_subject.value;
  
  // A setter for updating the value
  set value (T value)=>_subject.add(value);
  
  //Don't forget to close it
  void close()=>_subject.close();

}