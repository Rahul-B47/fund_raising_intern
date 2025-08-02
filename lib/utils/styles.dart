import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

/// Unified text theme with elegant hierarchy
TextTheme buildTextTheme() {
  return TextTheme(
    headlineLarge: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.bold, color: primaryColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
    headlineSmall: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
    titleLarge: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black87),
    titleMedium: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87),
    bodyLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
    labelLarge: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: primaryColor),
  );
}

/// Default page padding across screens
EdgeInsets pagePadding = const EdgeInsets.symmetric(horizontal: 20, vertical: 16);

/// Elegant card UI with subtle depth
BoxDecoration cardDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(16),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.08),
      blurRadius: 20,
      spreadRadius: 2,
      offset: const Offset(0, 6),
    ),
  ],
);

/// Soft gradient background for highlight areas
BoxDecoration gradientCardDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [primaryColor.withOpacity(0.08), Colors.white],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  borderRadius: BorderRadius.circular(16),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 10,
      offset: Offset(2, 4),
    ),
  ],
);
