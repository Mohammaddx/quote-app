import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text: 'Fuck me plz 1', author: 'oday sabe'),
    Quote(text: 'Fuck me plz 2', author: 'oday sabe'),
    Quote(text: 'Fuck me plz 3', author: 'oday sabe')
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((q) => QuoteCard(
          quote: q,
          delete: ()=> setState( () => quotes.remove(q)),
        )).toList(),
      ),
    );
  }
}

