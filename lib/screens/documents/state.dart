import 'package:BLOC/models/document_model.dart';

/*
 *  Encapsulates data and state.  Instances of this class are passed to the 
 *  widget via its associated BLOC class.
 */

class BlocState {
  BlocState();
  factory BlocState.data(List<DocumentModel> invoices) = DataState;
  factory BlocState.loading() = LoadingState;
}

/*
 *  Passed to the widget on creation.  Used to render the empty state.
 */
class InitState extends BlocState {}

/*
 *  Passed to the widget during a async call to the backend API.  Used
 *  to trigger the loading spinner.
 */
class LoadingState extends BlocState {}

/*
 *  Passed to the widget once we have something to display.  Usually as the 
 *  result of a successful API call.  
 */
class DataState extends BlocState {
  final List<DocumentModel> invoices;
  DataState(this.invoices);
}