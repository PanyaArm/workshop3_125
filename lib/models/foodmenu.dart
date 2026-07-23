enum Foodpic {
   menu1(image: "assets/images/1.png"), 
   menu2(image: "assets/images/2.png"), 
   menu3(image: "assets/images/3.png"), 
   menu4(image: "assets/images/4.png"), 
   menu5(image: "assets/images/5.png"), 
   menu6(image: "assets/images/6.png"), 
   menu7(image: "assets/images/7.png");

   const Foodpic({required this.image});
   final String image;
    }

class Foodmenu {
  Foodmenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
  });
  String name;
  String type;
  String component;
  int price;
  Foodpic foodpic;
}

List<Foodmenu> emp = [
  Foodmenu(
    name: "สุกี้ผักรวม",
    type: "ต้ม",
    component: "ไข่ไก่,เกี๊ยวกุ้ง,ปูอัด,เบคอน,ผักรวม",
    price: 299,
    foodpic: Foodpic.menu1,
  ),
  Foodmenu(
    name: "สลัดผัก",
    type: "สุขภาพ",
    component: "แครอท,มะเขือเทศ,ผักรวม",
    price: 159,
    foodpic: Foodpic.menu2,
  ),
  Foodmenu(
    name: "สเต็กหมู",
    type: "สเต็ก",
    component: "สโพกหมู,เรดโฮก,เคล",
    price: 299,
    foodpic: Foodpic.menu3,
  ),
  Foodmenu(
    name: "สเต็กเนื้อ",
    type: "สเต็ก",
    component: "สันคอวัว,ไข่ดาว,เบคอน",
    price: 389,
    foodpic: Foodpic.menu4,
  ),
  Foodmenu(
    name: "แฮมเบอร์เกอร์",
    type: "ฟาสฟู๊ด",
    component: "ขนมปัง,หมูบดเบอร์เกอร์,ชีส",
    price: 189,
    foodpic: Foodpic.menu5,
  ),
  Foodmenu(
    name: "พิซซ่า",
    type: "ฟาสฟู๊ด",
    component: "แป้งพิซซ่า,เบคอน,พริก",
    price: 139,
    foodpic: Foodpic.menu6,
  ),
  Foodmenu(
    name: "ก๋วยเตี๋ยวต้มยำ",
    type: "ก๋วยเตี๋ยว",
    component: "เส้นเล็ก,ลูกชิ้น,หมูสไลด์",
    price: 88,
    foodpic: Foodpic.menu7,
  ),
];
