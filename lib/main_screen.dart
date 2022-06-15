import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 6,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Todo Application",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white70,
          ),
        ),
      ),
      body: Column(
        children: const [
          _ShowClock(),
          _ShowAddTask(),
        ],
      ),
    );
  }
}

class _ShowClock extends StatelessWidget {
  const _ShowClock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 20),
          Text(
            "02 : 36 PM",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 45,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "current time",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}

class _ShowAddTask extends StatelessWidget {
  const _ShowAddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 20,
            ),
          ],
        ),
        child: ListView.builder(itemBuilder: (context, index) {
          return const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            title: Text(
              '1231312131',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'qwfqwfwwf',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            trailing: Icon(
              Icons.check_circle,
              color: Colors.blueGrey,
            ),
          );
        }),
      ),
    );
  }
}
