import 'package:get/route_manager.dart';
import 'package:rallis/utils/constant/routers_const.dart';
import 'package:rallis/view/auth/forgot_pwd_page.dart';
import 'package:rallis/view/auth/login_page.dart';
import 'package:rallis/view/auth/otp_page.dart';
import 'package:rallis/view/auth/signup_page.dart';
import 'package:rallis/view/complaint/complaint_page.dart';
import 'package:rallis/view/details/detail_page.dart';
import 'package:rallis/view/home/home_page.dart';
import 'package:rallis/view/list/list_page.dart';

import 'package:rallis/view/notification/notification_page.dart';
import 'package:rallis/view/order/address_page.dart';
import 'package:rallis/view/order/cart_page.dart';
import 'package:rallis/view/order/category_page.dart';
import 'package:rallis/view/order/order_history_page.dart';
import 'package:rallis/view/setting/profile_page.dart';
import 'package:rallis/view/splash/onboarding_page.dart';
import 'package:rallis/view/splash/splash_page.dart';
import 'package:rallis/view/survey/survey_page.dart';
import 'package:rallis/view/wallet/wallet_page.dart';

List<GetPage> routesPage() => [
      GetPage(name: RoutersConst.initialRoute, page: () => const SplashPage()),
      GetPage(name: RoutersConst.onboardPage, page: () => const OnboardingPage()),
      GetPage(name: RoutersConst.loginPage, page: () => const LoginPage()),
      GetPage(name: RoutersConst.forgotPwdPage, page: () => const ForgotPwdPage()),
      GetPage(name: RoutersConst.signupPage, page: () => const SignupPage()),
      GetPage(name: RoutersConst.otpPage, page: () => OtpPage()),
      GetPage(name: RoutersConst.home, page: () => HomePage()),
      GetPage(name: RoutersConst.category, page: () => const CategoryPage()),
      GetPage(name: RoutersConst.itemList, page: () => ListPage()),
      GetPage(
          name: RoutersConst.productDetails, page: () => const DetailPage()),
      GetPage(name: RoutersConst.cart, page: () => const CartPage()),
      GetPage(name: RoutersConst.orderHistory, page: () => const OrderHistoryPage()),
      GetPage(name: RoutersConst.address, page: () => const AddressPage()),
      GetPage(name: RoutersConst.wallet, page: () => const WalletPage()),
      GetPage(name: RoutersConst.complaints, page: () => const ComplaintPage()),
      GetPage(name: RoutersConst.survey, page: () => const SurveyPage()),
      GetPage(name: RoutersConst.profile, page: () => const ProfilePage()),
      GetPage(name: RoutersConst.notification, page: () => const NotificationPage()),
      GetPage(name: RoutersConst.needHelp, page: () => HomePage()),
      GetPage(name: RoutersConst.policy, page: () => HomePage()),
      GetPage(name: RoutersConst.contactUs, page: () => HomePage()),
      GetPage(name: RoutersConst.aboutUs, page: () => HomePage()),
    ];
