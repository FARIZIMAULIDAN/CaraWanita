import 'package:flutter/material.dart';

class CaraWanitaPage extends StatefulWidget {
  const CaraWanitaPage({Key? key}) : super(key: key);

  @override
  State<CaraWanitaPage> createState() => _CaraWanitaPageState();
}

class _CaraWanitaPageState extends State<CaraWanitaPage> {
  // Daftar kalimat
  final List<String> kalimatList = [
    "Harus ditemani suami atau mahram. Mahram adalah laki-laki yang dilarang menikah dengan perempuan yang akan berhaji itu.",
    "Perempuan boleh pergi haji tanpa suami atau mahram selama diyakini terjaga keamanannya. Imam Syafi'i berpendapat, namun harus dengan izin suami.",
    "Selama melaksanakan ibadah haji perempuan harus menutup auratnya kecuali muka dan kedua telapak tangannya (ketika ihram).",
    "Tidak boleh mengeraskan suaranya pada waktu membaca talbiyah atau berdoa.",
    "Tidak disunnahkan lari-lari kecil saat melintasi lampu hijau ketika sa'i dan tidak dianjurkan naik sampai ke atas Bukit Shafa dan Marwah.",
    "Tidak mencukur gundul rambutnya, cukup memotongnya paling sedikit tiga helai atau memotong ujung rambutnya sepanjang jari.",
    "Bagi yang haid atau nifas ketika sampai di miqat makani, wajib berniat ihram haji/umrah.’"
    "Apabila belum melaksanakan tawaf ifadah karena haid sedangkan rombongannya akan segera pulang ke Tanah Air maka dia harus menunggu sampai suci, sehingga bisa melakukan tawaf ifadah. Selain itu, bisa juga meminum obat penunda haid atas petunjuk dokter.’"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40,
            color: Color(0xFF235092),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          // Background biru
          Container(
            color: Color.fromARGB(255, 106, 188, 255),
            width: double.infinity,
            height: double.infinity,
          ),
          // Gambar dengan ColorFiltered
          ColorFiltered(
            colorFilter: ColorFilter.mode(Color.fromARGB(255, 57, 161, 246), BlendMode.color),
            child: Positioned.fill(
              top: 0.1,
              child: Image.asset(
                'images/caraWanita.png',
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Kotak isi deskripsi
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.56,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Color.fromARGB(255, 196, 206, 220),
                    width: 1,
                  ),
                ),
                child: ListView.builder(
                  itemCount: kalimatList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 0,
                      color: Colors.white, // Mengatur warna latar belakang menjadi putih
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          kalimatList[index],
                          style: TextStyle(
                            fontFamily: 'MontserratRomanBold',
                            color: Color(0xFF235092),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
