import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle title = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                margin: EdgeInsets.only(
                  top: 60,
                ),
                child: CircleAvatar(
                  backgroundImage: Image.asset("assets/images/img2.jpg").image,
                  radius: 32,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 20, color: Colors.teal[300]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    margin: EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email", style: title),
                        TextField(
                          style: title.copyWith(
                              fontSize: 17, fontWeight: FontWeight.bold),
                          cursorHeight: 22,
                          decoration: InputDecoration(
                              hintText: "Enter your email",
                              hintStyle: title.copyWith(
                                  fontSize: 14, color: Colors.black12),
                              border: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white24))),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Text("Password", style: title),
                        TextField(
                          style: title.copyWith(
                              fontSize: 17, fontWeight: FontWeight.bold),
                          cursorHeight: 22,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: title.copyWith(
                                fontSize: 14, color: Colors.black12),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white24)),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: Text(
                            "Forget Password?",
                            style: title.copyWith(
                                fontSize: 16, color: Colors.black12),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  letterSpacing: 1.2),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                              child: Text(
                            "OR",
                            style: title.copyWith(
                                color: Colors.black26, fontSize: 16),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SNS(image: "facebook.png"),
                              SizedBox(
                                width: 16,
                              ),
                              SNS(
                                image: "twitter.jpg",
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SNS(image: "instagram.jpg")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SNS extends StatelessWidget {
  final image;
  const SNS({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                "assets/images/$image",
              ),
              fit: BoxFit.cover),
          shape: BoxShape.circle),
    );
  }
}
