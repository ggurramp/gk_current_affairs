import 'package:flutter/material.dart';
import '../path_to_my_banner_ad_widget.dart';

// void main() {
//   runApp(HeritageSites_india());
// }
class HeritageSites_india extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heritage Sites & Specialty',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Heritage Sites In India'),
        ),
        body: ListView(
          children: [
            MyBannerAdWidget(),
            DataTable(
              dataRowHeight: 100.0,
              decoration: BoxDecoration(color: Colors.white70),
              border: TableBorder.all(color: Colors.green),
              columns: [
                DataColumn(label: Text('Heritage Site')),
                DataColumn(label: Text('State')),
                DataColumn(label: Text('Specialty')),
              ],
              rows: [
                for (var i = 0; i < data.length; i++)
                  DataRow(
                    cells: [
                      DataCell(Text(data[i][0])),
                      DataCell(Text(data[i][2])), // Index 2 corresponds to 'Specialty'
                      DataCell(
                        Text(
                          data[i][1],
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
final List<List<String>> data = [


  ['Agra Fort', 'It is the 16th Century Mughal Monument called the Red Fort of Agra. Jahangir Palace and the Khas Mahal built by Shah Jahan are part of Agra Fort.', 'Uttar Pradesh'],
  ['Ajanta Caves', 'These are rock-cut caves. There are a total of 29 caves.', 'Maharashtra'],
  ['Archaeological Site of Nalanda Mahavihara at Nalanda', 'Nalanda is the most ancient university in India. The archaeological remains of a monastic and scholastic institution dating from the 3rd century BCE to the 13th century CE are found here.', 'Bihar'],
  ['Buddhist Monuments at Sanchi', 'Monolithic pillars, palaces, temples and monasteries are part of it. It is considered the oldest Buddhist Sanctuary in existence.', 'Madhya Pradesh'],
  ['Champaner-Pavagadh Archaeological Park', 'Unexcavated archaeological, historic and living cultural heritage properties are a part of it. Structures built between the 8th and 14th centuries like fortifications, palaces, religious buildings, residential precincts, agricultural structures and water installations are found here.', 'Gujarat'],
  ['Chhatrapati Shivaji Terminus', 'The former name of CST was Victoria Terminus. It represents the Victorian Gothic Revival architecture in India. British architect F. W. Stevens built and designed it.', 'Maharashtra'],
  ['Churches and Convents of Goa', 'The churches of the city which was the Portuguese capital signifies the evangelization of Asia.', 'Goa'],
  ['Elephanta Caves', 'Gharapuri Caves is the local name of Elephanta Caves. There are seven caves.', 'Maharashtra'],
  ['Ellora Caves', 'There are 34 monasteries and temples.', 'Maharashtra'],
  ['Fatehpur Sikri', 'Mughal Emperor Akbar built it. It had been a Mughal capital for 10 years. Jama Masjid is a part of it.', 'Uttar Pradesh'],
  ['Great Living Chola Temples', 'It includes temples like the Brihadisvara Temple at Thanjavur, the Brihadisvara Temple at Gangaikondacholisvaram, and the Airavatesvara Temple at Darasuram.', 'Tamil Nadu'],
  ['Group of Monuments at Hampi', 'Hampi has served as the last capital of the Vijayanagar Empire.', 'Karnataka'],
  ['Group of Monuments at Mahabalipuram', 'The group is best known for Rathas, Mandapas, Giant open-air reliefs, etc.', 'Tamil Nadu'],
  ['Group of Monuments at Pattadakal', 'The monuments represent the Chalukyan art. Hindu temples and Jain sanctuary are a part of it.', 'Karnataka'],
  ['Hill Forts of Rajasthan', 'Chittorgarh fort; Kumbhalgarh fort; Sawai Madhopur fort; Jhalawar fort; Jaipur fort, and Jaisalmer fort are part of these hill forts.', 'Rajasthan'],
  ['Historic City of Ahmadabad', 'Sultan Ahmad Shah founded the walled city in the 15th Century.', 'Gujarat'],
  ['Humayun’s Tomb', 'It was built in 1570. It stands as the first garden-tomb in the Indian subcontinent.', 'Delhi'],
  ['Jaipur City', 'Sawai Jai Singh-II founded the city in 1727.', 'Rajasthan'],
  ['Khajuraho Group of Monuments', 'It contains Chandely Dynasty-built temples. Hinduism and Jainism are two religions to which temples are dedicated.', 'Madhya Pradesh'],
  ['Mahabodhi Temple Complex', 'It is one of the four holy sites related to the Buddha’s life.', 'Bihar'],
  ['Mountain Railways of India', 'Darjeeling Himalayan Railway, Nilgiri Mountain Railway, and Kalka Shimla Railway are three railways included in this site.', 'West Bengal, Tamil Nadu, Himachal Pradesh, Haryana, Punjab'],
  ['Qutb Minar and its Monuments', 'Qutb Minar was built in the 13th century. It is the highest tower in India.', 'Delhi'],
  ['Rani-ki-Vav (the Queen’s Stepwell)', 'It stands on the banks of Saraswati River. It is built in Maru-Gurjara architectural style.', 'Gujarat'],
  ['Red Fort Complex', 'It was built as the palace fort of Shah Jahan’s capital Shah Jahanabad. Salimgarh Fort is a part of this complex.', 'Delhi'],
  ['Rock Shelters of Bhimbetka', 'Dr V. S. Wakankar had discovered the Bhimbetka Caves in 1958.', 'Madhya Pradesh'],
  ['Sun Temple', 'King Narasimhadeva I built this in the 13th Century. It represents the Kalinga architecture.', 'Odisha'],
  ['Taj Mahal', 'Mughal Emperor built Taj Mahal. It stands on the Yamuna river banks.', 'Uttar Pradesh'],
  ['The Architectural Work of Le Corbusier, an Outstanding Contribution to the Modern Movement', 'There are 17 sites on three continents. Complexe du Capitole in Chandigarh, India is a part of this.', 'Chandigarh'],
  ['The Jantar Mantar', 'Rajput king Sawai Jai Singh II built the astronomical observation site.', 'Rajasthan'],
  ['Victorian Gothic and Art Deco Ensembles of Mumbai', 'Victorian Neo-Gothic public buildings and Art Deco in Mumbai buildings are part of this collection.', 'Maharashtra'],
  ['Great Himalayan National Park-Conservation Area', 'High alpine peaks, alpine meadows and riverine forests in this conservation area in Himachal Pradesh.', 'Himachal Pradesh'],
  ['Kaziranga National Park', 'It is located in Golaghat and Nagaon, in the Karbi Anglong district of Assam in northeast India. Read more about the Kaziranga National Park in the linked article.', 'Assam'],
  ['Keoladeo National Park', 'Bharatpur Bird Sanctuary was the former name of this National Park. Siberian Crane is one of those aquatic birds that make this park a wintering area.', 'Rajasthan'],
  ['Manas Wildlife Sanctuary', 'It is the first reserve included in the network of tiger reserves under Project Tiger in 1973. It is also a biosphere reserve.', 'Assam'],
  ['Nanda Devi and Valley of Flowers National Parks', 'Nanda Devi West is the second-highest mountain in India.', 'Uttarakhand'],
  ['Sundarbans National Park', 'It forms the part of the Gangetic Delta.', 'West Bengal'],
  ['Western Ghats', 'These are one of the biodiversity hotspots. Get comprehensive notes on Western Ghats in the linked article.', 'States of Kerala, Karnataka, Tamil Nadu, Goa, Maharashtra, and Gujarat'],
  ['Khangchendzonga National Park', 'Mount Khangchendzonga is the world’s third-highest peak.', 'Sikkim'],
  ['Kakatiya Rudreshwara (Ramappa) Temple', 'Built in the 13th century CE, the temple is a Kakatiyan marvel made of sandstone. The structure has decorated beams and pillars of carved granite and dolerite with a distinctive and pyramidal Vimana made of lightweight porous bricks, so-called ‘floating bricks’, which reduced the weight of the roof structures.', 'Telangana'],
  ['Dholavira', 'Discovered by archaeologist Jagat Pati Joshi in 1968, Dholavira gets its name from the village in Kutch district of Gujarat. In ancient India, it has remained a commercial and manufacturing hub for about 1,500 years till its decline by 1500 BC. It was Indus Valley Civilization’s fifth-largest metropolis after Mohen-jo-Daro, Ganweriwala, Harappa and Rakhigarhi.', 'Gujarat'],
  ['Santiniketan', 'Located in West Bengal’s Birbhum district, Santiniketan, meaning “abode of peace,” began its development in 1901 and is where Rabindranath Tagore laid the foundation for Visva-Bharati University. It was established by Rabindranath Tagore. Santiniketan has immense significance in human values, architectural and technological developments, monumental arts, town planning, and landscape design. Efforts to get Santiniketan listed as a UNESCO World Heritage Site date back to 2010, with the latest nomination proposal initiated in the 2020-21 fiscal year. The Archaeological Survey of India (ASI) has been involved in restoring various structures in Santiniketan in recent years.', 'West Bengal'],
  ['Sacred Ensembles of the Hoysalas', 'The temples are located in Belur, Halebidu, and Somanathapura in the Hassan and Mysuru districts of Karnataka. The temples, often described as ‘poetry carved in stone’, were recommended to the list by India’s Culture Ministry in 2022-23. The temples included in the ensemble are: Channakeshava Temple, Belur, Hassan district (Commissioned by King Vishnuvardhana, dedicated to God Vishnu) Hoysalesvara Temple, Halebidu, Hassan district (Commissioned by King Vishnuvardhana, dedicated to God Shiva) Kesava Temple, Somanathapura, Mysuru district (Consecrated by Somanatha Dandanayaka, a general of the Hoysala King Narasimha III, dedicated to God Vishnu)', 'Karnataka'],


];
