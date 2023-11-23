import 'package:flutter/material.dart';

void main() {
  runApp(const Index());
}

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  final List<String> newTestamentBooks = [
    'Matthew', 'Mark', 'Luke', 'John', 'Acts', 'Romans', '1 Corinthians',
    '2 Corinthians', 'Galatians', 'Ephesians', 'Philippians', 'Colossians',
    '1 Thessalonians', '2 Thessalonians', '1 Timothy', '2 Timothy', 'Titus',
    'Philemon', 'Hebrews', 'James', '1 Peter', '2 Peter', '1 John', '2 John',
    '3 John', 'Jude', 'Revelation'
  ];

  final List<String> oldTestamentBooks = [
    'Genesis', 'Exodus', 'Leviticus', 'Numbers', 'Deuteronomy', 'Joshua',
    'Judges', 'Ruth', '1 Samuel', '2 Samuel', '1 Kings', '2 Kings', '1 Chronicles',
    '2 Chronicles', 'Ezra', 'Nehemiah', 'Esther', 'Job', 'Psalms', 'Proverbs',
    'Ecclesiastes', 'Song of Solomon', 'Isaiah', 'Jeremiah', 'Lamentations',
    'Ezekiel', 'Daniel', 'Hosea', 'Joel', 'Amos', 'Obadiah', 'Jonah', 'Micah',
    'Nahum', 'Habakkuk', 'Zephaniah', 'Haggai', 'Zechariah', 'Malachi'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  List<String> getBooksForTestament(String testament) {
    if (testament == 'Old Testament') {
      return oldTestamentBooks;
    } else if (testament == 'New Testament') {
      return newTestamentBooks;
    } else {
      return [];
    }
  }

  List<String> getFilteredBooks(String searchTerm, List<String> books) {
    return books.where((book) => book.toLowerCase().contains(searchTerm.toLowerCase())).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_getAppBarTitle(_tabController.index)),
          centerTitle: true,
          backgroundColor: Colors.blue,
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Books'),
              Tab(text: 'Chapters'),
              Tab(text: 'Verses'),
            ],
          ),
        ),
        backgroundColor: Colors.brown,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  fillColor: Colors.white,
                  filled: true,
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: _tabController.index == 0
                        ? ListView.builder(
                      itemCount: getFilteredBooks(_searchController.text, getBooksForTestament('Old Testament')).length,
                      itemBuilder: (context, index) {
                        final book =
                        getFilteredBooks(_searchController.text, getBooksForTestament('Old Testament'))[index];
                        return ListTile(
                          title: Text(
                            book,
                            style: const TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            _tabController.animateTo(0);
                          },
                        );
                      },
                    )
                        : const SizedBox(),
                  ),
                  Center(
                    child: _tabController.index == 0
                        ? ListView.builder(
                      itemCount: getBooksForTestament('Old Testament').length,
                      itemBuilder: (context, index) {
                        final book =
                        getBooksForTestament('Old Testament')[index];
                        const chapters = 'Replace with actual data';

                        return ListTile(
                          title: Text(
                            '$book: $chapters',
                            style: const TextStyle(color: Colors.white),
                          ),
                          onTap: (){
                            _tabController.animateTo(0);
                          },
                        );
                      },
                    )
                        : const SizedBox(),
                  ),
                  Center(
                    child: _tabController.index == 2
                        ? ListView.builder(
                      itemCount: getBooksForTestament('Old Testament').length,
                      itemBuilder: (context, index) {
                        final book =
                        getBooksForTestament('Old Testament')[index];
                        const verses = 'Replace with actual data';

                        return ListTile(
                          title: Text(
                            '$book: $verses',
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      },
                    )
                        : const SizedBox(),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildBottomBarButton('Old Testament'),
                _buildBottomBarButton('New Testament'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBarButton(String testament) {
    return MaterialButton(
      minWidth: 30,
      onPressed: () {
        _switchToTestament(testament);
      },
      child: Text(
        testament,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }

  void _switchToTestament(String testament) {
    if (testament == 'New Testament') {
      _tabController.animateTo(0);
    } else if (testament == 'Old Testament') {
      _tabController.animateTo(0);
    }
  }

  String _getAppBarTitle(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return 'Books';
      case 1:
        return 'Chapters';
      case 2:
        return 'Verses';
      default:
        return '';
    }
  }
}