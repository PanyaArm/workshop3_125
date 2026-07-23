import 'package:flutter/material.dart';

class Friend {
  final String name;        // ชื่อ-นามสกุล
  final String nickname;    // ชื่อเล่น
  final int age;            // อายุ
  final String hometown;    // บ้านเกิด
  final String favoriteFood; // อาหารที่ชอบ
  final String activity;    // กิจกรรม/งานอดิเรกที่ชอบ
  final String imagePath;   // พาธรูปภาพ (เช่น 'assets/images/friend1.jpg')

  Friend({
    required this.name,
    required this.nickname,
    required this.age,
    required this.hometown,
    required this.favoriteFood,
    required this.activity,
    required this.imagePath,
  });

  // ฟังก์ชันสุ่มหรือแยกสีพื้นหลังตามประเภทกิจกรรม (นำแนวคิดจากข้อ 11 มาปรับใช้)
  Color getCardColor() {
    switch (activity) {
      case 'เล่นเกม':
        return Colors.lightBlue;
      case 'เล่นกีฬา':
        return Colors.lightGreen;
      case 'ดูหนัง':
        return Colors.amberAccent;
      case 'ฟังเพลง':
        return Colors.pinkAccent;
      default:
        return Colors.lightGreen;
    }
  }
}

// รายชื่อข้อมูลเพื่อนสำหรับแสดงผล
List<Friend> friendList = [
  Friend(
    name: "พัชรพล พันแตง",
    nickname: "เจม",
    age: 20,
    hometown: "ประจวบคีรีขันธ์",
    favoriteFood: "กระเพราหมูกรอบ",
    activity: "เล่นกีฬา",
    imagePath: "assets/images/friend1.jpg", // ใส่รูปเพื่อนใน assets หรือใช้ NetworkImage แทนได้
  ),
  Friend(
    name: "มงคล สุดสาคร",
    nickname: "แซม",
    age: 21,
    hometown: "ประจวบคีรีขันธ์",
    favoriteFood: "ชาบู",
    activity: "เล่นเกม",
    imagePath: "assets/images/friend2.jpg",
  ),
  Friend(
    name: "กนก แสนกลม",
    nickname: "ปาล์ม",
    age: 20,
    hometown: "ประจวบคีรีขันธ์",
    favoriteFood: "ข้าวผัด",
    activity: "เล่นเกม",
    imagePath: "assets/images/friend3.jpg",
  ),
  Friend(
    name: "อาทิตยา ลาภอารมณ์",
    nickname: "ฟ้า",
    age: 20,
    hometown: "ประจวบคีรีขันธ์",
    favoriteFood: "สุกี้",
    activity: "ดูหนัง",
    imagePath: "assets/images/friend4.jpg",
  ),
  Friend(
    name: "กฤษพงค์ ปู่หนู",
    nickname: "แฟ้ม",
    age: 20,
    hometown: "ประจวบคีรีขันธ์",
    favoriteFood: "กระเพราหมูสับ",
    activity: "ฟังเพลง",
    imagePath: "assets/images/friend5.jpg",
  ),
];