import 'dart:core';

/*
 *  A simple DTO object that encapsulates the properties of a document.  Documents are fetched from our
 *  backend API, deserialised, stored and rendered in our widgets.
 */
class DocumentModel {
  String id;
  String name;
  String description;
  String created;

  /*
   *  An empty constructor.
  */
  DocumentModel();

  /*
   *  Creates a new document via a factory method and supplied paramaters.
   */
  DocumentModel.from(this.id, this.name, this.description, this.created);

  /*
   *  Creates a new document from a parsed JSON object. Dart doesn't support reflection at runtime
   *  so you effectively need to map the properties to the object yourself.
   */
  factory DocumentModel.fromJson(Map<String, dynamic> parsedJson) {
    return DocumentModel.from(
      parsedJson['id'],
      parsedJson['name'],
      parsedJson['description'],
      parsedJson['created'],
    );
  }
}
