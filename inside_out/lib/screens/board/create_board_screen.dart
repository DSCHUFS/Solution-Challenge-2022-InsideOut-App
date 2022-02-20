import 'package:flutter/material.dart';
import 'package:inside_out/widgets/custom_elevated_button.dart';

class CreateBoard extends StatefulWidget {
  const CreateBoard({Key? key}) : super(key: key);

  @override
  CreateBoardState createState() => CreateBoardState();
}

class CreateBoardState extends State<CreateBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }

  Widget _buildContent(BuildContext context) {
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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/new_post.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: ' Title',
                            hintStyle: TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 25,
                              fontFamily: "SeoulNamsan",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: TextField(
                          maxLines: null,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Write a Post',
                            hintStyle: TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 17,
                              fontFamily: "SeoulNamsan",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Spacer(
                            flex: 8,
                          ),
                          SizedBox(
                            width: 93,
                            child: CustomElevatedButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Post",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: "SeoulNamsan",
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.send,
                                      color: Color(0xFFCBA6BD),
                                    )
                                  ],
                                ),
                                color: Color(0xFFFFEAC1),
                                borderRadius: 10,
                                onPressed: () {
                                  print("Post");
                                },
                                height: 40),
                          ),
                          Spacer(
                            flex: 1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
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
}
