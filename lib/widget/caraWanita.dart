import 'package:flutter/material.dart';

class CaraWanitaPage extends StatelessWidget {
  CaraWanitaPage({Key? key}) : super(key: key);

  // Daftar kalimat
  final List<String> kalimatList = [
    "1. Harus ditemani suami atau mahram. Mahram adalah laki-laki yang dilarang menikah dengan perempuan yang akan berhaji itu.",
    "2. Perempuan boleh pergi haji tanpa suami atau mahram selama diyakini terjaga keamanannya. Imam Syafi'i berpendapat, namun harus dengan izin suami.",
    "3. Selama melaksanakan ibadah haji perempuan harus menutup auratnya kecuali muka dan kedua telapak tangannya (ketika ihram).",
    "4. Tidak boleh mengeraskan suaranya pada waktu membaca talbiyah atau berdoa.",
    "5. Tidak disunnahkan lari-lari kecil saat melintasi lampu hijau ketika sa'i dan tidak dianjurkan naik sampai ke atas Bukit Shafa dan Marwah.",
    "6. Tidak mencukur gundul rambutnya, cukup memotongnya paling sedikit tiga helai atau memotong ujung rambutnya sepanjang jari.",
    "7. Bagi yang haid atau nifas ketika sampai di miqat makani, wajib berniat ihram haji/umrah.’"
        "Apabila belum melaksanakan tawaf ifadah karena haid sedangkan rombongannya akan segera pulang ke Tanah Air maka dia harus menunggu sampai suci, sehingga bisa melakukan tawaf ifadah. Selain itu, bisa juga meminum obat penunda haid atas petunjuk dokter.’"
  ];

  // Daftar array untuk List Builder
  final List<String> newArray = [
    "--> Selain sembilan syarat tersebut, jemaah haji wanita juga perlu memperhatikan hal-hal berikut ini :",
    "1. Berpakaian rapi, Islami, dan menghindari pakaian tipis dan ketat.",
    "2. Tidak memakai make up yang berlebihan.",
    "3. Bertutur kata yang baik, tidak berbohong, tidak memfitnah, dan tidak menggunjingkan orang lain.",
    "4. Menghindari bepergian berduaan dengan orang yang bukan mahramnya.",
    "5. Bersikap waspada dan hati-hati terhadap perilaku orang asing yang tidak dikenal, termasuk panggilan-panggilan aneh (panggilan Siti Rahmah).",
    "6. Menghormati tempat-tempat ibadah dan menghindari perbuatan-perbuatan yang dirasa mengurangi kekhusyukan serta keikhlasan beribadah, seperti berswafoto (selfie) di tempat-tempat tersebut.",
    "7. Tetap berpegang teguh pada al-akhlaq al-karimah.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 81, 217, 237),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container isi gambar dengan padding
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
              width: double.infinity,
              child: Image.asset(
                'images/idnbaru.png',
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),

            // Kotak isi deskripsi dengan padding
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: List.generate(
                        kalimatList.length,
                        (index) => Column(
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.9,
                              ),
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    kalimatList[index],
                                    style: TextStyle(
                                      fontFamily: 'MontserratRomanBold',
                                      color: Color(0xFF235092),
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          18, // Ukuran font diperbesar menjadi 18
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5, // Radius bayangan
                                          color: Colors.black.withOpacity(0.2), // Warna bayangan
                                          offset: Offset(0, 3), // Penyimpangan bayangan
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ), // Spasi antara list builder dan teks di bawahnya
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Center(
                      child: Text(
                        "Jemaah haji wanita juga bisa mengamati waktu jeda suci (tatabbu' al-naqa'). Ketika darah haid tidak keluar dan diperkirakan cukup waktu untuk tawaf, maka segera mandi, memakai pembalut, dan melakukan tawaf ifadah dan sa'i. Jika setelah tawaf darah keluar lagi, tawafnya sah dan tidak dikenakan denda apa pun.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20, // Ukuran font diperbesar menjadi 20
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 5, // Radius bayangan
                              color: Colors.black.withOpacity(0.2), // Warna bayangan
                              offset: Offset(0, 3), // Penyimpangan bayangan
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center, // Menengahkan teks
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: newArray.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Card(
                          elevation: 0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              newArray[index],
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontWeight: FontWeight.bold,
                                fontSize: 18, // Ukuran font diperbesar menjadi 18
                                shadows: [
                                  Shadow(
                                    blurRadius: 5, // Radius bayangan
                                    color: Colors.black.withOpacity(0.2), // Warna bayangan
                                    offset: Offset(0, 3), // Penyimpangan bayangan
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
