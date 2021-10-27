import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color(0xffF3F3F3),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            'Message',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 12),
        width: _screenWidth,
        height: _screenHeight,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: CircleAvatar(
                  radius: 75.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage: AssetImage('assets/images/message.png'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Sharmik Thwick',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: const Color(0xFF778899),
                    backgroundImage: AssetImage('assets/images/message.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.only(bottom: 10),
                        height: 40,
                        width: 183,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Hello i  am sharmik',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'this is my contact number please call me',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: ListTile(
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              autocorrect: true,
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              // controller: textEditingController,
              // focusNode: focusNode,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Write your message',
              ),
            ),
          ),
          trailing: Container(
            // padding: EdgeInsets.only(top: 1),
            height: 52,
            width: 56,
            decoration: BoxDecoration(
              color: Color(0xff255AC4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: Icon(
                Icons.send_sharp,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                // postComment();
                // textEditingController.clear();
                // focusNode.unfocus();
              },
            ),
          ),
        ),
      ),
    );
  }
}
