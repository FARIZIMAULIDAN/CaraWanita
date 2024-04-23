import 'package:flutter/material.dart';

class CaraWanitaEngPage extends StatelessWidget {
  CaraWanitaEngPage({Key? key}) : super(key: key);

  // Daftar kalimat
  final List<String> kalimatList = [
    "1. Must be accompanied by husband or mahram. Mahram is a man who is prohibited from marrying a woman who is going on the Hajj.",
    "2. Women can go on the Hajj without a husband or mahram as long as they are assured of safety. Imam Syafi'i is of the opinion, but it must be with the husband's permission.",
    "3. During the Hajj, women must cover their private parts except their face and palms (when in ihram).",
    "4. You are not allowed to raise your voice when reading the talbiyah or praying.",
    "5. It is not recommended to jog when crossing the green light when sa'i and it is not recommended to climb to the top of Mount Shafa and Marwah.",
    "6. Don't shave your hair bald, just cut at least three strands or cut the ends of your hair to finger length.",
    "7. For those who are menstruating or postpartum when they arrive at Miqat Makani, they must intend to enter the Hajj/Umrah ihram.'"
        "If you haven't performed the tawaf ifadah due to menstruation and your group will soon return to Indonesia, then they have to wait until they are pure, so they can perform the tawaf ifadah. Apart from that, they can also take medication to delay menstruation under the doctor's instructions.",
  ];

  // Daftar array untuk List Builder
  final List<String> newArray = [
    "--> Apart from these nine conditions, female Hajj pilgrims also need to pay attention to the following things:",
    "1. Dress neatly, Islamically, and avoid thin and tight clothes.",
    "2. Don't wear excessive make up.",
    "3. Speak kind words, don't lie, don't slander, and don't gossip about other people.",
    "4. Avoid traveling alone with people who are not your mahram.",
    "5. Be alert and careful about the behavior of unknown strangers, including strange calls (calling Siti Rahmah).",
    "6. Respect places of worship and avoid actions that are felt to reduce the solemnity and sincerity of worship, such as taking selfies in these places.",
    "7. Keep adhering to al-akhlaq al-karimah.",
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
                'images/eng.png',
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
                        "Female pilgrims can also observe the sacred pause (tatabbu' al-naqa'). When menstrual blood does not come out and it is estimated that there is enough time for tawaf, then immediately take a shower, wear sanitary napkins, and perform tawaf ifadah and sa'i. If blood comes out again after the tawaf, the tawaf is valid and no fine is imposed.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20, // Ukuran font diperbesar menjadi 20
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 5, // Radius bayangan
                              color: Colors.black
                                  .withOpacity(0.5), // Warna bayangan
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
                                fontSize:
                                    18, // Ukuran font diperbesar menjadi 18
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
