import 'package:flutter/material.dart';
import 'package:my_app_lsb/search/searchResults.dart';

import '../screens/alertDialogItem.dart';

class SenhaSearchDelegate extends SearchDelegate<AlertDialogItem> {
  final List<AlertDialogItem> items;
  SenhaSearchDelegate({required this.items});
  String get searchFieldLabel => 'Buscar seña';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(
              context,
              AlertDialogItem(
                nombre: 'hola',
                imagen: 'assets/ok.png',
              ));
        },
        icon: const Icon(Icons.arrow_back_ios_new_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = items
        .where(
            (item) => item.nombre.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: results.length,
      itemBuilder: (BuildContext context, int index) {
        final item = results[index];
        return ListTile(
          leading: Image.asset(item.imagen),
          title: Text(item.nombre),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(item.nombre),
                  content: Image.asset(item.imagen, fit: BoxFit.fill),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = items
        .where(
            (item) => item.nombre.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        final item = suggestions[index];
        return ListTile(
          title: Text(item.nombre),
          onTap: () {
            query = item.nombre;
          },
        );
      },
    );
  }
}
