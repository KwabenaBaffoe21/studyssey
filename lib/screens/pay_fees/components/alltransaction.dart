import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey/screens/pay_fees/components/transactionscomp.dart';
import '../../../constant.dart';


class TransactionsAll extends StatelessWidget {
  const TransactionsAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, right: medium, left: medium),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    kBackButtonIcon,
                    width: 15,
                    height: 10,
                  ),
                ),
                const SizedBox(width: 84),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('All Transactions', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9),),
                  ],
                ),
              ],
            ),
            const Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: medium),
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢  2805.00',
                        title: 'Tuition fees',
                        sem: ' | Semester 2'),
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢  285.00',
                        title: 'Other fees  ',
                        sem: ' | Semester 2'),
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢  2805.00',
                        title: 'Tuition fees',
                        sem: ' | Semester 1'),
                    TransactionRec(
                        dateTime: 'Aug 21, 2022 at 4:23 PM',
                        amount: 'GH¢  285.00',
                        title: 'Other fees  ',
                        sem: ' | Semester 1'),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
