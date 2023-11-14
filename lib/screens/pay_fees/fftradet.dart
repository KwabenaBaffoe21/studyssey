import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';
import 'pay_fees.dart';

class StudysseyGctuPayConfirmationdetails extends StatelessWidget {
  const StudysseyGctuPayConfirmationdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 83,
          decoration: const BoxDecoration(
            color: Color(0xFFF2F3F5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 360,
                height: 56,
                padding: const EdgeInsets.symmetric(
                    horizontal: 31.11, vertical: 11.11),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PayFees()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/svg/back.svg',
                        width: 15,
                        height: 10,
                      ),
                    ),
                    const SizedBox(width: 58),
                    SizedBox(
                      width: 122,
                      child: Text(
                        'Transaction Details',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: color9),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Container(
                width: 360,
                height: 664.44,
                padding: const EdgeInsets.only(
                    top: 33.33, left: 14.44, right: 14.44),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.67),
                      topRight: Radius.circular(16.67),
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 16.67),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 72.28,
                            height: 72.28,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(kSchoolLogo),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 18.89),
                          SizedBox(
                            width: 172.50,
                            child: Text(
                              '''GHANA COMMUNICATION TECHNOLOGY UNIVERSITY (ACCRA)
                          \nDigital Adress: GA-167-2979
                        \nPMB 100, Tesano, Accra - Ghana
                            \nOff J.A Kuffour Avenue, Adjacent the Police
                          Training School,
                          Tesano, Accra
                          ''',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(color: textColor1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 102.22,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.67, vertical: 11.11),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                              const SizedBox(width: 105),
                              SizedBox(
                                width: 190,
                                child: Text(
                                  'Emmanuel Baffoe Appiah-Ofori',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: color5),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6.67),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Student ID',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                              const SizedBox(width: 213),
                              Text(
                                '040919857',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6.67),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Level / Semester',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                              const SizedBox(width: 192),
                              Text(
                                '400 /2nd',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6.67),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Campus',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                              const SizedBox(width: 210),
                              Text(
                                'Tesano, Accra',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 81.11,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 84.44, vertical: 7.78),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Amount Paid',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: color9),
                              ),
                              const SizedBox(width: 5.56),
                              Text(
                                '|  Tuition fees',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: color9),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5.56),
                          SizedBox(
                            width: 204.44,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'GH¢',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: color9),
                                ),
                                Text(
                                  ' 2805.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge
                                      ?.copyWith(color: textColor1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 360,
                      height: 3.33,
                      decoration: const BoxDecoration(color: Color(0xFFF2F3F5)),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 360,
                      padding: const EdgeInsets.only(
                        top: 11.11,
                        left: 23.33,
                        right: 11.11,
                        bottom: 11.11,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment methods',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: textColor1),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 122.68,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 22),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24.98,
                                child: Text(
                                  'Date',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: color9),
                                ),
                              ),
                              const SizedBox(width: 181),
                              Text(
                                'Aug 21, 2022 | 4:03 PM',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color9),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7.78),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 93.33,
                                child: Text(
                                  'Payment Info',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: color9),
                                ),
                              ),
                              const SizedBox(width: 103.33),
                              Text(
                                'Local Students - Tuition',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color9),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7.78),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 93.33,
                                child: Text(
                                  'Transaction #/TT\nNumber',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: color9),
                                ),
                              ),
                              const SizedBox(width: 128),
                              Text(
                                '99698174/\nTT23044K50WN//1',
                                textAlign: TextAlign.right,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: color9),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7.78),
                          Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 101.95,
                                  height: 17.35,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 27.95,
                                        height: 17.35,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/momo.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 1),
                                      Text(
                                        'Mobile Money',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(color: color9),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 223.33,
                                top: 2.22,
                                child: SizedBox(
                                  width: 94.44,
                                  child: Text(
                                    '*** *** 2516',
                                    textAlign: TextAlign.right,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(color: color9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 332.22,
                      height: 44.44,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.80),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Download Receipt',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: textColor1),
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
    );
  }
}
