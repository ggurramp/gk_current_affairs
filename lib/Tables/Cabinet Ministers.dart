import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

void main() {
  runApp(CabinetMinisters());
}

class CabinetMinisters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cabinet Ministers',
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
          title: Text('Cabinet Ministers'),
        ),

        body: ListView( // Wrap the Column with a ListView
            children: [
            MyBannerAdWidget(), // Add the banner ad hereSingleChildScrollView(
           DataTable(
            dataRowHeight: 150.0, // Adjust this value as needed
            decoration: BoxDecoration(color: Colors.white70),border: TableBorder.all(color: Colors.black87),
            columns: [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Ministery')),
            ],
            rows: [
              for (var i = 0; i < data.length; i++)
                DataRow(
                  cells: [
                    DataCell(Text(data[i][0])),
                    DataCell(Text(data[i][1])),
                  ],
                ),
            ],
          ),
        ]),
      ),
    );
  }
}

final List<List<String>> data = [
  ['Shri Narendra Modi(PM)', 'Ministry of Personnel, Public Grievances and Pensions\nDepartment of Atomic Energy\nDepartment of Space'],
  ['Shri Raj Nath Singh', 'Ministry of Defence'],
  ['Shri Amit Shah', 'Ministry of Home Affairs\nMinistry of Cooperation'],
  ['Shri Nitin Jairam Gadkari', 'Ministry of Road Transport and Highways'],
  ['Smt. Nirmala Sitharaman', 'Ministry of Finance\nMinistry of Corporate Affairs'],
  ['Shri Narendra Singh Tomar', 'Ministry of Agriculture & Farmers Welfare'],
  ['Dr. Subrahmanyam Jaishankar', 'Ministry of External Affairs'],
  ['Shri Arjun Munda', 'Ministry of Tribal Affairs'],
  ['Smt. Smriti Zubin Irani', 'Ministry of Women and Child Development\nMinistry of Minority Affairs'],
  ['Shri Piyush Goyal', 'Ministry of Commerce and Industry\nMinistry of Consumer Affairs, Food and Public Distribution\nMinistry of Textiles'],
  ['Shri Dharmendra Pradhan', 'Ministry of Education\nMinistry of Skill Development and Entrepreneurship'],
  ['Shri Pralhad Joshi', 'Ministry of Parliamentary Affairs\nMinistry of Coal\nMinistry of Mines'],
  ['Shri Narayan Tatu Rane', 'Ministry of Micro, Small and Medium Enterprises'],
  ['Shri Sarbananda Sonowal', 'Ministry of Ports, Shipping and Waterways\nMinistry of Ayurveda, Yoga and Naturopathy, Unani, Siddha and Homoeopathy (AYUSH)'],
  ['Dr. Virendra Kumar', 'Ministry of Social Justice and Empowerment'],
  ['Shri Giriraj Singh', 'Ministry of Rural Development\nMinistry of Panchayati Raj'],
  ['Shri Jyotiraditya M. Scindia', 'Ministry of Civil Aviation\nMinistry of Steel'],
  ['Shri Ashwini Vaishnaw', 'Ministry of Railways\nMinistry of Communications\nMinistry of Electronics and Information Technology'],
  ['Shri Pashu Pati Kumar Paras', 'Ministry of Food Processing Industries'],
  ['Shri Gajendra Singh Shekhawat', 'Ministry of Jal Shakti'],
  ['Shri Kiren Rijiju', 'Ministry of Earth Sciences'],
  ['Shri Raj Kumar Singh', 'Ministry of Power\nMinistry of New and Renewable Energy'],
  ['Shri Hardeep Singh Puri', 'Ministry of Petroleum and Natural Gas\nMinistry of Housing and Urban Affairs'],
  ['Shri Mansukh L. Mandaviya', 'Ministry of Health and Family Welfare\nMinistry of Chemicals and Fertilizers'],
  ['Shri Bhupender Yadav', 'Ministry of Environment, Forest and Climate Change\nMinistry of Labour and Employment'],
  ['Dr. Mahendra Nath Pandey', 'Ministry of Heavy Industries'],
  ['Shri Parshottam Rupala', 'Ministry of Fisheries, Animal Husbandry and Dairying'],
  ['Shri G. Kishan Reddy', 'Ministry of Culture\nMinistry of Tourism\nMinistry of Development of North Eastern Region'],
  ['Shri Anurag Singh Thakur', 'Ministry of Information and Broadcasting\nMinistry of Youth Affairs and Sports'],
  ['Dr. Jitendra Singh', 'Ministry of Science and Technology'],
  ['Shri Rao Inderjit Singh', 'Ministry of Statistics and Programme Implementation\nMinistry of Planning'],
  ['Shri Arjun Ram Meghwal', 'Ministry of Law and Justice'],
  ['Shri Rao Inderjit Singh', 'Ministry of Corporate Affairs'],
  ['Dr. Jitendra Singh', 'Prime Minister\'s Office\nMinistry of Personnel, Public Grievances and Pensions\nDepartment of Atomic Energy\nDepartment of Space'],
  ['Shri Shripad Yesso Naik', 'Ministry of Ports, Shipping and Waterways\nMinistry of Tourism'],
  ['Shri Faggansingh Kulaste', 'Ministry of Steel\nMinistry of Rural Development'],
  ['Shri Prahalad Singh Patel', 'Ministry of Jal Shakti\nMinistry of Food Processing Industries'],
  ['Shri Ashwini Kumar Choubey', 'Ministry of Consumer Affairs, Food and Public Distribution\nMinistry of Environment, Forest and Climate Change'],
  ['Shri Arjun Ram Meghwal', 'Ministry of Parliamentary Affairs\nMinistry of Culture'],
  ['General (Retd.) V.K. Singh', 'Ministry of Road Transport and Highways\nMinistry of Civil Aviation'],
  ['Shri Krishan Pal', 'Ministry of Power\nMinistry of Heavy Industries'],
  ['Shri Danve Raosaheb Dadarao', 'Ministry of Railways\nMinistry of Coal\nMinistry of Mines'],
  ['Shri Ramdas Athawale', 'Ministry of Social Justice and Empowerment'],
  ['Sadhvi Niranjan Jyoti', 'Ministry of Consumer Affairs, Food and Public Distribution\nMinistry of Rural Development'],
  ['Shri Sanjeev Kumar Balyan', 'Ministry of Fisheries, Animal Husbandry and Dairying'],
  ['Shri Nityanand Rai', 'Ministry of Home Affairs'],
  ['Shri Pankaj Chaudhary', 'Ministry of Finance'],
  ['Smt. Anupriya Singh Patel', 'Ministry of Commerce and Industry'],
  ['Prof. S. P. Singh Baghel', 'Ministry of Health and Family Welfare'],
  ['Shri Rajeev Chandrasekhar', 'Ministry of Skill Development and Entrepreneurship\nMinistry of Electronics and Information Technology'],
  ['Sushri Shobha Karandlaje', 'Ministry of Agriculture & Farmers Welfare'],
  ['Shri Bhanu Pratap Singh Verma', 'Ministry of Micro, Small and Medium Enterprises'],
  ['Smt. Darshana Vikram Jardosh', 'Ministry of Textiles\nMinistry of Railways'],
  ['Shri V. Muraleedharan', 'Ministry of External Affairs\nMinistry of Parliamentary Affairs'],
  ['Smt. Meenakashi Lekhi', 'Ministry of External Affairs\nMinistry of Culture'],
  ['Shri Som Parkash', 'Ministry of Commerce and Industry'],
  ['Smt. Renuka Singh Saruta', 'Ministry of Tribal Affairs'],
  ['Shri Rameswar Teli', 'Ministry of Petroleum and Natural Gas\nMinistry of Labour and Employment'],
  ['Shri Kailash Choudhary', 'Ministry of Agriculture & Farmers Welfare'],
  ['Smt. Annpurna Devi', 'Ministry of Education'],
  ['Shri A. Narayanaswamy', 'Ministry of Social Justice and Empowerment'],
  ['Shri Kaushal Kishore', 'Ministry of Housing and Urban Affairs'],
  ['Shri Ajay Bhatt', 'Ministry of Defence\nMinistry of Tourism'],
  ['Shri B. L. Verma', 'Ministry of Development of North Eastern Region\nMinistry of Cooperation'],
  ['Shri Ajay Kumar', 'Ministry of Home Affairs'],
  ['Shri Devusinh Chauhan', 'Ministry of Communications'],
  ['Shri Bhagwanth Khuba', 'Ministry of New and Renewable Energy\nMinistry of Chemicals and Fertilizers'],
  ['Shri Kapil Moreshwar Patil', 'Ministry of Panchayati Raj'],
  ['Sushri Pratima Bhoumik', 'Ministry of Social Justice and Empowerment'],
  ['Dr. Subhas Sarkar', 'Ministry of Education'],
  ['Dr. Bhagwat Kishanrao Karad', 'Ministry of Finance'],
  ['Dr. Rajkumar Ranjan Singh', 'Ministry of External Affairs\nMinistry of Education'],
  ['Dr. Bharati Pravin Pawar', 'Ministry of Health and Family Welfare'],
  ['Shri Bishweswar Tudu', 'Ministry of Tribal Affairs\nMinistry of Jal Shakti'],
  ['Shri Shantanu Thakur', 'Ministry of Ports, Shipping and Waterways'],
  ['Dr. Munjapara Mahendrabhai', 'Ministry of Women and Child Development\nMinistry of Ayurveda, Yoga and Naturopathy, Unani, Siddha and Homoeopathy (AYUSH)'],
  ['Shri John Barla', 'Ministry of Minority Affairs'],
  ['Dr. L. Murugan', 'Ministry of Fisheries, Animal Husbandry and Dairying\nMinistry of Information and Broadcasting'],
  ['Shri Nisith Pramanik', 'Ministry of Home Affairs\nMinistry of Youth Affairs and Sports'],
];
