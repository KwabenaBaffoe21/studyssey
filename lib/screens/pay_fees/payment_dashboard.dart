import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/screens/pay_fees/components/alltransaction.dart';
import 'package:studyssey/screens/pay_fees/components/transactionscomp.dart';

import '../../constant.dart';
import 'components/customslider.dart';

class PaymentDashboard extends StatefulWidget {
  const PaymentDashboard({super.key});

  static String routeName = 'PaymentDashboard';

  @override
  State<PaymentDashboard> createState() => _PaymentDashboardState();
}

class _PaymentDashboardState extends State<PaymentDashboard> {
  late double _currentBalance;

  @override
  void initState() {
    super.initState();
    _currentBalance = 3271;
  }

  bool isCompleted = false;
  double _tuition = 0;
  double _otherCharges = 0;
  List<double> tuition = [0, 1402.5, 2805];
  List<double> otherCharges = [0, 233, 466];
  String email = 'emmanuelbaffoeappiahofori@gmail.com';
  String amount = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            kBackButtonIcon,
            width: 31,
            height: 31,
          ),
        ),
        toolbarHeight: 53,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: GoogleFonts.manrope(
            fontSize: 13.33, fontWeight: FontWeight.w500, color: color9),
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('GCTU Pay'),
        ),
        backgroundColor: const Color(0xffffffff),
        foregroundColor: const Color(0xff000000),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.44,
                vertical: 13.33,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Text(
                        'Current Balance (Sem)',
                        style: GoogleFonts.manrope(
                          fontSize: 11.11,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000),
                        ),
                      ),
                      Text(
                        'GH¢ $_currentBalance',
                        style: GoogleFonts.manrope(
                          fontSize: 24.44,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff2a2968),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Financial Status',
                        style: GoogleFonts.manrope(
                          fontSize: 11.11,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.56),
                        child: SizedBox(
                          width: 93.56,
                          height: 19.44,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17.78, vertical: 2.22),
                              backgroundColor: isCompleted
                                  ? const Color(0xff30ba00)
                                  : const Color(0xfff2f3f5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.44),
                              ),
                            ),
                            child: Text(
                              'Complete',
                              style: GoogleFonts.manrope(
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500,
                                color: isCompleted
                                    ? const Color(0xffffffff)
                                    : const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                CustomSlider(
                  title: 'Tuition',
                  value: _tuition,
                  min: tuition.first.toDouble(),
                  max: tuition.last.toDouble(),
                  divisions: tuition.length - 1,
                  onChanged: (double value) {
                    setState(() {
                      _tuition = value;
                    });
                  },
                  amount: _tuition.toString(),
                  email: email,
                ),
                CustomSlider(
                  title: 'Other',
                  value: _otherCharges,
                  min: otherCharges.first.toDouble(),
                  max: otherCharges.last.toDouble(),
                  divisions: otherCharges.length - 1,
                  onChanged: (double value) {
                    setState(() {
                      _otherCharges = value;
                    });
                  },
                  amount: _otherCharges.toString(),
                  email: email,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.56),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: GoogleFonts.manrope(
                      fontSize: 13.33,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff000000),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TransactionsAll(),
                        ),
                      );
                    },
                    child: Text(
                      'See all',
                      style: GoogleFonts.manrope(
                        fontSize: 11.11,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff9f9f9f),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 360,
              height: MediaQuery.of(context).size.height * 0.42,
              padding: const EdgeInsets.symmetric(horizontal: 15.78),
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢ 2805.00',
                        title: 'Tuition fees',
                        sem: '| Semester 2'),
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢ 2805.00',
                        title: 'Tuition fees',
                        sem: '| Semester 2'),
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢ 2805.00',
                        title: 'Tuition fees',
                        sem: '| Semester 2'),
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢ 2805.00',
                        title: 'Tuition fees',
                        sem: '| Semester 2'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
