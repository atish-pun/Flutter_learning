import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContainerHomes extends StatelessWidget {
  const ContainerHomes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.blue[800],
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light),
    );
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blue[800],
        elevation: 0.0,
        title: Text(
          "Flutter",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.grey[200]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 13, right: 13, top: 13),
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  height: MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.12),
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image.network(
                          "https://miro.medium.com/max/2400/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
                        ),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.016,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.blue[100],
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: MediaQuery.of(context).size.width * 0.287,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.033,
                      ),
                      Container(
                        color: Colors.blue[100],
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: MediaQuery.of(context).size.width * 0.287,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.033,
                      ),
                      Container(
                        color: Colors.blue[100],
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: MediaQuery.of(context).size.width * 0.287,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.033,
                      ),
                      Container(
                        color: Colors.blue[100],
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: MediaQuery.of(context).size.width * 0.287,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.033,
                      ),
                      Container(
                        color: Colors.blue[100],
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: MediaQuery.of(context).size.width * 0.287,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.016,
                ),
                Container(
                  color: Colors.blue[100],
                  height: MediaQuery.of(context).size.height * 0.148,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.016,
                ),
                Container(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Card(
                          color: Colors.blue[100],
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://media.kasperskydaily.com/wp-content/uploads/sites/37/2019/12/09175634/android-device-identifiers-featured.jpg",
                              ),
                            ),
                            title: Text(
                              "Android",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Android apps can be created"),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Card(
                          color: Colors.blue[100],
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?202106141246",
                              ),
                            ),
                            title: Text(
                              "IoS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("IoS apps can be created"),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Card(
                          color: Colors.blue[100],
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfH15owAiD1MguEsb2sSDqAlFRJq_R4g8UuQ&usqp=CAU",
                              ),
                            ),
                            title: Text(
                              "Web",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Web apps can be created"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.432,
                        child: ListTile(
                          horizontalTitleGap: 7,
                          leading: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue[50],
                            backgroundImage: NetworkImage(
                              "https://miro.medium.com/max/2400/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
                            ),
                          ),
                          title: Text(
                            "Flutter SDK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.432,
                        child: ListTile(
                          horizontalTitleGap: 7,
                          leading: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue[50],
                            backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/1609975?s=280&v=4",
                            ),
                          ),
                          title: Text(
                            "Dart SDK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.34,
                        child: ListTile(
                          horizontalTitleGap: 7,
                          leading: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue[50],
                            backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/18133?s=200&v=4",
                            ),
                          ),
                          title: Text(
                            "Git",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ListTile(
                          horizontalTitleGap: 7,
                          leading: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue[50],
                            backgroundImage: NetworkImage(
                              "https://mpng.subpng.com/20180317/ipw/kisspng-computer-icons-home-directory-clip-art-folders-png-transparent-images-5aad55b7d18130.6908000915213091118582.jpg",
                            ),
                          ),
                          title: Text(
                            "Libraries",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
