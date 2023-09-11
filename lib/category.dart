import 'package:flutter/material.dart';
import 'package:homework/course_box.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          "Categories",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:25
          ),
        ),
        actions: <Widget>[
          ClipOval(
            child: Container(
              color: Colors.red,
              width: 25,
              height: 25,
              child: const Center(
                child: Text(
                  '08',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          const Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage:
              NetworkImage('https://i.pinimg.com/564x/7b/84/68/7b846804807c89306137533d863a618b.jpg'),
            ),
          ),
        ],
      ),

      body: GridView.builder(
          shrinkWrap: true,
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
              child: CourseBox(),
            );
          }
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),

    );
  }
}