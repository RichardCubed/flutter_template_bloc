import 'dart:core';
import 'package:BLOC/components/c3_list_tile.dart';
import 'package:flutter/material.dart';

import 'package:BLOC/models/document_model.dart';
import 'package:BLOC/screens/documents/state.dart';
import 'package:BLOC/screens/documents/bloc.dart';
import 'package:BLOC/components/c3_bottom_navigation_bar.dart';

/*
 *  Holds the state for our stateful widget
 */
class DocumentsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

/*
 *  Renders a screen containing a list of document models
 */
class _State extends State<DocumentsView> {
  Bloc _bloc;

  /*
   *  Override the initState to create our BLOC class and request some data from the
   *  API.
   */
  @override
  void initState() {
    _bloc = Bloc();
    _bloc.getDocuments();
    super.initState();
  }

  /*
   *  The build function is effectively a simple state machine. The data and state 
   *  are streamed to the widget from its associated BLOC backing class.
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
      ),
      body: StreamBuilder<BlocState>(
        stream: _bloc.state,
        initialData: InitState(),
        builder: (context, snapshot) {
          if (snapshot.data is InitState) {
            return renderInitial();
          }
          if (snapshot.data is DataState) {
            DataState state = snapshot.data;
            return renderContent(state.invoices);
          }
          if (snapshot.data is LoadingState) {
            return renderLoading();
          }
          return null;
        },
      ),
      bottomNavigationBar: C3BottomNavigationBar(1),
    );
  }

  /*
   *  Renders the widget in its initial empty state.
   */
  Widget renderInitial() {
    return Center(
      child: const Text('Initial state'),
    );
  }

  /*
   *  Renders during loading.
   */
  Widget renderLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  /*
   *  Renders the widget once we actually have something to display. In our case
   *  a list of documents, the result of an API call via the the BLOC backing
   *  class.  
   */
  Widget renderContent(List<DocumentModel> invoices) {
     return ListView.builder(
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return C3ListTile(
            invoices[index].name, invoices[index].description);
      },
      itemCount: invoices.length,
    );
  }

  /*
   *  We need to make sure we dispose to clean up and close any streams we've
   *  opened.  Failure to do this will lead to memory leaks and other strange
   *  behaviours.
   */
  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
