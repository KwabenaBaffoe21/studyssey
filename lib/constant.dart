import 'package:flutter/material.dart';
import 'package:studyssey/screens/courses/course_page.dart';
import 'package:studyssey/screens/gctu_news/NewsGCTU.dart';
import 'package:studyssey/screens/pay_fees/pay_fees.dart';
import 'package:studyssey/screens/sip/sip.dart';
import 'components/content.dart';

//Colors

// Primary color
const splashScreen = Color(0xFF201f68);

// Secondary color
const scaffold = Color(0xFFFFFFFF);

// Text color
const textColor1 = Color(0xFF000000);
const textColor2 = Color(0xFFFFFFFF);
const textColor3 = Color(0xFF9F9F9F);
const textColor4 = Color(0xff2a2968);
const textColor5 = Color(0xfff2f3f5);
const textColor6 = Color(0xff010020);

// Forget Password color
const textButton = Color(0xff2d2ac0);

// Error Border Color
const kErrorBorderColor = Color(0xffea3434);

// Smooth Page Indicator
const kSmoothPageIndicatorColor = Color(0xffD9D9D9);

// Drawer Color
const kDrawerColor = Color(0xfff2f3f5);

// Button Color
const buttonColor = Color(0xff6610f2);

// Smooth Page Indicator
const smoothPageIndicator = Color(0xff2a2968);

// Border Color
const borderColor = Color(0xff010020);
const borderColor1 = Color(0xfff9f9f9);
const borderColor2 = Color(0xffb9b9c3);

//other Color
const color1 = Color(0xff201f68);
const color2 = Color(0xfffacf1e);
const color3 = Color(0xffd9d9d9);
const color4 = Color(0xfff9f9f9);
const color5 = Color(0xff9f9f9f);
const color6 = Color(0xfff2f3f5);
const color7 = Color(0xffffffff);
const color8 = Color(0xff9c9cc3);
const color9 = Color(0xff6b6ac3);
const color10 = Color(0xfffad950);
const color11 = Color(0xff000000);
const color12 = Color(0xFF9E9E9E);
const color13 = Color(0xFF755EFC);
const color14 = Color(0xfff9f8cb);

// Online Badge Color
const badgeColor = Color(0xff30ba00);

// Icon Color
const iconColor1 = Color(0xff2a2968);
const iconColor2 = Color(0xff6610f2);

// End of Colors

//icons
const kBackButtonIcon = 'images/icons/back.svg';
const kNotificationIcon = 'images/icons/notification.svg';
const kNewsIcon = 'images/icons/notification.svg';
const kFilterIcon = 'images/icons/filter.svg';
const kHomeIcon = 'images/icons/home.svg';
const kLockIcon = 'images/icons/lock_light.png';
const kContactIcon = 'images/icons/contact.svg';
const kBookmarkIcon = 'images/icons/bookmark.svg';
const kSearchIcon = 'images/icons/search.svg';
const kMessageIcon = 'images/icons/message.svg';
const kSortIcon = 'images/icons/drawer.svg';
const kSIPIcon = 'images/icons/sip.svg';
const kVisibleIcon = 'images/icons/visible.svg';
const kAboutIcon = 'images/icons/about.svg';
const kCameraIcon = 'images/icons/camera.svg';
const kAddIcon = 'images/chat_add.svg';
const kAddIcon1 = 'images/lecture_add.svg';
const kCourseIcon = 'images/icons/course.svg';
const kCourseAltIcon = 'images/icons/courses_alt.svg';
const kDrawerIcon = 'images/icons/drawer.svg';
const kGCTUNewsIcon = 'images/icons/gctu_new.svg';
const kGetAssistantIcon = 'images/icons/get_assistant.svg';
const kRightExpandIcon = 'images/icons/open.svg';
const kPayFeesIcon = 'images/icons/pay_fees.svg';
const kPrivacyPolicyIcon = 'images/icons/privacy_policy.svg';
const kSignOutIcon = 'images/icons/sign_out.svg';
const kTermsAndConditionsIcon = 'images/icons/T&C.svg';
const kProfileIcon = 'images/icons/profile.svg';
const kSendIcon = 'images/icons/send.svg';
const kLogoutIcon = 'images/icons/logout.svg';
const kSendAltIcon = 'images/icons/send_alt.svg';
const kNotificationAltIcon = 'images/icons/notification_alt.svg';
const kProfileAltIcon = 'images/icons/profile_alt.svg';
const kEditIcon = 'images/icons/edit.svg';
const kCheckRingIcon = 'images/icons/check_ring.svg';
const kDateIcon = 'images/icons/date.svg';
const kDownloadIcon = 'images/icons/download.svg';
const kPayIcon = 'images/icons/pay.svg';
const kTicketIcon = 'images/icons/ticket.svg';
const kVenueIcon = 'images/icons/venue.svg';
const kBellIcon = 'images/icons/bell.svg';
const kMoreVert = 'images/icons/more_vert.svg';
const kDashBoard = 'images/icons/dashboard.svg';
const kRegister = 'images/icons/register.svg';
const kResult = 'images/icons/results.svg';
const kDeliever = 'images/icons/deliever.svg';

//Onboarding Images
const kOnboardingImage1 = 'images/onboarding_images/Group 27.svg';
const kOnboardingImage2 = 'images/onboarding_images/Group 28.svg';
const kOnboardingImage3 = 'images/onboarding_images/Group 29.svg';
const kOnboardingImage4 = 'images/onboarding_images/Group 30.svg';

// Course(s) Image(s)
const kCourseImage1 = 'images/courses/courseImage1.png';
const kCourseImage2 = 'images/courses/courseImage2.png';
const kCourseImage3 = 'images/courses/courseImage3.png';
const kCourseImage4 = 'images/courses/courseImage4.png';
const kCourseImage5 = 'images/courses/courseImage5.png';
const kCourseImage6 = 'images/courses/courseImage6.png';

// Profile Image
const kCurrentProfile = 'images/profile/currentprofile.png';
const kLectureProfile1 = 'images/profile/lectureprofile.png';
const kProfileImage1 = 'images/profile/profile1.png';
const kProfileImage2 = 'images/profile/profile2.png';

// Drawer Content
List<Widget> upperContent = [
  Content(
    title: 'Courses',
    imagePath: kCourseIcon,
    routeName: CoursePage.routeName,
  ),
  const Content(
    title: 'Get Assistance',
    imagePath: kGetAssistantIcon,
    routeName: '',
  ),
  Content(
    title: 'GCTU News',
    imagePath: kGCTUNewsIcon,
    routeName: NewsGCTU.routeName,
  ),
  Content(
    title: 'Pay Fees',
    imagePath: kPayFeesIcon,
    routeName: PayFees.routeName,
  ),
  Content(
    title: 'SIP',
    imagePath: 'images/icons/sio.svg',
    routeName: SIPortal.routeName,
  ),
];
List<Widget> lowerContent = [
  const Content(
    title: 'Privacy Policy',
    imagePath: kPrivacyPolicyIcon,
    routeName: '',
  ),
  const Content(
    title: 'Terms of Use',
    imagePath: kTermsAndConditionsIcon,
    routeName: '',
  ),
  const Content(
    title: 'About',
    imagePath: kAboutIcon,
    routeName: '',
  ),
];

// Homepage
const kHomeTileImage1 = 'images/homepage/homePageImage1.svg';
const kHomeTileImage2 = 'images/homepage/homePageImage2.svg';
const kHomeTileImage3 = 'images/homepage/homePageImage3.svg';
const kHomeTileImage4 = 'images/homepage/homePageImage4.svg';
const kHomeTileImage5 = 'images/homepage/homePageImage5.svg';

//Gap
const large = 50.0;
const medium = 30.0;
const small = 16.0;
const xSmall = 10.0;

//logo
const kLogo = 'images/logo.svg';
const kSchoolLogo = 'images/gctu.png';
