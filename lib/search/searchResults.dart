class SearchResult {
  final String title;
  final String description;
  final String imagePath;

  SearchResult({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final List<SearchResult> searchResults = [
    SearchResult(
      title: 'Opción 1',
      description: 'Descripción de la opción 1',
      imagePath: 'assets/buenosDias.gif',
    ),
    SearchResult(
      title: 'Opción 2',
      description: 'Descripción de la opción 2',
      imagePath: 'assets/buenasTardes.gif',
    ),
    SearchResult(
      title: 'Opción 3',
      description: 'Descripción de la opción 3',
      imagePath: 'assets/familia.gif',
    ),
  ];
}
