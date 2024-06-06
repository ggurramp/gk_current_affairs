import 'package:flutter/material.dart';
import 'package:gk_current_affairs/oldQuestionPapers/rpf_all.dart';
import 'package:gk_current_affairs/path_to_my_banner_ad_widget.dart';
import 'package:gk_current_affairs/pdf.dart';
import 'package:gk_current_affairs/screens/ScrollableTabs.dart';
import 'package:gk_current_affairs/screens/books_epapers.dart';

import '../PdfViewerPage.dart';
import '../admob/MyInterstitialAdWidget.dart';
import 'ap.dart';
import 'testing.dart';
import 'ts.dart';
import 'upsc.dart';

class FormulaTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true, // Enable scrolling for tabs
            tabs: [
              Tab(text: 'UPSC'),
              Tab(text: 'AP'),
              Tab(text: 'TS'),
              Tab(text: 'RPF'),
            //  Tab(text: 'TeSting'),
              // Tab(text: 'Aptitude'),
              // Tab(text: 'Books'),
              // Tab(text: 'Old Question Papers'),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  pdfs_upsc_all(),
                  pdfs_ap_all(),
                  pdfs_ts_all(),
                  rpf_all(),

                  // AptitudeFormulasPage(),
                  // PdfViewerPage(),
                  // ScrollableTabsScreen(),
                ],
              ),
            ),
            MyInterstitialAdWidget(
              adUnitId: 'ca-app-pub-8650911541008756/7410489682', // Provide your interstitial ad unit ID here
            ),
          ],
        ),
      ),
    );
  }
}


class AptitudeFormulasPage extends StatelessWidget {

  final List<String> aptitudeFormulas = [
    "ALGEBRA :\n1.Sum of first n natural numbers = n(n+1)/2 \n2.Sum of the squares of first n natural numbers = n(n+1)(2n+1)/6 \n3.Sum of the cubes of first n natural numbers = [n(n+1)/2]2 \n4.Sum of first n natural odd numbers = n2 \n5.Average = (Sum of items)/Number of items"
        "\n\nARITHMETIC PROGRESSION  (A.P.):\n\nAn A.P. is of the form a, a+d, a+2d, a+3d, ... where a is called the 'first term' and d is called the 'common difference' \n1.nth term of an A.P. tn = a + (n-1)d \n2.Sum of the first n terms of an A.P. Sn = n/2[2a+(n-1)d] or Sn = n/2(first term + last term)"
        "\n\nGeometrical Progression (G.P.):\n\nA G.P. is of the form a, ar, ar2, ar3, ... where a is called the 'first term' and r is called the 'common ratio'. \n1.nth term of a G.P. tn = arn-1 \n2.Sum of the first n terms in a G.P. Sn = a|1-rn|/|1-r|"
        '\n\nPermutations and Combinations :\n\n1.nPr = n!/(n-r)! \n2.nPn = n! \n3.nP1 = n  \n\n1.nCr = n!/(r! (n-r)!) \n2.nC1 = n \n3.nC0 = 1 = nCn \n4.nCr = nCn-r \n5.nCr = nPr/r'

        "\n\nTests of Divisibility:\n\n1.A number is divisible by 2 if it is an even number. \n2.A number is divisible by 3 if the sum of the digits is divisible by 3. \n3.A number is divisible by 4 if the number formed by the last two digits is divisible by 4.\n4.A number is divisible by 5 if the units digit is either 5 or 0. \n5.A number is divisible by 6 if the number is divisible by both 2 and 3. \n6.A number is divisible by 8 if the number formed by the last three digits is divisible by 8. \n7.A number is divisible by 9 if the sum of the digits is divisible by 9. \n8.A number is divisible by 10 if the units digit is 0. \n9.A number is divisible by 11 if the difference of the sum of its digits at odd places and the sum of its digits at even places, is divisible by 11."
        "\n\nH.C.F and L.C.M :\n\nH.C.F stands for Highest Common Factor. The other names for H.C.F are Greatest Common Divisor (G.C.D) and Greatest Common Measure (G.C.M).\n The H.C.F. of two or more numbers is the greatest number that divides each one of them exactly. \nThe least number which is exactly divisible by each one of the given numbers is called their L.C.M. \nTwo numbers are said to be co-prime if their H.C.F. is 1. \nH.C.F. of fractions = H.C.F. of numerators/L.C.M of denominators \nL.C.M. of fractions = G.C.D. of numerators/H.C.F of denominators \nProduct of two numbers = Product of their H.C.F. and L.C.M.  \n\nPERCENTAGES :  \n\n1.If A is R% more than B, then B is less than A by R / (100+R) * 100 \n2.If A is R% less than B, then B is more than A by R / (100-R) * 100 \n3.If the price of a commodity increases by R%, then reduction in consumption, not to increase the expenditure is : R/(100+R)*100 \n4.If the price of a commodity decreases by R%, then the increase in consumption, not to decrease the expenditure is : R/(100-R)*100  \n\nPROFIT & LOSS :  \n\n1.Gain = Selling Price(S.P.) - Cost Price(C.P) \n2.Loss = C.P. - S.P. \n3.Gain % = Gain * 100 / C.P. \n4.Loss % = Loss * 100 / C.P. \n5.S.P. = (100+Gain%)/100*C.P. \n6.S.P. = (100-Loss%)/100*C.P.  \n\nRATIO & PROPORTIONS:\n\n\1.The ratio a : b represents a fraction a/b. a is called antecedent and b is called consequent. \n2.The equality of two different ratios is called proportion. \n3.If a : b = c : d then a, b, c, d are in proportion. This is represented by a : b :: c : d. \n4.In a : b = c : d, then we have a* d = b * c. \n5.If a/b = c/d then ( a + b ) / ( a – b ) = ( d + c ) / ( d – c )"
        "\n\nPERCENTAGES :\n\n1.If A is R% more than B, then B is less than A by R / (100+R) * 100 \n2.If A is R% less than B, then B is more than A by R / (100-R) * 100 \n3.If the price of a commodity increases by R%, then reduction in consumption, not to increase the expenditure is : R/(100+R)*100 \n4.If the price of a commodity decreases by R%, then the increase in consumption, not to decrease the expenditure is : R/(100-R)*100  \n\nPROFIT & LOSS :\n\n1.Gain = Selling Price(S.P.) - Cost Price(C.P) \n2.Loss = C.P. - S.P. \n3.Gain % = Gain * 100 / C.P. \n4.Loss % = Loss * 100 / C.P. \n5.S.P. = (100+Gain%)/100*C.P. \n6.S.P. = (100-Loss%)/100*C.P.  \n\nRATIO & PROPORTIONS:\n\n1.The ratio a : b represents a fraction a/b. a is called antecedent and b is called consequent. \n2.The equality of two different ratios is called proportion. \n3.If a : b = c : d then a, b, c, d are in proportion. This is represented by a : b :: c : d. 4.In a : b = c : d, then we have a* d = b * c. \n5.If a/b = c/d then ( a + b ) / ( a – b ) = ( d + c ) / ( d – c )."
        """"\n\nPROFIT & LOSS :\n\n
  \n1. Gain = Selling Price(S.P.) - Cost Price(C.P)\n
  \n2. Loss = C.P. - S.P.\n
  \n3. Gain % = Gain * 100 / C.P.\n
  \n4. Loss % = Loss * 100 / C.P.\n
  \n5. S.P. = (100+Gain%)/100*C.P.\n
  \n6. S.P. = (100-Loss%)/100*C.P.\n\n

  \nTIME & WORK :\n\n
  \n1. If A can do a piece of work in n days, then A's 1 day's work = 1/n\n
  \n2. If A and B work together for n days, then (A+B)'s 1 days's work = 1/n\n
  \n3. If A is twice as good workman as B, then ratio of work done by A and B = 2:1\n\n

  \nPIPES & CISTERNS :\n\n
  \n1. If a pipe can fill a tank in x hours, then part of tank filled in one hour = 1/x\n
  \n2. If a pipe can empty a full tank in y hours, then part emptied in one hour = 1/y\n
  \n3. If a pipe can fill a tank in x hours, and another pipe can empty the full tank in y hours, then on opening both the pipes, the net part filled in 1 hour = (1/x-1/y) if y>x the net part emptied in 1 hour = (1/y-1/x) if x>y\n\n

  \nTIME & DISTANCE :\n\n
  \n1. Distance = Speed * Time\n
  \n2. 1 km/hr = 5/18 m/sec\n
  \n3. 1 m/sec = 18/5 km/hr\n
  \n4. Suppose a man covers a certain distance at x kmph and an equal distance at y kmph. Then, the average speed during the whole journey is 2xy/(x+y) kmph.\n\n

  \nPROBLEMS ON TRAINS :\n\n
  \n1. Time taken by a train x metres long in passing a signal post or a pole or a standing man is equal to the time taken by the train to cover x metres.\n
  \n2. Time taken by a train x metres long in passing a stationary object of length y metres is equal to the time taken by the train to cover x+y metres.\n
  \n3. Suppose two trains are moving in the same direction at u kmph and v kmph such that u>v, then their relative speed = u-v kmph.\n
  \n4. If two trains of length x km and y km are moving in the same direction at u kmph and v kmph, where u>v, then time taken by the faster train to cross the slower train = (x+y)/(u-v) hours.\n
  \n5. Suppose two trains are moving in opposite directions at u kmph and v kmph. Then, their relative speed = (u+v) kmph.\n
  \n6. If two trains of length x km and y km are moving in the opposite directions at u kmph and v kmph, then time taken by the trains to cross each other = (x+y)/(u+v) hours.\n
  \n7. If two trains start at the same time from two points A and B towards each other and after crossing they take a and b hours in reaching B and A respectively, then A's speed : B's speed = (vb : va)\n\n

  \nSIMPLE & COMPOUND INTERESTS :\n\n
  \nLet P be the principal, R be the interest rate percent per annum, and N be the time period.\n\n

  \n1. Simple Interest = (P*N*R)/100\n
  \n2. Compound Interest = P(1 + R/100)^N – P\n
  \n3. Amount = Principal + Interest\n"""
        """\n\nLOGARITHMS :\n\n

  \n1. If am = x, then m = logax.\n
  \n2. Properties:\n
  \n   a. log xx = 1\n
  \n   b. log x1 = 0\n
  \n   c. log a(xy) = log ax + log ay\n
  \n   d. log a(x/y) = log ax - log ay\n
  \n   e. log ax = 1/log xa\n
  \n   f. log a(x^p) = p(log ax)\n
  \n   g. log ax = log bx/log ba\n

  \n3. Note: Logarithms for base 1 does not exist.\n\n

  \nAREA & PERIMETER :\n\n

  \n1. Shape Area Perimeter\n
  \n   a. Circle - π(Radius)2, 2π(Radius)\n
  \n   b. Square - (side)2, 4(side)\n
  \n   c. Rectangle - length*breadth, 2(length+breadth)\n
  \n   d. Area of a triangle = 1/2*Base*Height\n
  \n   e. Area of a triangle = √(s(s-a)(s-b)(s-c)), where a, b, c are the lengths of the sides and s = (a+b+c)/2\n
  \n   f. Area of a parallelogram = Base * Height\n
  \n   g. Area of a rhombus = 1/2(Product of diagonals)\n
  \n   h. Area of a trapezium = 1/2(Sum of parallel sides)(distance between the parallel sides)\n
  \n   i. Area of a quadrilateral = 1/2(diagonal)(Sum of sides)\n
  \n   j. Area of a regular hexagon = 6(√3/4)(side)2\n\n

  \nVOLUME & SURFACE AREA :\n\n

  \nCube:\n
  \n   a. Let a be the length of each edge.\n
  \n   b. Volume of the cube = a3 cubic units\n
  \n   c. Surface Area = 6a2 square units\n
  \n   d. Diagonal = √3a units\n

  \nCuboid:\n
  \n   a. Let l be the length, b be the breadth, and h be the height of a cuboid.\n
  \n   b. Volume = lbh cu units\n
  \n   c. Surface Area = 2(lb+bh+lh) sq units\n
  \n   d. Diagonal = √(l^2+b^2+h^2)\n

  \nCylinder:\n
  \n   a. Let radius of the base be r and height of the cylinder be h.\n
  \n   b. Volume = πr2h cu units\n
  \n   c. Curved Surface Area = 2πrh sq units\n
  \n   d. Total Surface Area = 2πrh + 2πr2 sq units\n

  \nCone:\n
  \n   a. Let r be the radius of the base, h be the height, and l be the slant height of the cone.\n
  \n   b. l^2 = h^2 + r^2
  \n\nVOLUME & SURFACE AREA :\n\n

\nCube:\n
   \n   a. Let a be the length of each edge.\n
   \n   b. Volume of the cube = a3 cubic units\n
   \n   c. Surface Area = 6a2 square units\n
   \n   d. Diagonal = √3a units\n

\nCuboid:\n
   \n   a. Let l be the length, b be the breadth, and h be the height of a cuboid.\n
   \n   b. Volume = lbh cu units\n
   \n   c. Surface Area = 2(lb+bh+lh) sq units\n
   \n   d. Diagonal = √(l^2+b^2+h^2)\n

\nCylinder:\n
   \n   a. Let radius of the base be r and height of the cylinder be h.\n
   \n   b. Volume = πr2h cu units\n
   \n   c. Curved Surface Area = 2πrh sq units\n
   \n   d. Total Surface Area = 2πrh + 2πr2 sq units\n

\nCone:\n
   \n   a. Let r be the radius of the base, h be the height, and l be the slant height of the cone.\n
   \n   b. l^2 = h^2 + r^2\n
   \n   c. Volume = 1/3(πr^2h) cu units\n
   \n   d. Curved Surface Area = πrl sq units\n
   \n   e. Total Surface Area = πrl + πr^2 sq units\n

\nSphere:\n
   \n   a. Let r be the radius of the sphere.\n
   \n   b. Volume = (4/3)πr^3 cu units\n
   \n   c. Surface Area = 4πr^2 sq units\n

\nPrism:\n
   \n   a. Volume = (Area of base)(Height)\n\n"""

// Your aptitude formulas here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: aptitudeFormulas.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            aptitudeFormulas[index],
            style: TextStyle(fontSize: 16.0),
          ),
        );
      },
    );
  }
}

class ReasoningFormulasPage extends StatelessWidget {
  final List<String> reasoningFormulas = [
    'we are working on it, will update soon'
    // Add more reasoning formulas as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reasoningFormulas.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            reasoningFormulas[index],
            style: TextStyle(fontSize: 16.0),
          ),
        );
      },
    );
  }
}
