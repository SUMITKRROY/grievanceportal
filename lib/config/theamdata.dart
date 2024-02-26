import 'package:flutter/material.dart';

class ColorsData {
  // Common Colors
  static const Color primaryColor = Color(0xFF3fbbc0);
  static const Color secondaryColor = Color(0xFF65c9cd);
  static const Color textColor = Color(0xFF444444);
  static const Color whiteColor = Colors.white;
  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.1);
  static const Color darkGrayColor = Color(0xFF555555);

  // Color for preloader
  static const Color preloaderBorderColor = primaryColor;
  static const Color preloaderTopColor = Color(0xFFecf8f9);

  // Color for back-to-top button
  static const Color backToTopBackgroundColor = primaryColor;
  static const Color backToTopHoverBackgroundColor = secondaryColor;
  static const Color backToTopIconColor = whiteColor;

  // Color for top bar
  static const Color topbarBackgroundColor = primaryColor;
  static const Color topbarTextColor = whiteColor;

  // Color for header
  static const Color headerBackgroundColor = whiteColor;
  static const Color headerShadowColor = shadowColor;
  static const Color headerTextColor = darkGrayColor;
  static const Color headerAppointmentBtnBackgroundColor = primaryColor;
  static const Color headerAppointmentBtnHoverBackgroundColor = secondaryColor;
  static const Color headerLogoColor = darkGrayColor;

  // Footer Colors
  static const Color footerBackground = Color(0xFFEEEEEE);
  static const Color footerText = darkGrayColor;
  static const Color footerTopBackground = Color(0xFFF6F6F6);

  // Social Links Colors
  static const Color socialLinksBackground = primaryColor;
  static const Color socialLinksHoverBackground = secondaryColor;
  static const Color socialLinksIcon = primaryColor;

  // Footer Links Colors
  static const Color footerLinkText = darkGrayColor;
  static const Color footerLinkTextHover = primaryColor;

  // Newsletter Button Colors
  static const Color newsletterButtonBackground = primaryColor;
  static const Color newsletterButtonHoverBackground = secondaryColor;

  // Testimonials Colors
  static const Color testimonialsQuoteIcon = Color(0xFFB2E4E6);
  static const Color testimonialsBackground = Color(0xFFF0FAFA);

  // Contact Form Colors
  static const Color contactFormErrorMessageBackground = Color(0xFFED3C0D);
  static const Color contactFormSuccessMessageBackground = Color(0xFF18D26E);
  static const Color contactFormLoadingBackground = whiteColor;

  // FAQ Colors
  static const Color faqQuestionText = Color(0xFF32969A);
  static const Color faqCollapsedIcon = primaryColor;
}

class AppSizes {
  // Padding and Margin Sizes
  static const double smallPadding = 8.0;
  static const double mediumPadding = 16.0;
  static const double largePadding = 24.0;

  static const double smallMargin = 8.0;
  static const double mediumMargin = 16.0;
  static const double largeMargin = 24.0;

  // Button Sizes
  static const double buttonHeight = 48.0;
  static const double buttonWidth = 150.0;

  // Icon Sizes
  static const double smallIconSize = 24.0;
  static const double mediumIconSize = 32.0;
  static const double largeIconSize = 48.0;

  // Text Sizes
  static const double smallTextSize = 12.0;
  static const double mediumTextSize = 16.0;
  static const double largeTextSize = 24.0;

  // Container Sizes
  static const double containerWidth = 200.0;
  static const double containerHeight = 150.0;

  // Other Sizes
  static const double borderRadius = 8.0;
}
