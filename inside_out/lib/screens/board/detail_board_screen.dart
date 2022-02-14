import 'package:flutter/material.dart';

class BoardDetail extends StatefulWidget {
  const BoardDetail({Key? key}) : super(key: key);

  @override
  BoardDetailState createState() => BoardDetailState();
}

class BoardDetailState extends State<BoardDetail> {
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  width: 40,
                  height: 40,
                  image: AssetImage("assets/Board.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, right: 20.0),
                child: Text(
                  'Mind Board',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'SeoulNamsan',
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: _buildContent(context),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    List data = [
      {
        'name': 'Adeleye Ayodeji',
        'pic': 'https://picsum.photos/300/30',
        'message': 'I love to code'
      },
      {
        'name': 'Biggi Man',
        'pic': 'https://picsum.photos/300/30',
        'message': 'Very cool'
      },
      {
        'name': 'Biggi Man',
        'pic': 'https://picsum.photos/300/30',
        'message': 'Very cool'
      },
      {
        'name': 'Biggi Man',
        'pic': 'https://picsum.photos/300/30',
        'message': 'Very cool'
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/post_detail.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'SeoulNamsan',
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child:
                            const Divider(color: Colors.black, thickness: 1.0),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Text(
                          'Content',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'SeoulNamsan',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Divider(
                            color: Color(0xFFB9B9B9), thickness: 1.0),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            children: [
                              for (var i = 0; i < data.length; i++)
                                ListTile(
                                  leading: Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE4DBFF),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                    ),
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/anonymous.png'),
                                    ),
                                  ),
                                  title: const Text(
                                    'Anonymous',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(data[i]['message']),
                                )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE4DBFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: TextField(
                                  maxLines: 1,
                                  textInputAction: TextInputAction.done,
                                  controller: _textController,
                                  onSubmitted: _handleSubmitted,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: ' Add Comment Here...',
                                    hintStyle: TextStyle(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 17,
                                      fontFamily: "SeoulNamsan",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.send,
                                  color: Color(0xFFD2A2EC),
                                ),
                                onPressed: () =>
                                    _handleSubmitted(_textController.text),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}
