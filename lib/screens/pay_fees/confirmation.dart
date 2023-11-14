import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';
import 'pay_fees.dart';


class ConfirmationDetails extends StatelessWidget {
  const ConfirmationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          //height: 146,
          decoration: const BoxDecoration(color: Color(0xFFF2F3F5)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 360,
                height: 54,
                padding:
                    const EdgeInsets.only(top: 20, right: medium, left: medium),
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
                    const SizedBox(width: 85),
                    SizedBox(
                      //width: 83.33,
                      child: Text('Confirmation', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: 360,
                //height: 703,
                padding: const EdgeInsets.only(
                  top: 180,
                  left: 14.44,
                  right: 14.44,
                  bottom: 120,
                ),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/Check_ring.svg',
                          width: 124,
                          height: 124,
                        ),
                        const SizedBox(height: 16),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Payment Successful ! ',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9),),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('GH¢', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9),),
                                Text(' 2805.00', style: Theme.of(context).textTheme.displayLarge?.copyWith(color: textColor1),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Container(
                      width: 332,
                      //height: 44.44,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 11),
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
                          Text('View Receipt', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor1),),
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
