import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

class ParaAsianMedalsTable extends StatefulWidget {
  @override
  _ParaAsianMedalsTableState createState() => _ParaAsianMedalsTableState();
}

class _ParaAsianMedalsTableState extends State<ParaAsianMedalsTable> {
  final List<Winner> winners = [

    Winner('Ankur Dhama', 'Athletics', "Men's 5000m-T11", 'Gold'),
    Winner('Nishad Kumar', 'Athletics', "Men's High Jump-T47", 'Gold'),
    Winner('Ram Pal', 'Athletics', "Men's High Jump-T47", 'Silver'),
    Winner('Shailesh Kumar', 'Athletics', "Men's High Jump-T63", 'Gold'),
    Winner('Mariyappan Thangavelu', 'Athletics', "Men's High Jump-T63", 'Silver'),
    Winner('Monu Ghangas', 'Athletics', "Men's Shot Put-F11", 'Bronze'),
    Winner('Pranav Soorma', 'Athletics', "Men's Club Throw-F51", 'Gold'),
    Winner('Dharambir', 'Athletics', "Men's Club Throw-F51", 'Silver'),
    Winner('Amit Kumar', 'Athletics', "Men's Club Throw-F51", 'Bronze'),
    Winner('Prachi Yadav', 'Canoe', "Women's VL2", 'Silver'),
    Winner('Kapil Parmar', 'Judo', "Men -60kg J1", 'Silver'),
    Winner('Kokila', 'Judo', "Women -48kg J2", 'Bronze'),
    Winner('Avani Lekhara', 'Shooting', "Women's 10m Air Rifle Standing SH1", 'Gold'),
    Winner('Rudransh Khandelwal', 'Shooting', "Mixed 50m Pistol SH1", 'Silver'),
    Winner('Aruna', 'Taekwondo', "Women's K44 -47kg", 'Bronze'),
    Winner('Praveen Kumar', 'Athletics', "Men's High Jump-T64", 'Gold'),
    Winner('Unni Renu', 'Athletics', "Men's High Jump-T64", 'Bronze'),
    Winner('Ekta Bhyan', 'Athletics', "Women's Club Throw-F32/51", 'Bronze'),
    Winner('Simran', 'Athletics', "Women's 100m-T12", 'Silver'),
    Winner('Deepthi Jeevanji', 'Athletics', "Women's 400m-T20", 'Gold'),
    Winner('Ajay Kumar', 'Athletics', "Men's 400m-T64", 'Silver'),
    Winner('Manish Kaurav', 'Canoe', "Men's KL3", 'Bronze'),
    Winner('Prachi Yadav', 'Canoe', "Women's KL2", 'Gold'),
    Winner('Gajendra Singh', 'Canoe', "Men's VL2", 'Bronze'),
    Winner('Neeraj Yadav', 'Athletics', "Men's Discus Throw-F54/55/56", 'Gold'),
    Winner('Yogesh Kathuniya', 'Athletics', "Men's Discus Throw-F54/55/56", 'Silver'),
    Winner('Muthuraja', 'Athletics', "Men's Discus Throw-F54/55/56", 'Bronze'),
    Winner('Ravi Rongali', 'Athletics', "Men's Shot Put-F40", 'Silver'),
    Winner('Pramod', 'Athletics', "Men's 1500m-T46", 'Silver'),
    Winner('Rakesh Bhaira', 'Athletics', "Men's 1500m-T46", 'Bronze'),
    Winner('Ashok', 'Powerlifting', "Men's -65kg", 'Bronze'),
    Winner('Rudransh Khandelwal', 'Shooting', "Men's 10m Air Pistol SH1", 'Silver'),
    Winner('Manish Narwal', 'Shooting', "Men's 10m Air Pistol SH1", 'Bronze'),
    Winner('Rubina Francis', 'Shooting', "Women's 10m Air Pistol SH1", 'Bronze'),
    Winner('Team India', 'Archery', "Men's Doubles Recurve - Open", 'Bronze'),
    Winner('Team India', 'Archery', "Women's Doubles Compound - Open", 'Silver'),
    Winner('Team India', 'Archery', "Men's Doubles Compound - Open", 'Silver'),
    Winner('Pooja', 'Athletics', "Women's Discus Throw-F54/55", 'Silver'),
    Winner('Sumit', 'Athletics', "Men's Javelin Throw Throw-F64", 'Gold'),
    Winner('Pushpendra Singh', 'Athletics', "Men's Javelin Throw Throw-F64", 'Bronze'),
    Winner('Haney', 'Athletics', "Men's Javelin Throw Throw-F37/38", 'Gold'),
    Winner('Narayan Thakur', 'Athletics', "Men's 200m-T35", 'Bronze'),
    Winner('Shreyansh Trivedi', 'Athletics', "Men's 200m-T37", 'Bronze'),
    Winner('Soman Rana', 'Athletics', "Men's Shot Put-F57", 'Silver'),
    Winner('Hokato Sema Hotozhe', 'Athletics', "Men's Shot Put-F57", 'Bronze'),
    Winner('Sundar Singh Gurjar', 'Athletics', "Men's Javelin Throw Throw-F46", 'Gold'),
    Winner('Rinku', 'Athletics', "Men's Javelin Throw Throw-F46", 'Silver'),
    Winner('Ajeet Singh', 'Athletics', "Men's Javelin Throw Throw-F46", 'Bronze'),
    Winner('Ankur Dhaka', 'Athletics', "Men's 1500m-T11", 'Gold'),
    Winner('Rakshitha Raju', 'Athletics', "Women's 1500m-T11", 'Gold'),
    Winner('Lalitha Killaka', 'Athletics', "Women's 1500m-T11", 'Silver'),
    Winner('Sharath Makanahalli', 'Athletics', "Men's 1500m-T13", 'Silver'),
    Winner('Balwant Singh Rawat', 'Athletics', "Men's 1500m-T13", 'Bronze'),
    Winner('Nimisha Suresh', 'Athletics', "Women's Long Jump-T47", 'Gold'),
    Winner('Pramod Bhagat / Manisha Ramadass', 'Badminton', "Mixed Doubles SL3-SU5", 'Bronze'),
    Winner('Manasi Joshi', 'Badminton', "Women's Singles SL3", 'Bronze'),
    Winner('Sivarajan Solaimalai / Nithya Sre Sumathy Sivan', 'Badminton', "Mixed Doubles SH6", 'Bronze'),
    Winner('Nitesh Kumar / Thulasimathi Murugesan', 'Badminton', "Mixed Doubles SL3-SU5", 'Bronze'),
    Winner('Mandeep Kaur', 'Badminton', "Women's Singles SL3", 'Bronze'),
    Winner('Vaishnavi Puneyani', 'Badminton', "Women's Singles SL4", 'Bronze'),
    Winner('Zainab Khatoon', 'Powerlifting', "Women's -61kg", 'Silver'),
    Winner('Kumari Raj', 'Powerlifting', "Women's -61kg", 'Bronze'),
    Winner('Bhavina Patel', 'Table Tennis', "Women's Singles - Class 4", 'Bronze'),
    Winner('Sandeep Dangi', 'Table Tennis', "Men's Singles - Class 1", 'Bronze'),
    Winner('Adil Mohamed Nazir Ansari / Naveen Dalal', 'Archery', "Men’s Doubles – W1 Open", 'Bronze'),
    Winner('Sheetal Devi / Rakesh Kumar', 'Archery', "Mixed Team Compound - Open", 'Gold'),
    Winner('Narayan Thakur', 'Athletics', "Men's 100m-T35", 'Bronze'),
    Winner('Sachin Sarjerao Khilari', 'Athletics', "Men's Shot Put-F46", 'Gold'),
    Winner('Rohit Kumar', 'Athletics', "Men's Shot Put-F46", 'Bronze'),
    Winner('Shreyansh Trivedi', 'Athletics', "Men's 100m-T37", 'Bronze'),
    Winner('Bhagyashri Jadhav Madhavrao', 'Athletics', "Women's Shot Put-F34", 'Silver'),
    Winner('Monu Ghangas', 'Athletics', "Men's Discus Throw-F11", 'Silver'),
    Winner('Simran', 'Athletics', "Women's 200m-T12", 'Silver'),
    Winner('Manisha Ramadass', 'Badminton', "Women's Singles SU5", 'Bronze'),
    Winner('Nithya Sre Sumathy Sivan', 'Badminton', "Women's Singles SH6", 'Bronze'),
    Winner('Pramod Bhagat / Sukant Indukant Kadam', 'Badminton', "Men's Doubles SL3-SL4", 'Bronze'),
    Winner('Sukant Indukant Kadam', 'Badminton', "Men's Singles SL4", 'Bronze'),
    Winner('Krishna Nagar / Sivarajan Solaimalai', 'Badminton', "Men's Doubles SH6", 'Bronze'),
    Winner('Himanshi Bhaveshkumar Rathi', 'Chess', "Women's Individual Standard VI-B1", 'Bronze'),
    Winner('Mandeep Kaur / Manisha Ramadass', 'Badminton', "Women's Doubles SL3-SU5", 'Bronze'),
    Winner('Nithya Sre Sumathy Sivan / Rachana Shaileshkumar Patel', 'Badminton', "Women's Doubles SH6", 'Bronze'),
    Winner('Sidhartha Babu', 'Shooting', "R6 - Mixed 50m Rifle Prone SH1", 'Gold'),
    Winner('Rakesh Kumar', 'Archery', "Men's Individual Compound - Open", 'Silver'),
    Winner('Sheetal Devi', 'Archery', "Women's Individual Compound - Open", 'Gold'),
    Winner('Raman Sharma', 'Athletics', "Men's 1500m-T38", 'Gold'),
    Winner('Solairaj Dharmaraj', 'Athletics', "Men's Long Jump-T64", 'Gold'),
    Winner('Manu', 'Athletics', "Men's Shot Put-F37", 'Bronze'),
    Winner('Pradeep Kumar', 'Athletics', "Men's Javelin Throw-F54", 'Silver'),
    Winner('Laxit', 'Athletics', "Men's Javelin Throw-F54", 'Bronze'),
    Winner('Lakshmi', 'Athletics', "Women's Discus Throw-F37/38", 'Bronze'),
    Winner('Pramod Bhagat', 'Badminton', "Men's Singles SL3", 'Gold'),
    Winner('Nitesh Kumar', 'Badminton', "Men's Singles SL3", 'Silver'),
    Winner('Yathiraj Suhas Lalinakere', 'Badminton', "Men's Singles SL4", 'Gold'),
    Winner('Krishna Nagar', 'Badminton', "Men's Singles SH6", 'Silver'),
    Winner('Nitesh Kumar/Tarun', 'Badminton', "Men's Doubles SL3-SL4", 'Gold'),
    Winner('Chirag Baretha/Raj Kumar', 'Badminton', "Men's Doubles SU5", 'Silver'),
    Winner('Thulasimathi Murugesan', 'Badminton', "Women's Singles SU5", 'Gold'),
    Winner('Thulasimathi Murugesan/Manasi Joshi', 'Badminton', "Women's Doubles SL3-SU5", 'Silver'),
    Winner('Suyash Narayan Jadhav', 'Swimming', "Men's 50m Butterfly-S7", 'Bronze'),
    Winner('Neeraj Yadav', 'Athletics', "Men's Javelin Throw Throw-F55", 'Gold'),
    Winner('Tek Chand', 'Athletics', "Men's Javelin Throw Throw-F55", 'Bronze'),
    Winner('Dilip Mahadu Gavit', 'Athletics', "Men's 400m-T47", 'Gold'),
    Winner('Pooja', 'Athletics', "Women's 1500m-T20", 'Bronze'),
    Winner('Satish Inani Darpan', 'Chess', "Men's Individual Rapid VI-B1", 'Gold'),
    Winner('Kumar Pradhan Soundarya', 'Chess', "Men's Individual Rapid VI-B1", 'Silver'),
    Winner('Ashwinbhai Kanchanbhai Makwana', 'Chess', "Men's Individual Rapid VI-B1", 'Bronze'),
    Winner('Kishan Gangolli', 'Chess', "Men's Individual Rapid VI-B2/B3", 'Bronze'),
    Winner('Satish Inani Darpan/Kumar Pradhan Soundarya/Ashwinbhai Kanchanbhai Makwana', 'Chess', "Men's Team Rapid VI-B1", 'Gold'),
    Winner('Aryan Joshi/Somendra/Kishan Gangolli', 'Chess', "Men's Team Rapid VI-B2/B3", 'Bronze'),
    Winner('Vruthi Saganlal Jain/ Himanshi Bhaveshkumar Rathi/ Sanskruti Vikas More', 'Chess', "Women's Team Rapid VI-B1", 'Bronze'),
    Winner('Anita/Konganapalle Narayana', 'Rowing', "PR3 Mixed Double Sculls - PR3 Mix2x", 'Silver')

// ... [Add the rest of the data here]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medal Winners')),
      body: Column(
        children: [
          MyBannerAdWidget(), // Add the banner ad here
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Sport')),
                  DataColumn(label: Text('Event')),
                  DataColumn(label: Text('Medal')),
                ],
                rows: winners.map((winner) {
                  return DataRow(cells: [
                    DataCell(
                      Container(
                        width: 150, // You can adjust this value based on your requirement.
                        child: Text(winner.name), // Removed maxLines and overflow properties.
                      ),
                    ),
                    DataCell(Text(winner.sport)),
                    DataCell(Text(winner.event)),
                    DataCell(Text(winner.medal)),
                  ]);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class Winner {
  final String name;
  final String sport;
  final String event;
  final String medal;

  Winner(this.name, this.sport, this.event, this.medal);
}