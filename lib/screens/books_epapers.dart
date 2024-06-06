import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../admob/MyInterstitialAdWidget.dart';
import '../oldQuestionPapers/pdfs_competative_exams_books.dart';
import '../oldQuestionPapers/testing.dart';
import '../oldQuestionPapers/upsc.dart';
import '../path_to_my_banner_ad_widget.dart';

class StudyMaterial {
  final String className;
  final Map<String, String> subjects;

  StudyMaterial({required this.className, required this.subjects});
}

class books_epapers extends StatelessWidget {
  final List<StudyMaterial> EPapers = [

    StudyMaterial(
      className: 'Eenadu ',
      subjects: {'Eenadu Epaper'  :  'https://epaper.eenadu.net/',
         },

    ),
    StudyMaterial(
      className: 'Sakshi  ',
      subjects: {'Sakshi Epaper'  :  'https://epaper.sakshi.com/',
          },

    ),
    StudyMaterial(
      className: 'ABN',
      subjects: {'ABN EPaper'  :  'https://epaper.andhrajyothy.com/',
          },

    ),
    StudyMaterial(
      className: 'Namaste Telangana ',
      subjects: {'Namaste Telangana Epaper'  :  'https://epaper.ntnews.com/',
        },

    ),
    StudyMaterial(
      className: 'Telangana Today',
      subjects: {'Telangana Today':'https://epaper.telanganatoday.com/',
       },
    ),
      StudyMaterial(
        className: 'Hindustan Times',
        subjects: {'Telangana Today':'https://epaper.hindustantimes.com/',
        },


    ),
    // ... more AP books
  ];
  // Assume you have different lists for AP Books, TS Books, and NCERT
  final List<StudyMaterial> apBooks = [

    StudyMaterial(
      className: '10th Class',
      subjects: {'Biology_EM_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Biology%20Books/10_Biology_EM_Textbook.pdf/10',
        'Biology_TM_Textbook'          :  'https://cse.ap.gov.in/downloadBooks/Biology%20Books/10_Biology_TM_Textbook.pdf/10',
        'EVS_EM_Textbook'         :         'https://cse.ap.gov.in/downloadBooks/EVS%20Books/10_EVS_EM_Textbook.pdf/10',
        'EVS_TM_Textbook'               :    'https://cse.ap.gov.in/downloadBooks/EVS%20Books/10_EVS_TM_Textbook.pdf/10',
        'Maths_EM_Textbook'                    :   'https://cse.ap.gov.in/downloadBooks/Maths%20Books/10_Maths_EM_Textbook.pdf/10',
        'Maths_TM_Textbook'    : 'https://cse.ap.gov.in/downloadBooks/Maths%20Books/10_Maths_TM_Textbook.pdf/10',
        'Physics_EM_Textbook' :  'https://cse.ap.gov.in/downloadBooks/Physics%20Books/10_Physics_EM_Textbook.pdf/10',
        'Physics_TM_Textbook'               : 'https://cse.ap.gov.in/downloadBooks/Physics%20Books/10_Physics_TM_Textbook.pdf/10',
        'Social_EM_Textbook'             :  'https://cse.ap.gov.in/downloadBooks/Social%20Books/10_Social_EM_Textbook.pdf/10',
        'Social_TM_Textbook'         : 'https://cse.ap.gov.in/downloadBooks/Social%20Books/10_Social_TM_Textbook.pdf/10',
        },

    ),
    StudyMaterial(
      className: '9th Class ',
      subjects: {'Biology_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Biology%20Books/9_Biology_Textbook.pdf/9',
        'EVS_Textbook' :  'https://cse.ap.gov.in/downloadBooks/EVS%20Books/9_EVS_Textbook.pdf/9',
        'Maths_SEM-1_Textbook'  :   'https://cse.ap.gov.in/downloadBooks/Maths%20Books/9_Maths_SEM-1_Textbook.pdf/9',
        'Maths_SEM-2_Textbook'    :  'https://cse.ap.gov.in/downloadBooks/Maths%20Books/9_Maths_SEM-2_Textbook.pdf/9',
        'Physics_SEM-1_Textbook' :  'https://cse.ap.gov.in/downloadBooks/Physics%20Books/9_Physics_SEM-1_Textbook.pdf/9',
        'Physics_SEM-2_Textbook'  : 'https://cse.ap.gov.in/downloadBooks/Physics%20Books/9_Physics_SEM-2_Textbook.pdf/9',
        'Social_Geography_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Social%20Books/9_Social_Geography_Textbook.pdf/9',
        'Social_Politics_Textbook' : 'https://cse.ap.gov.in/downloadBooks/Social%20Books/9_Social_Politics_Textbook.pdf/9',
        'Social_History_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Social%20Books/9_Social_History_Textbooks.pdf/9',
        'Social_Economics_Textbook' : 'https://cse.ap.gov.in/downloadBooks/Social%20Books/9_Social_Economics_Textbook.pdf/9',
        'Telugu_Upavachakam_FL': 'https://cse.ap.gov.in/downloadBooks/Telugu%20Books/9_Telugu_Upavachakam_FL.pdf/9',
         },

    ),
    StudyMaterial(
      className: '8th Class',
      subjects: {'Biology_SEM-1_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Biology%20Books/8_Biology_SEM-1_Textbook.pdf/8',
        'Biology_SEM-2_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Biology%20Books/8_Biology_SEM-2_Textbook.pdf/8',
        'EVS_Textbook' :  'https://cse.ap.gov.in/downloadBooks/EVS%20Books/8_EVS_Textbook.pdf/8',
        'Maths_SEM-1_Textbook'  :   'https://cse.ap.gov.in/downloadBooks/Maths%20Books/8_Maths_SEM-1_Textbook.pdf/8',
        'Maths_SEM-2_Textbook'    :  'https://cse.ap.gov.in/downloadBooks/Maths%20Books/8_Maths_SEM-2_Textbook.pdf/8',
        'Physics_SEM-1_Textbook' :  'https://cse.ap.gov.in/downloadBooks/Physics%20Books/8_Physics_SEM-1_Textbook.pdf/8',
        'Physics_SEM-2_Textbook'  : 'https://cse.ap.gov.in/downloadBooks/Physics%20Books/8_Physics_SEM-2_Textbook.pdf/8',
        'Social_Geography_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Social%20Books/8_Social_Geography_Textbook.pdf/8',
        'Social_Politics_Textbook' : 'https://cse.ap.gov.in/downloadBooks/Social%20Books/8_Social_Politics_Textbook.pdf/8',
        'Social_History_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/Social%20Books/8_Social_History_Textbook.pdf/8',
      },

    ),
    StudyMaterial(
      className: '7th Class ',
      subjects: {'EVS_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/EVS%20Books/7_EVS_Textbook.pdf/7',
        'General Science_SEM-1_Textbook' :  'https://cse.ap.gov.in/downloadBooks/General%20Science%20Books/7_General%20Science_SEM-1_Textbook.pdf/7',
        'General Science_SEM-2_Textbook'  :  'https://cse.ap.gov.in/downloadBooks/General%20Science%20Books/7_General%20Science_SEM-2_Textbook.pdf/7',
        'Maths_SEM-1_Textbook'  :    'https://cse.ap.gov.in/downloadBooks/Maths%20Books/7_Maths_SEM-1_Textbook.pdf/7',
        'Maths_SEM-2_Textbook'  :   'https://cse.ap.gov.in/downloadBooks/Maths%20Books/7_Maths_SEM-2_Textbook.pdf/7',
        },

    ),
    StudyMaterial(
      className: '6th Class',
      subjects: {'EVS_Textbook':'https://cse.ap.gov.in/downloadBooks/EVS%20Books/6_EVS_Textbook.pdf/6',
        'General Science_SEM-1_Textbook':'https://cse.ap.gov.in/downloadBooks/General%20Science%20Books/6_General%20Science_SEM-1_Textbook.pdf/6',
        'General Science_SEM-2_Textbook': 'https://cse.ap.gov.in/downloadBooks/General%20Science%20Books/6_General%20Science_SEM-2_Textbook.pdf/6',
        'Social_SEM-1_Textbook' : 'https://cse.ap.gov.in/downloadBooks/Social%20Books/6_Social_SEM-1_Textbook.pdf/6',
        'Social_SEM-2_Textbook':'https://cse.ap.gov.in/downloadBooks/Social%20Books/6_Social_SEM-2_Textbook.pdf/6',
         },

    ),
    // ... more AP books
  ];

  final List<StudyMaterial> tsBooks = [

    StudyMaterial(
      className: '10th Class',
      subjects: {'Mathematics Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20maths%20tm%202021.pdf', 'Physical Science Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20physics%20tm%202021.pdf','Biological Science Telugu ': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20biology%20tm%202021.pdf','Social Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20social%20tm-21.pdf', 'Environmental Education Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20env%20edn%20tm%202021.pdf','Mathematics English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20maths%20em%202021.pdf', 'Physical Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20physics%20em%202021.pdf','Biological Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20biology%20em%202021.pdf', 'Social English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20social%20em-21.pdf', "Environmental Education English": "https://scert.telangana.gov.in/pdf/publication/ebooks2019/10%20env%20edn%20em%202021.pdf"},

    ),
    StudyMaterial(
      className: '9th Class ',
      subjects: {'Mathematics Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20maths%20tm%202021.pdf', 'Physical Science Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20physics%20bil%20part%201%202022-23.pdf','Biological Science ': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20biology%20tm%202021.pdf','Social Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20social%20tm-21.pdf', 'Environmental Education Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20env%20edn%20tm%202021.pdf','Mathematics English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20maths%20em%202021.pdf', 'Physical Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20physics%20em%202021.pdf','Biological Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20biology%20em%202021.pdf', 'Social English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20social%20em-21.pdf', "Environmental Education English": "https://scert.telangana.gov.in/pdf/publication/ebooks2019/9%20env%20edn%20em%202021.pdf" },

    ),
    StudyMaterial(
      className: '8th Class',
      subjects: {'Mathematics Part-I Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20maths%20bil%20(em%20tm)%20part%201%20(after%20tb%20corrections)%2011-04-22.pdf', 'Mathematics Part-II Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20maths%20bil%20(em%20tm)%20part%202%20(after%20tb%20corrections)%2012-04-22.pdf','Physical Science Part 1 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20physics%20bil%20part%201%202022-23.pdf', 'Physical Science Part 2 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20physics%20bil%20part%202%202022-23.pdf','Biological Science Part-I Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20biology%20bil%20part%201%202022-23.pdf', 'Biological Science Part-2 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20biology%20bil%20part%202%202022-23.pdf','Social Part-I Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8th%20social%2022-23%20part1%202022-23.pdf', 'Social Part-2 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8th%20social%2022-23%20part2%202022-23.pdf','Mathematics English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20maths%20em%202021.pdf', 'Physical Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20physics%20em%202021.pdf','Biological Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20biology%20em%202021.pdf', 'Social English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/8%20social%20em-21.pdf'},

    ),
    StudyMaterial(
      className: '7th Class ',
      subjects: {'Mathematics Part-I Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7%20maths%20part1%202022-23.pdf', 'Mathematics Part-II Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7%20maths%20part2%202022-23.pdf','General Science 1 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7%20gen%20science%20part-1%202022-23.pdf', 'General Science 2 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7%20gen%20science%20part-2-2022-23.pdf','Social 1 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7th%20social%20part1%202022-23.pdf', 'General Science 2 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7th%20social%20part2%202022-23.pdf','Mathematics English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7%20maths%20em%202021.pdf', 'General Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7%20general%20science%20em%202021.pdf','Social English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/7%20social%20em-21.pdf'},

    ),
    StudyMaterial(
      className: '6th Class',
      subjects: {'General Science 1 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/6%20gen%20science%20part-1%202022-23.pdf','General Science 2 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/6%20gen%20science%20part-2%202022-23.pdf', 'Social 1 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/6th%20social%20part-1%202022-23.pdf','Social 2 Telugu': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/6th%20social%20part-2%202022-23.pdf', 'General Science English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/6%20science%20em%202021.pdf','Social English': 'https://scert.telangana.gov.in/pdf/publication/ebooks2019/6%20social%20em-21.pdf'},

    ),
    // ... more TS books
  ];

  final List<StudyMaterial> ncertBooks = [

    StudyMaterial(
      className: '10th Class',
      subjects: {'Mathematics Part-I'  :  'https://ncert.nic.in/textbook/pdf/lemh1dd.zip',
        'Mathematics Part-II' :   'https://ncert.nic.in/textbook/pdf/lemh2dd.zip',
        'Physics Part-I'      :     'https://ncert.nic.in/textbook/pdf/leph1dd.zip',
        'Physics Part-II'      :        'https://ncert.nic.in/textbook/pdf/leph2dd.zip',
        'Accountancy Part I'    : 'https://ncert.nic.in/textbook/pdf/leac1dd.zip',
        'Accountancy Part II'     :  'https://ncert.nic.in/textbook/pdf/leac2dd.zip',
        'Biology'           :     'https://ncert.nic.in/textbook/pdf/lebo1dd.zip',
        'Themes in Indian History-I'   :  'https://ncert.nic.in/textbook/pdf/lehs1dd.zip',
        'Themes in Indian History-II'   :  'https://ncert.nic.in/textbook/pdf/lehs2dd.zip',
        'Themes in Indian History-III'   :  'https://ncert.nic.in/textbook/pdf/lehs3dd.zip',
        'Fundamentals of Human Geography'  : 'https://ncert.nic.in/textbook/pdf/legy1dd.zip',
        'Practical Work in Geography Part II'    : 'https://ncert.nic.in/textbook/pdf/legy3dd.zip',
        'Psychology'    :     'https://ncert.nic.in/textbook/pdf/lepy1dd.zip',
        'Indian Society'   :  'https://ncert.nic.in/textbook/pdf/lesy1dd.zip',
        'chemistry I'     :   'https://ncert.nic.in/textbook/pdf/lech1dd.zip',
        'chemistry II'    :   'https://ncert.nic.in/textbook/pdf/lech2dd.zip',
        'Contemporary World Politics'  :   'https://ncert.nic.in/textbook/pdf/leps1dd.zip',
        'Introductory Microeconomics'  : 'https://ncert.nic.in/textbook/pdf/leec2dd.zip',
        'Introductory Macroeconomics' :  'https://ncert.nic.in/textbook/pdf/leec1dd.zip',
        'Business Studies I'                         : 'https://ncert.nic.in/textbook/pdf/lebs1dd.zip',
        'Human Ecology and Family Sciences Part I'   : 'https://ncert.nic.in/textbook/pdf/lehe1dd.zip',
        'Human Ecology and Family Sciences Part II' :  'https://ncert.nic.in/textbook/pdf/lehe2dd.zip',},

    ),
    StudyMaterial(
      className: '9th Class ',
      subjects: {'Financial Accounting-I'  :  'https://ncert.nic.in/textbook/pdf/keac1dd.zip',
        'Accountancy-II'          :  'https://ncert.nic.in/textbook/pdf/keac2dd.zip',
        'Chemistry Part-I'         :         'https://ncert.nic.in/textbook/pdf/kech1dd.zip',
        'Mathematics'               :    'https://ncert.nic.in/textbook/pdf/kemh1dd.zip',
        'Biology'                    :   'https://ncert.nic.in/textbook/pdf/kebo1dd.zip',
        'Psychology'    :                'https://ncert.nic.in/textbook/pdf/kepy1dd.zip',
        'Fundamental of Physical Geography' :  'https://ncert.nic.in/textbook/pdf/kegy2dd.zip',
        'Physics Part-I'               : 'https://ncert.nic.in/textbook/pdf/keph1dd.zip',
        'Physics Part-II'             :  'https://ncert.nic.in/textbook/pdf/keph2dd.zip',
        'Introducing Sociology'         : 'https://ncert.nic.in/textbook/pdf/kesy1dd.zip',
        'Political Theory'             :   'https://ncert.nic.in/textbook/pdf/keps1dd.zip',
        'history'                     :    'https://ncert.nic.in/textbook/pdf/keps1dd.zip',
        'Indian Economic Development'  :   'https://ncert.nic.in/textbook/pdf/keec1dd.zip',
        'Statistics for Economics'      :  'https://ncert.nic.in/textbook/pdf/kest1dd.zip',
        'Business Studies'               : 'https://ncert.nic.in/textbook/pdf/kebs1dd.zip'},

    ),
    StudyMaterial(
      className: '8th Class',
        subjects: {'Science': 'https://ncert.nic.in/textbook/pdf/hesc1dd.zip',
          'Resource and Development(Geography)': 'https://ncert.nic.in/textbook/pdf/hess4dd.zip',
          'Social And Political Life': 'https://ncert.nic.in/textbook/pdf/hess3dd.zip',
          'Our Past III': 'https://ncert.nic.in/textbook/pdf/hess2dd.zip',
        }
    ),
    StudyMaterial(
      className: '7th Class ',
      subjects: {'Mathematics'  :  'https://ncert.nic.in/textbook/pdf/gemh1dd.zip',
        'Social Political Life-2':  'https://ncert.nic.in/textbook/pdf/gess3dd.zip',
        'Our Pasts II'         :         'https://ncert.nic.in/textbook/pdf/gess1dd.zip',
        'Geography-Our Environment' :    'https://ncert.nic.in/textbook/pdf/gess2dd.zip',
  },
    ),
    StudyMaterial(
      className: '6th Class',
      subjects: {'Mathematics': 'https://ncert.nic.in/textbook/pdf/femh1dd.zip',
        'History-Our Past 1': 'https://ncert.nic.in/textbook/pdf/fess1dd.zip',
        'Chemistry Part-I': 'https://ncert.nic.in/textbook/pdf/kech1dd.zip',
        'Earth Our Habitat': 'https://ncert.nic.in/textbook/pdf/fess2dd.zip',
        'Social And Political Life': 'https://ncert.nic.in/textbook/pdf/fess3dd.zip',
      },
    ),


    // ... more NCERT books
  ];


  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildMaterialList(List<StudyMaterial> materials) {
    return ListView.builder(
      itemCount: materials.length,
      itemBuilder: (context, index) {
        var material = materials[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          elevation: 4.0,
          child: ExpansionTile(
            leading: Icon(Icons.book, color: Theme.of(context).primaryColor), // Icon for visual cue
            title: Text(
              material.className,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0, // Larger font size for title
                color: Theme.of(context).primaryColor, // Theme-based color for consistency
              ),
            ),
            childrenPadding: EdgeInsets.all(8.0),
            children: material.subjects.entries.map((entry) {
              return ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.arrow_right, color: Theme.of(context).colorScheme.secondary), // Updated color reference
                title: Text(
                  entry.key,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary, // Updated color reference
                  ),
                ),
                subtitle: Text(
                  entry.value,
                  style: TextStyle(
                    color: Colors.black, // A softer color for subtitle
                  ),
                ),
                onTap: () {
                  _launchURL(entry.value);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          //   backgroundColor: Colors.blue,
          // title: Text('E-Books'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'E-Papers'),
              Tab(text: 'Books'),
              Tab(text: 'AP(NCERT)'),
              Tab(text: 'TS Books'),
              Tab(text: 'NCERT'),
              // Tab(text: ''),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: TabBarView(
            children: [
              buildMaterialList(EPapers),
              pdfs_competative_exams_books(),
              buildMaterialList(apBooks),
              buildMaterialList(tsBooks),
              buildMaterialList(ncertBooks),
              MyInterstitialAdWidget(
                adUnitId: 'ca-app-pub-8650911541008756/7410489682', // Provide your interstitial ad unit ID here
              ),
            ],
          ),
        ),
      ),
    );
  }

}
