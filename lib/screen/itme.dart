import 'package:flutter/material.dart';

import '../models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}
Color getCategoryColor(String type) {
  switch (type) {
    case 'ต้ม':
    case 'สุขภาพ':
      return Colors.green; // สีเขียวอ่อน
    case 'สเต็ก':
      return Colors.orangeAccent; // สีส้ม
    case 'ฟาสฟู้ด':
      return Colors.redAccent; // สีแดงชมพู
    case 'ก๋วยเตี๋ยว':
      return const Color.fromARGB(255, 205, 55, 232);// สีม่วงอ่อน
    default:
      return Colors.amberAccent; // สีสำรองกรณีประเภทไม่ตรงกับข้างบน
  }
}
class _ItemState extends State<Item> {
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emp.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: getCategoryColor(emp[index].type),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    emp[index].name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "ประเภทอาหาร : ${emp[index].type}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "ส่วนประกอบ : ${emp[index].component}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "ราคา : ${emp[index].price} บาท",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Image.asset(emp[index].foodpic.image,width: 70,height: 70,)
            ],
          ),
        );
      },
    );
  }
}
