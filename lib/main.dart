import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'foo', text: 'None'),
    Quote(author: 'lok', text: 'Manno'),
    Quote(author: 'beetle', text: 'love'),
  ];

  Widget quoteTemplate(Quote quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              )
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800]
              )
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((q) => quoteTemplate(q)).toList(),
      ),
    );
  }
}
