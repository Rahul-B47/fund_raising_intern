import 'package:flutter/material.dart';

/// Primary app color (used in themes, text, icons)
const Color primaryColor = Color(0xFF7E57C2); // Elegant purple

/// Accent color for highlights or success states
const Color accentColor = Color(0xFFB388F5); // Soft lavender

/// Background color for scaffold or sections
const Color backgroundColor = Color(0xFFF9F9FB);

/// Light grey for dividers or card borders
const Color lightGrey = Color(0xFFE0E0E0);

/// Error color
const Color errorColor = Color(0xFFE53935);

/// Soft primary gradient used in cards, backgrounds, and buttons
const LinearGradient kPrimaryGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFB388F5), // Soft lavender
    Color(0xFF7E57C2), // Elegant purple
  ],
);

/// Button height used consistently
const double kButtonHeight = 48.0;

/// Default animation duration for transitions
const Duration kAnimationDuration = Duration(milliseconds: 300);

/// Padding/margin constants
const double kPadding = 16.0;
const double kRadius = 16.0;
