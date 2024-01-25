import 'package:flutter/material.dart';

class MedalWinnersTable extends StatefulWidget {
  @override
  _MedalWinnersTableState createState() => _MedalWinnersTableState();
}

class _MedalWinnersTableState extends State<MedalWinnersTable> {
  final List<Winner> winners = [
    Winner('Divyansh Panwar, Rudrankksh Patil, Aishwary Tomar', 'Shooting', "Men's 10m air rifle team", 'Gold'),
    Winner('India women\'s national cricket team', 'Cricket', "Women's tournament", 'Gold'),
    Winner('Anush Agarwalla, Divyakirti Singh, Hriday Chheda, Sudipt Hajela', 'Equestrian', 'Team dressage', 'Gold'),
    Winner('Esha Singh, Manu Bhaker, Rhythm Sangwan', 'Shooting', 'Women\'s 25m pistol team', 'Gold'),
    Winner('Sifat Kaur Sarma', 'Shooting', 'Women\'s 50m rifle three positions', 'Gold'),
    Winner('Arjun Cheema, Sarabjot Singh, Shiva Narwal', 'Shooting', 'Men\'s 10m air pistol team', 'Gold'),
    Winner('Aishwary Tomar, Swapnil Kusale, Akhil Sheoran', 'Shooting', 'Men\'s 50m rifle three positions team', 'Gold'),
    Winner('Palak Gulia', 'Shooting', 'Women\'s 10m air pistol', 'Gold'),
    Winner('Rohan Bopanna, Rutuja Bhosale', 'Lawn Tennis', 'Mixed doubles', 'Gold'),
    Winner('Saurav Ghosal, Mahesh Mangaonkar, Abhay Singh, Harinder Pal Sandhu', 'Squash', 'Men\'s team', 'Gold'),
    Winner('Kynan Chenai, Zoravar Singh', 'Shooting', 'Men\'s trap team', 'Gold'),
    Winner('Prithviraj Tondaiman', 'Shooting', 'Men\'s trap', 'Gold'),
    Winner('Avinash Sable', 'Athletics', 'Men\'s 3000m steeplechase', 'Gold'),
    Winner('Tajinderpal Singh Toor', 'Athletics', 'Men\'s shot put', 'Gold'),
    Winner('Parul Chaudhary', 'Athletics', 'Women\'s 5000 m', 'Gold'),
    Winner('Annu Rani', 'Athletics', 'Women\'s javelin throw', 'Gold'),
    Winner('Jyothi Surekha, Ojas Deolate', 'Archery', 'Mixed team compound', 'Gold'),
    Winner('Neeraj Chopra', 'Athletics', 'Men\'s javelin throw', 'Gold'),
    Winner('Amoj Jacob, Mohammad Anas, Rajesh Ramesh, Muhammad Ajmal', 'Athletics', 'Men\'s 4 x 400 m relay', 'Gold'),
    Winner('Aditi Swami, Parmeet Kaur, Jyothi Surekha', 'Archery', 'Women\'s team compound', 'Gold'),
    Winner('Harinder Pal Sandhu, Dipika Pallikal', 'Squash', 'Mixed doubles', 'Gold'),
    Winner('Abhishek Verma, Prathamesh Jawkar, Ojas Deolate', 'Archery', 'Men\'s team compound', 'Gold'),

    Winner('India men\'s national field hockey team', 'Field hockey', 'Men\'s tournament', 'Gold'),
    Winner('Jyothi Surekha', 'Archery', 'Women compound individual', 'Gold'),
    Winner('Ojas Deolate', 'Archery', 'Men compound individual', 'Gold'),
    Winner('India women\'s national kabaddi team', 'Kabaddi', 'Women\'s team', 'Gold'),
    Winner('Chirag Shetty, Satwiksairaj Rankireddy', 'Badminton', 'Men\'s doubles', 'Gold'),
    Winner('India men\'s national cricket team', 'Cricket', 'Men\'s tournament', 'Gold'),
    Winner('India men\'s national kabaddi team', 'Kabaddi', 'Men\'s team', 'Gold'),
    Winner('Mehuli Ghosh, Aashi Choudksey', 'Shooting', 'Women\'s 10m air rifle team', 'Silver'),
    Winner('Arvind Singh, Arjun Lal Jat', 'Rowing', 'Men\'s Lightweight double sculls', 'Silver'),
    Winner('Jaswinder Singh, Naresh Kalwaniya, Bheem Singh, Neetish Kumar, Punit Kumar, Charanjeet Singh, Ashish Golyan, Dhananjay Pande, Neeraj Maan', 'Rowing', 'Men\'s Coxed eight', 'Silver'),
    Winner('Neha Thakur', 'Sailing', 'Girl\'s Dinghy ILC4', 'Silver'),
    Winner('Ashi Chouksey, Manini Kaushik, Sift Kaur Samra', 'Shooting', 'Women\'s 50m rifle three positions team', 'Silver'),
    Winner('Esha Singh', 'Shooting', 'Women\'s 25m pistol', 'Silver'),
    Winner('Ananjeet Singh Naruka', 'Shooting', 'Men\'s skeet', 'Silver'),
    Winner('Naorem Roshibina Devi', 'Wushu', 'Women\'s sanda 60kg', 'Silver'),
    Winner('Divya T. S., Palak Gulia, Esha Singh', 'Shooting', 'Women\'s 10m air pistol team', 'Silver'),
    Winner('Saketh Myneni, Ramkumar Ramanathan', 'Lawn Tennis', 'Men\'s doubles', 'Silver'),
    Winner('Esha Singh', 'Shooting', 'Women\'s 10m air pistol', 'Silver'),
    Winner('Aishwary Pratap Singh Tomar', 'Shooting', 'Men\'s 50m rifle three positions', 'Silver'),
    Winner('Sarabjot Singh, Divya T. S.', 'Shooting', 'Mixed 10 metre air pistol', 'Silver'),
    Winner('Kartik Kumar', 'Athletics', 'Men\'s 10,000 m', 'Silver'),
    Winner('Aditi Ashok', 'Golf', 'Women\'s Individual', 'Silver'),
    Winner('Manisha Keer, Rajeshwari Kumari, Preeti Rajak', 'Shooting', 'Women\'s trap team', 'Silver'),
    Winner('Harmilan Bains', 'Athletics', 'Women\'s 1500 m', 'Silver'),
    Winner('Ajay Kumar Saroj', 'Athletics', 'Men\'s 1500 m', 'Silver'),
    Winner('Murali Sreeshankar', 'Athletics', 'Men\'s long jump', 'Silver'),
    Winner('Jyothi Yarraji', 'Athletics', 'Women\'s 100 m hurdles', 'Silver'),
    Winner('Lakshya Sen, Satwiksairaj Rankireddy, Srikanth Kidambi, Arjun M.R., Prannoy H. S., Dhruv Kapila, Mithun Manjunath, Rohan Kapoor, Chirag Shetty, K. Sai Pratheek', 'Badminton', 'Men\'s team', 'Silver'),
    Winner('Parul Chaudhary', 'Athletics', 'Women\'s 3000 m steeplechase', 'Silver'),
    Winner('Ancy Sojan', 'Athletics', 'Women\'s long jump', 'Silver'),
    Winner('Muhammad Ajmal, Rajesh Ramesh, Vithya Ramraj, Subha Venkatesan', 'Athletics', 'Mixed 4x400 m relay', 'Silver'),
    Winner('Mohammed Afsal', 'Athletics', 'Men\'s 800 m', 'Silver'),
    Winner('Tejaswin Shankar', 'Athletics', 'Men\'s decathlon', 'Silver'),
    Winner('Lovlina Borgohain', 'Boxing', 'Women\'s 75 kg', 'Silver'),
    Winner('Harmilan Bains', 'Athletics', 'Women\'s 800 m', 'Silver'),
    Winner('Avinash Sable', 'Athletics', 'Men\'s 5000 m', 'Silver'),
    Winner('Vithya Ramraj, Aishwarya Mishra, Subha Venkatesan, Prachi Choudhary', 'Athletics', 'Women\'s 4 x 400 m relay', 'Silver'),
    Winner('Kishore Jena', 'Athletics', 'Men\'s javelin throw', 'Silver'),
    Winner('Saurav Ghosal', 'Squash', 'Men\'s singles', 'Silver'),
    Winner('Atanu Das, Tushar Shelke, Dhiraj Bommadevara', 'Archery', 'Men\'s recurve team', 'Silver'),
    Winner('Jaggy Shivdasani, Sumit Mukherjee, Sandeep Thakral, Raju Tolani, Rajeshwar Tiwari, Ajay Khare', 'Bridge', 'Men\'s team', 'Silver'),
    Winner('Abhishek Verma', 'Archery', 'Men compound individual', 'Silver'),
    Winner('Deepak Punia', 'Wrestling', 'Men\'s freestyle 86 kg', 'Silver'),
    Winner('Gukesh D, Arjun Erigaisi, R Praggnanandhaa, Pentala Harikrishna, Vidit Gujrathi', 'Chess', 'Men\'s team', 'Silver'),
    Winner('Koneru Humpy, Vantika Agrawal, Harika Dronavalli, Savitha Shri B, R Vaishali', 'Chess', 'Women\'s team', 'Silver'),
    Winner('Babu Lal Yadav, Lekh Ram', 'Rowing', 'Men\'s Coxless pair', 'Bronze'),
    Winner('Ramita Jindal', 'Shooting', 'Women\'s 10m air rifle', 'Bronze'),
    Winner('Jaswinder Singh, Punit Kumar, Bheem Singh, Ashish', 'Rowing', 'Men\'s Coxless four', 'Bronze'),
    Winner('Satnam Singh, Jakar Khan, Parminder Singh, Sukhmeet Singh', 'Rowing', 'Men\'s Quadruple sculls', 'Bronze'),
    Winner('Aishwary Pratap Singh Tomar', 'Shooting', 'Men\'s 10m air rifle', 'Bronze'),
    Winner('Adarsh Singh, Anish Bhanwala, Vijayveer Sidhu', 'Shooting', 'Men\'s 25m rapid fire pistol team', 'Bronze'),
    Winner('Eabadd Ali', 'Sailing', 'Men\'s Windsurfer RS:X', 'Bronze'),
    Winner('Ashi Chouksey', 'Shooting', 'Women\'s 50m rifle three positions', 'Bronze'),
    Winner('Gurjoat Singh, Angad Vir Singh, Ananjeet Naruka', 'Shooting', 'Men\'s skeet team', 'Bronze'),
    Winner('Vishnu Saravanan', 'Sailing', 'Men\'s dinghy ILC4.7', 'Bronze'),
    Winner('Anush Agarwalla', 'Equestrian', 'Individual dressage', 'Bronze'),
    Winner('Joshna Chinappa, Anahat Singh, Dipika Pallikal, Tanvi Khanna', 'Squash', 'Women\'s team', 'Bronze'),
    Winner('Kiran Baliyan', 'Athletics', 'Women\'s shot put', 'Bronze'),
    Winner('Gulveer Singh', 'Athletics', 'Men\'s 10,000 m', 'Bronze'),
    Winner('Kynan Chenai', 'Shooting', 'Men\'s trap', 'Bronze'),
    Winner('Nijjat Zareen', 'Boxing', 'Women\'s 50 kg', 'Bronze'),
    Winner('Jinson Johnson', 'Athletics', 'Men\'s 1500 m', 'Bronze'),
    Winner('Seema Punia', 'Athletics', 'Women\'s discus throw', 'Bronze'),
    Winner('Agsara Nandini', 'Athletics', 'Women\'s Heptathlon', 'Bronze'),
    Winner('Vikram Ingale, Aryangpal Singh, Siddhant Kamble, Anand Kumar', 'Roller sports', 'Men\'s Speed skating 3,000 m relay', 'Bronze'),
    Winner('Aarathy Kasturiraj, Heeral Sadhu, Karthika Jagadeeswaran, Sanjana Bathula', 'Roller sports', 'Women\'s Speed skating 3,000 m relay', 'Bronze'),
    Winner('Sudritna Mukherjee, Ayhika Mukherjee', 'Table tennis', 'Women\'s doubles', 'Bronze'),
    Winner('Priti Lamba', 'Athletics', 'Women\'s 3000 m steeplechase', 'Bronze'),
    Winner('Arjun Singh, Sunil Singh', 'Canoeing', 'Men\'s sprint C-2 1000 m', 'Bronze'),
    Winner('Preeti Pawar', 'Boxing', 'Women\'s 54 kg', 'Bronze'),
    Winner('Vithya Ramraj', 'Athletics', 'Women\'s 400 m hurdles', 'Bronze'),
    Winner('Praveen Chhitarwel', 'Athletics', 'Men\'s triple jump', 'Bronze'),
    Winner('Narinder Berwal', 'Boxing', 'Men\'s +92 kg', 'Bronze'),
    Winner('Ram Baboo, Manju Rani', 'Athletics', 'Mixed team 35 km race walk', 'Bronze'),
    Winner('Abhay Singh, Anahat Singh', 'Squash', 'Mixed doubles', 'Bronze'),
    Winner('Parveen Hooda', 'Boxing', 'Women\'s 57 kg', 'Bronze'),
    Winner('Sunil Kumar', 'Wrestling', 'Men\'s Greco-Roman 87 kg', 'Bronze'),
    Winner('Amitn Panghal', 'Wrestling', 'Women\'s freestyle 53 kg', 'Bronze'),
    Winner('Ankita Bhakat, Bhajan Kaur, Simranjeet Kaur', 'Archery', 'Women\'s team recurve', 'Bronze'),
    Winner('Prannoy H. S.', 'Badminton', 'Men\'s singles', 'Bronze'),
    Winner('Priya Devi Elangbam, Chaoba Devi Onam, Khushbu, Bi Devi Elangbam', 'Sepak takraw', 'Women\'s regu', 'Bronze'),
    Winner('Mipakai Devi Ayekpam', 'Wrestling', 'Women\'s freestyle 62kg', 'Bronze'),
    Winner('Sonam Malik', 'Wrestling', 'Women\'s freestyle 76kg', 'Bronze'),
    Winner('Aman Sehrawat', 'Wrestling', 'Men\'s freestyle 57kg', 'Bronze'),
    Winner('Aditi Sawmi', 'Archery', 'Women compound individual', 'Bronze'),
    Winner('India women\'s national field hockey team (Deepika, Ishika Chaudhary, Lorena Masilamani, Vandana Kataria, Navneet Kaur, Neha Goyal, Bichu Devi Kharibam, Sangita Kumari, Nisha Warsi, Sushila Chanu, Salima Tete, Nikki Pradhan, Udita Duhan, Lalremsiami)', 'Field hockey', 'Women\'s tournament', 'Bronze'),

// ... [Add the rest of the data here]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medal Winners')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            dataRowHeight: 150.0, // Adjust this value as needed
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
                      width: 150,  // You can adjust this value based on your requirement.
                      child: Text(winner.name), // Removed maxLines and overflow properties.
                    )
                ),
                DataCell(Text(winner.sport)),
                DataCell(Text(winner.event)),
                DataCell(Text(winner.medal)),
              ]);
            }).toList(),
          ),
        ),
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