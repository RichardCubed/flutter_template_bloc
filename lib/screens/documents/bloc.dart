import 'dart:async';

import 'package:BLOC/screens/documents/repository.dart';
import 'package:BLOC/screens/documents/state.dart';

/*
 *  A simple implementation of BLOC, Google's recommended approach to state management in Flutter.  
 *  It's essentially a backing object for a stateful widget that encapsulates both the state of the
 *  widget and any associated data.
 * 
 *  Changes in state and data are passed to the widget via RxDart streams, making our widget 
 *  "reactive".  This leads to a nice seperation of concerns.  Data and state in the BLOC
 *  object, layout and rendering in the widget.
 */
class Bloc {
  /*
   *  Every BLOC class has a corresponding respository for fetching and updating data from
   *  our APIs.
   */
  final Repository _repository = new Repository();

  /*
   *  The BLOC object passes data to out widget via RxDart streams.
   */
  final _streamController = StreamController<BlocState>();
  Stream<BlocState> get state => _streamController.stream;

  /*
   *  Wraps a call to the repository to fetch a list of documents before passing them 
   *  to the view for rendering.
   */
  void getDocuments() {
    _streamController.sink.add(
      BlocState.loading(),
    );
    _repository.getDocuments().then(
      (invoices) {
        _streamController.sink.add(
          BlocState.data(invoices),
        );
      }
    );
  }

  /*
   *  We need to make sure we close any streams we've opened.  Failure to do this will lead
   *  to memory leaks and other strange behaviours.
   */
  void dispose() {
    _streamController.close();
  }
}
