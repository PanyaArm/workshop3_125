import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // อย่าลืมติดตั้ง google_fonts ใน pubspec.yaml
import '../models/friend.dart';

class FriendListScreen extends StatelessWidget {
  const FriendListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friendList.length,
      itemBuilder: (context, index) {
        final friend = friendList[index];

        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          color: friend.getCardColor(), // เรียกใช้สีตามกิจกรรม
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // --- ส่วนที่ 1: ข้อมูลเพื่อน (อยู่ทางซ้าย) ---
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${friend.name} (${friend.nickname})",
                        style: GoogleFonts.kanit(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "อายุ: ${friend.age} ปี | บ้านเกิด: ${friend.hometown}",
                        style: GoogleFonts.sarabun(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "อาหารที่ชอบ: ${friend.favoriteFood}",
                        style: GoogleFonts.sarabun(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "กิจกรรม: ${friend.activity}",
                        style: GoogleFonts.sarabun(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 10),

                // --- ส่วนที่ 2: รูปภาพเพื่อน (อยู่ทางขวามือตามโจทย์) ---
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    friend.imagePath,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                    // หากรูปในเครื่องยังไม่มี สามารถทดสอบด้วย NetworkImage ได้:
                    // Image.network('https://via.placeholder.com/150', width: 90, height: 90, fit: BoxFit.cover),
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 90,
                        height: 90,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.person, size: 50, color: Colors.grey),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}