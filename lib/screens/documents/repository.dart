import 'package:BLOC/models/document_model.dart';

class Repository {
  /*
   *  Returns a list of document objects.  This is where you'd normally
   *  make an asyncn API request but for now we'll just return dummy data. 
   */
  Future<List<DocumentModel>> getDocuments() async {
    var invoices = new List<DocumentModel>();
    invoices.add(new DocumentModel.from("1", "Document 1", "Description", "Created date"));
    invoices.add(new DocumentModel.from("2", "Document 2", "Description", "Created date"));
    invoices.add(new DocumentModel.from("3", "Document 3", "Description", "Created date"));
    invoices.add(new DocumentModel.from("4", "Document 4", "Description", "Created date"));
    invoices.add(new DocumentModel.from("5", "Document 5", "Description", "Created date"));
    return invoices;
  }
}
