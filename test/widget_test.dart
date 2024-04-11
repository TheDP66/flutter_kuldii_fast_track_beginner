import 'package:flutter/rendering.dart';

void main() {
  // penjumlahan(1, 2);

  // int perkalian2 = perkalian(9, 9);
  // print(perkalian2);

  /// Asynchronous
  // print("A");
  // cetakB();
  // cetakC()
  //     .then((value) => print("SUKSES"))
  //     .catchError((value) => print("ERROR"));
  // print("D");
  // cetakE()
  //     .then((value) => print("SUKSES"))
  //     .catchError((value) => print("ERROR"));

  // exception();

  // looping();

  // condition();

  collections();
}

void collections() {
  //// List
  List<dynamic> motor = ["Mio", "NMax", "Beat", 1, 2, 3];
  // print(motor);

  // int i = 0;
  // motor.forEach((item) {
  //   print('Motor ke - ${i + 1} : $item');
  // });

  List matematikaList = [8, 9, 7, 6, 20];
  //// Set
  // Set dapat menggunakan union, intersection, dll.
  Set matematikaSet = {8, 9, 7, 6, 20};
  Set fisikaSet = {5, 9, 8, 10};
  // print(matematikaList);
  // print(matematikaSet);
  // print(matematikaList[2]);
  // print(matematikaSet.elementAt(2));

  print(matematikaSet.union(fisikaSet)); // untuk menggabungkan kedua nilai
  print(matematikaSet.intersection(fisikaSet)); // untuk mencari nilai yang sama

  //// Map
  Map nilai = {"mat": 100, "IPA": 200, "IPS": 300};
  print(nilai['mat']);

  List data1 = [8, 9, 10, 11, 12];
  print(data1);
  // Menambahkan data 13 ke paling akhir
  List copyData = [...data1, 13];
  print(copyData);

  Set setData1 = {8, 9, 10, 11, 12};
  Set copySet = {...setData1, 13};
  print(copySet);
}

void condition() {
  String nama = "P";
  if (nama == "D") {
    print("Nama dia Dharma");
  } else if (nama == "P") {
    print("Nama dia Putra");
  } else {
    print("Siapa dia?");
  }

  switch (nama) {
    case "D":
      print("Nama dia Dharma");
      break;
    case "P":
      print("Nama dia Putra");
      break;
    default:
      print("Siapa dia?");
  }
}

void looping() {
  // for (int i = 0; i < 10; i++) {
  //   print(i);
  // }

  // int j = 1;
  // do {
  //   print(j);
  //   j++;
  // } while (j < 10);

  List<String> motor = ['mio', 'nmax', 'jupiter', 'vixion', 'beat'];

  for (var i = 0; i < motor.length; i++) {
    print('${motor[i]}');
  }

  motor.forEach((e) => {print(e)});

  for (var m in motor) {
    print(m);
  }
}

void exception() {
  try {
    int umur = int.parse("90");
    print(umur);

    int umurx = int.parse("abc");
    print(umurx);
  } on FormatException {
    print("Data yang diinput harus angka");
  } catch (e) {
    print(e);
  }
}

// Asynchronous Error
Future<String> cetakE() async {
  await Future.delayed(Duration(seconds: 1));
  print("E");
  throw "GAGAL CETAK E";
}

// Asynchronous Fetch
Future<void> cetakC() async {
  await Future(() {
    print("C");
  });
}

// Asynchronous
void cetakB() async {
  await Future(() {
    print("B1");
  });

  await Future.delayed(const Duration(seconds: 2), () {
    print("B2");
  });

  print("B3");
}

int perkalian(int a1, int a2) {
  int hasil = a1 * a2;
  return hasil;
}

void penjumlahan(int angka1, int angka2) {
  print(angka1 + angka2);
  print(5 + 89);
  // tipeData();
}

void finalConst() {
  final String name; // Bisa diinisialisasi terlebih dahulu
  name = "DHARMA";

  const String nama = "dharma"; // Wajib langsung dikasih value

  print(name);
  print(nama);
}

void tipeData() {
  String name = "DHARMA putra";
  name = "Dharma";

  bool isMale = true;
  double age = 21.1;
  List<String> favoriteColor = ['Black', 'Grey', 'White'];
  List<dynamic> random = ['Satu', 1, 1.0, '1.0'];
  Map kendaraan = {"mobil": "Toyota Innova", "motor": "Kawasaki Ninja 250cc"};

  print('$name adalah laki-laki? $isMale');
  print("Dia berumur ${age.abs()} tahun");
  print("Warna favorite : $favoriteColor");
  print("Pilih warna ke 1: ${favoriteColor[0]}");
  print("Dynamic : $random");
  print("Kendaraan : $kendaraan");
  print("Motor : ${kendaraan['motor']}");
}
