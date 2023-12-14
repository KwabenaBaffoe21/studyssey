import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/showsnackbar.dart';
import '../../../constant.dart';

class CustomSlider extends StatefulWidget {
  final String title, amount, email;
  final double value;
  final double min;
  final double max;
  final int divisions;
  final ValueChanged<double> onChanged;

  const CustomSlider({
    super.key,
    required this.title,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.onChanged,
    required this.amount,
    required this.email,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 17.57,
          bottom: 10.85,
          right: 11.11,
          left: 11.11,
        ),
        child: Container(
          width: 162.22,
          height: 203.59,
          padding: const EdgeInsets.symmetric(
            horizontal: 22.22,
            vertical: 26.67,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.44),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: const Color(0xff9f9f9f),
              strokeAlign: 5,
              width: 0.956,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.manrope(
                  fontSize: 22.22,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2a2968),
                ),
              ),
              Text(
                'fees',
                style: GoogleFonts.manrope(
                  fontSize: 13.33,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff2a2968),
                ),
              ),
              Text(
                'Semester',
                style: GoogleFonts.manrope(
                  fontSize: 13.33,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff2a2968),
                ),
              ),
              Expanded(
                flex: 5,
                child: Slider(
                  value: widget.value,
                  min: widget.min,
                  max: widget.max,
                  divisions: widget.divisions,
                  activeColor: const Color(0xff2a2968),
                  inactiveColor: const Color(0xfff2f3f5),
                  onChanged: widget.onChanged,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GH¢',
                        style: GoogleFonts.manrope(
                          fontSize: 13.33,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff2a2968),
                        ),
                      ),
                      Text(
                        widget.value.toString(),
                        style: GoogleFonts.manrope(
                          fontSize: 13.33,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff2a2968),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () async {
                      String amount = widget.amount;
                      String email = widget.email;
                      if (amount == '0.0') {
                        showSnackBar(
                          'Select a value with the slider',
                          context,
                          color1,
                        );
                      } else {
                        //paymentInitialization();
                        _launchURL(context, amount, email);
                      }
                    },
                    visualDensity: VisualDensity.comfortable,
                    tooltip: 'Pay Fees',
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color(0xfff2f3f5),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                      ),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          horizontal: 6.67,
                          vertical: 7.78,
                        ),
                      ),
                    ),
                    icon: Transform.flip(
                      flipX: true,
                      child: ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                            Color(0xff2a2968), BlendMode.srcIn),
                        child: SvgPicture.asset(
                          kLogoutIcon,
                          height: 19.22,
                          width: 20.19,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

 /* paymentInitialization() async {
    final Customer customer = Customer(email: widget.email);
    final Flutterwave flutterwave = Flutterwave(
        context: context,
        publicKey: publicKey,
        txRef: DateTime.now().toString(),
        amount: widget.amount,
        customer: customer,
        paymentOptions: "card,mobile money",
        customization: Customization(
          logo: kLogo,
          title: 'Studyssey',
        ),
        redirectUrl: PaymentDashboard.routeName,
        isTestMode: true,
        currency: 'GHS');
    try {
      final ChargeResponse response = await flutterwave.charge();
      print(response.toString());
      setState(() {});
      showSnackBar('Transaction Successful', context, color1);
    } catch (error) {
      print('Payment error: $error');
      showSnackBar('Payment failed', context, color1);
    }
  }*/

  void _launchURL(context, amount, email) async {
    try {
      await launch(
        'https://payment-ar9sf689j-baffoes-projects.vercel.app/?email=$email&amount=$amount',
        customTabsOption: const CustomTabsOption(
          closeButtonPosition: CustomTabsCloseButtonPosition.end,
          enableDefaultShare: false,
          enableUrlBarHiding: true,
          enableInstantApps: false,
          showPageTitle: false,
        ),
      );
    } catch (e) {
      print('Error: $e');
    }
  }
}
