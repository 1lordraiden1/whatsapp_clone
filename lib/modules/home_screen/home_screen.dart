import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/screen_components/screen_components.dart';


//List<user> Users = [user(name: "Zeyad",
// img: "https://hips.hearstapps.com/hmg-prod/images/spider-man-1627065947.jpeg?crop=0.84375xw:1xh;center,top&resize=1200:*",
// lastMsg: "Cya", date: "2:00 AM")];
int indexo=0;

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title:  Text(
                "WhatsApp",
              style: TextStyle(
                color: inIcon
              ),
            ),

            actions: [
              IconButton(
                icon:  Icon(Icons.camera_alt_outlined,color: inIcon,),
                onPressed: (){

                },
              ),
              IconButton(
                icon:  Icon(Icons.search,color: inIcon,),
                onPressed: (){},
              ),
              PopupMenuButton(
                  itemBuilder: (context)=>[
                    PopupMenuItem(
                      value: 1,
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                            "New Group",
                          style: TextStyle(
                            color: txt,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "New broadcast",
                          style: TextStyle(
                              color: txt,
                              fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "Linked Devices",
                          style: TextStyle(
                              color: txt,
                              fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "Starred messages",
                          style: TextStyle(
                              color: txt,
                              fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "Settings",
                          style: TextStyle(
                            color: txt,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ],
            bottom: TabBar(

              indicatorColor: nrml ,
              tabs: [
                Tab(

                  icon: Icon(
                      Icons.groups
                  ),
                ),
                Tab(child: Text("Chats")),
                Tab(child: Text("Status")),

                Tab(child: Text("Calls")),
              ],
            ),

          ),

          body:TabBarView(
            children: [
              ListView.builder(
                itemCount: 1,
                itemBuilder: groupBuilder,
              ),

              ListView.builder(
                itemCount: 10,
                  itemBuilder: messageBuilder,
              ),
              Text("Status"),

              ListView.builder(
                itemCount: 2,
                itemBuilder: callBuilder,),
            ],

          ),

        ),

    );
  }
}
Widget callBuilder(BuildContext context,int index){
  return ListTile(
    leading: Icon(
      Icons.person,
    ),
    title: Text("Ahmed"),
    subtitle: Text("Missed Call"),
    trailing: Text("11:55 PM"),
  );
}
Widget messageBuilder(BuildContext context,int index){
  return ListTile(
    leading: ClipOval(
      child: Image.network("https://th-thumbnailer.cdn-si-edu.com/ura_03PjcWruekeuCSv__ZYfj5E=/1000x750/filters:no_upscale():focal(995x663:996x664)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/9b/3a/9b3a9e14-c4d9-4d0c-a103-79661f7d808a/gettyimages-169564211.jpg",
          width:50 ,
        height: 50,
        fit: BoxFit.cover,

      ),
    ),
    title: Text("Spider man"),//Users[index].name
    subtitle: Text("Hi, where are you?"),//Users[index].lastMsg
    trailing: Text("10:36",
    style: TextStyle(
      color:
    ),
    ),//Users[index].date
    onTap: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => ErrorWidget.withDetails(), //whats_chat(),
        ),
      );

    },
  );


}
Widget groupBuilder(BuildContext context,int index){
  return Center(
    child: ListTile(
      title: Center(child: Text("There's no Groups right now ")),
    ),
  );
}
/*PopupMenuItem popItemBuilder (BuildContext context){//List<PopupMenuEntry>
  return PopupMenuItem(
    value: indexo,
      child:TextButton(
        onPressed: (){},
        child: const Text("New Group"),
      ),


  );
}*/