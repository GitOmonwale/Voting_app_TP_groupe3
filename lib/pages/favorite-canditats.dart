import 'package:dernier_tp/models/person.dart';
import 'package:dernier_tp/pages/candidats_form.dart';
import 'package:dernier_tp/pages/canditats_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 
 

class FriendListPage extends StatefulWidget {
  const FriendListPage({super.key});

  @override
  State<FriendListPage> createState() => _FriendListPageState();
}

class _FriendListPageState extends State<FriendListPage> {
  String name = "";
  bool liked = false;
  List<Person> persons = [];
  List<Person> friends = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
       appBar: AppBar(
        title: Text("Hello Samit",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          SizedBox(
              width: 25,
              height: 20,
              child: Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.notification_add, size: 25,),
              )
          )
        ],
      ),
      body:

 

      
 Container(





  
   child: ListView(
    
    children: 
    persons
              .map((person) =>   
   Container(
              decoration: BoxDecoration(
                // borderRadius:BorderRadius.all(Radius),
              ),
              
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(15),
          
              ),
                    width: 80,
                    height: 80,
                    child: Image.network(
                      'https://guardian.ng/wp-content/uploads/2022/06/Adebayo-2.jpg', // Remplacez par l'URL de votre image
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${person.name} ${person.surname}",
                             
                          ),
                          Text(
                             "${person.bibliography} "
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    )
              .toList(),
        ),
 ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Person person = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FriendFormPage(),
              ));

          setState(() => persons.add(person));
        },
        child: Icon(Icons.add),
      ),


bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon (Icons.home_filled), label: 'Acceul'),
          BottomNavigationBarItem(icon: Icon (Icons.people), label: 'vote'),
          BottomNavigationBarItem(icon: Icon (Icons.settings), label: 'Paramètres'),


        ],),
    );
  }

  // bool checkIfExists(Person person) {
  //   return friends.contains(person);
  // }

  // void addFriend(Person person) {
  //   if (!checkIfExists(person)) {
  //     friends.add(person);
  //   } else {
  //     friends.remove(person);
  //   }
  // }
}
