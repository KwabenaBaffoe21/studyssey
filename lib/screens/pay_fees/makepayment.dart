import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant.dart';
import 'pay_fees.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({super.key});

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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PayFees()),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/svg/back.svg',
                    width: 15,
                    height: 10,
                  ),
                ),
                const SizedBox(width: 84),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Make Payment', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9),),
                  ],
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(height: medium),
                    Container(
                      width: 360,
                      height: 115.56,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 84.44, vertical: 22.22),
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
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Tuition fees ', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9),),
                                ],
                              ),
                              const SizedBox(width: 5.56),
                              Container(
                                width: 1.11,
                                height: 12.22,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF9F9F9F)),
                              ),
                              const SizedBox(width: 5.56),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(' | Semester', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9),),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 11.11),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('GH¢', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: textColor1),),
                              Text(' 2805.00', style: Theme.of(context).textTheme.displayLarge?.copyWith(color: textColor1),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Column(),
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
