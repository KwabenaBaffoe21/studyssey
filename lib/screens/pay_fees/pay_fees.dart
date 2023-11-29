import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey/screens/pay_fees/transactionscomp.dart';
import '../../constant.dart';
import 'alltransaction.dart';
import 'labelsecteventcal.dart';

class PayFees extends StatefulWidget {
  const PayFees({super.key});

  static String routeName = 'PayFeesScreen';

  @override
  State<PayFees> createState() => _PayFeesState();
}

class _PayFeesState extends State<PayFees> {
  //create variable
  double _tuitionValue = 1402.5;
  final List<double> tuitionValues = [0, 1402.5, 2805];

  double _currentValue = 233;
  final List<int> values = [0, 233, 466];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, right: medium, left: medium),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      kBackButtonIcon,
                      width: 31,
                      height: 31,
                    ),
                  ),
                  const SizedBox(width: 90),
                  Text(
                    'GCTU Pay',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: color9),
                  ),
                  //const SizedBox(width: 84),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      //width: 360,
                      //height: 72.21,
                      padding: const EdgeInsets.only(
                          top: 20, right: medium, left: medium),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Current Balance (Sem)',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                              const SizedBox(height: 0),
                              SizedBox(
                                //width: 118.23,
                                height: 24.99,
                                child: Text(
                                  'GH¢  0.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(color: textColor1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 57),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Financial Status ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                              const SizedBox(height: 5.56),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 17.78, vertical: 2.22),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF2F3F5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.44),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Completed',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(color: color5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 360,
                      //height: 225.82,
                      padding: const EdgeInsets.only(
                          top: 20, right: xSmall, left: xSmall),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 162.22,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.22, vertical: 26.67),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.96, color: Color(0xFF9F9F9F)),
                                borderRadius: BorderRadius.circular(4.44),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Tuition ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(color: textColor1),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'fees',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(color: color9),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 11.11),
                                    SizedBox(
                                      width: 92.27,
                                      height: 18.91,
                                      child: Text(
                                        'Semester',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(color: textColor1),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 14.44),
                                SizedBox(
                                  width: 150,
                                  height: 10,
                                  child: Stack(
                                    children: [
                                      Expanded(
                                        //width: 120,
                                        child: Slider(
                                          value: _tuitionValue,
                                          min: tuitionValues.first.toDouble(),
                                          max: tuitionValues.last.toDouble(),
                                          //value: _currentValue.toDouble(),
                                          divisions: tuitionValues.length - 1,
                                          activeColor: color1,
                                          inactiveColor: color5,
                                          onChanged: (value) {
                                            setState(() {
                                              _tuitionValue = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 14.44),
                                SizedBox(
                                  width: 118.85,
                                  height: 34.78,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 30,
                                            height: 15.56,
                                            child: Text(
                                              'GH¢',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(color: color9),
                                            ),
                                          ),
                                          const SizedBox(height: 1),
                                          SizedBox(
                                            //width: 53.33,
                                            height: 15.56,
                                            child: Text(
                                              _tuitionValue.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(color: color9),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        //width: 33,
                                        //height: 34,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 4),
                                        decoration: ShapeDecoration(
                                          color: color6,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.44),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          //crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/svg/Pay.svg',
                                              //width: 33,
                                              height: 35,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 11),
                          Container(
                            width: 162.22,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 26),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.96, color: Color(0xFF9F9F9F)),
                                borderRadius: BorderRadius.circular(4.44),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Other ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(color: textColor1),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'fees',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(color: color9),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 11.11),
                                    SizedBox(
                                      width: 92.27,
                                      height: 18.91,
                                      child: Text(
                                        'Semester',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(color: textColor1),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 14.44),
                                SizedBox(
                                  width: 150,
                                  height: 10,
                                  child: Stack(
                                    children: [
                                      Expanded(
                                        //width: 120,
                                        child: Slider(
                                          value: _currentValue,
                                          min: values.first.toDouble(),
                                          max: values.last.toDouble(),
                                          //value: _currentValue.toDouble(),
                                          divisions: values.length - 1,
                                          activeColor: color1,
                                          inactiveColor: color5,
                                          onChanged: (value) {
                                            setState(() {
                                              _currentValue = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 14.44),
                                SizedBox(
                                  width: 118.85,
                                  height: 34.78,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 30,
                                            height: 15.56,
                                            child: Text(
                                              'GH¢',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(color: color9),
                                            ),
                                          ),
                                          const SizedBox(height: 1),
                                          SizedBox(
                                            //width: 53.33,
                                            height: 15.56,
                                            child: Text(
                                              _currentValue.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(color: color9),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        //width: 33,
                                        //height: 34,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 4),
                                        decoration: ShapeDecoration(
                                          color: color6,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.44),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/svg/Pay.svg',
                                              width: 33,
                                              height: 34,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.only(top: 20, right: medium, left: medium),
                      child: Column(
                        children: [
                          LabelSectionECal(
                              gctuLabPage: TransactionsAll(),
                              title: 'Transactions'),
                          SizedBox(
                            height: 15,
                          ),
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
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
