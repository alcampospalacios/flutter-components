import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listOfIndex = [];
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

// Like an destroy on angular
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // Destroying subscription
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List view')),
        body: Stack(
          children: [_createList(), _createLoading()],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listOfIndex.length,
          itemBuilder: (BuildContext context, index) {
            int currentIndex = _listOfIndex[index];
            return FadeInImage(
                width: 500,
                height: 300,
                placeholder: AssetImage('assets/no-image.png'),
                image: NetworkImage(
                    'https://picsum.photos/500/300/?image=$currentIndex'));
          }),
    );
  }

  void _addTenElements() {
    for (int i = 1; i < 10; i++) {
      _lastItem++;
      _listOfIndex.add(_lastItem);
    }
    setState(() {});
  }

  Future<Timer> fetchData() async {
    _isLoading = true;
    final duration = new Duration(seconds: 2);

    setState(() {});

    return new Timer(duration, responseHttp);
  }

  void responseHttp() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 200,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);

    _addTenElements();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> _onRefresh() async {
    final duration = new Duration(seconds: 2);

    new Timer(duration, () {
      _listOfIndex.clear();
      _lastItem++;
      _addTenElements();
    });

    return Future.delayed(duration);
  }
}
