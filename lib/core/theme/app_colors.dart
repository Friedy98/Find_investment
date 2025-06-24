import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors (Violet)
  static const Color primary = Color(0xFF7C3AED); // Violet 600
  static const Color primaryLight = Color(0xFFA78BFA); // Violet 400
  static const Color primaryDark = Color(0xFF6D28D9); // Violet 700

  // Secondary Colors (Dark Purple)
  static const Color secondary = Color(0xFF4C1D95); // Purple 900
  static const Color secondaryLight = Color(0xFF6B21A8); // Purple 800
  static const Color secondaryDark = Color(0xFF2E1065); // Purple 950

  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color gray50 = Color(0xFFF7F7F7); // Very light gray
  static const Color gray100 = Color(0xFFF1F5F9); // Light gray
  static const Color gray200 = Color(0xFFE5E7EB); // Soft gray
  static const Color gray300 = Color(0xFFD1D5DB); // Medium gray
  static const Color gray400 = Color(0xFF9CA3AF); // Gray for borders
  static const Color gray500 = Color(0xFF6B7280); // Gray for text
  static const Color gray600 = Color(0xFF4B5563); // Darker gray
  static const Color gray700 = Color(0xFF3F3F46); // Dark gray (dark theme)
  static const Color gray800 = Color(0xFF27272A); // Very dark gray
  static const Color gray900 = Color(0xFF18181B); // Near black

  // Status Colors
  static const Color success = Color(0xFF14B8A6); // Teal 500
  static const Color warning = Color(0xFFFBBF24); // Amber 400
  static const Color error = Color(0xFFF87171); // Red 400
  static const Color info = Color(0xFF60A5FA); // Blue 400

  // Text Colors
  static const Color textPrimary =
      Color(0xFF2E1065); // Dark purple for light theme
  static const Color textSecondary =
      Color(0xFF6B7280); // Gray for secondary text
  static const Color textTertiary = Color(0xFF9CA3AF); // Light gray for hints
  static const Color textInverse = Color(0xFFFFFFFF); // White for dark theme

  // Background Colors
  static const Color backgroundLight = Color(0xFFFFFFFF); // White
  static const Color backgroundDark = Color(0xFF18181B); // Near black
  static const Color surfaceLight = Color(0xFFF7F7F7); // Very light gray
  static const Color surfaceDark = Color(0xFF27272A); // Dark gray

  // Border Colors
  static const Color border = Color(0xFFE5E7EB); // Light gray
  static const Color borderDark = Color(0xFF3F3F46); // Dark gray

  // Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary, // Violet
    onPrimary: white, // White text on violet
    primaryContainer: Color(0xFFF3E8FF), // Light violet background
    onPrimaryContainer: textPrimary, // Dark purple text
    secondary: secondary, // Dark purple
    onSecondary: white, // White text on dark purple
    secondaryContainer: Color(0xFFEDE9FE), // Light purple background
    onSecondaryContainer: textPrimary, // Dark purple text
    tertiary: Color(0xFFDB2777), // Pink 600 (complementary to violet)
    onTertiary: white,
    tertiaryContainer: Color(0xFFFFD6E8), // Light pink background
    onTertiaryContainer: Color(0xFF2F0F1B),
    error: error,
    onError: white,
    errorContainer: Color(0xFFFEE2E2), // Light red
    onErrorContainer: Color(0xFF7F1D1D),
    surfaceContainer: backgroundLight, // White
    onPrimaryFixed: textPrimary, // Dark purple
    surface: surfaceLight, // Very light gray
    onSurface: textPrimary, // Dark purple
    surfaceContainerHighest: gray100, // Light gray
    onSurfaceVariant: gray600, // Darker gray
    outline: border, // Light gray
    outlineVariant: gray200, // Soft gray
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: gray800, // Dark gray
    onInverseSurface: gray100, // Light gray
    inversePrimary: primaryLight, // Light violet
  );

  // Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primaryLight, // Light violet
    onPrimary: textPrimary, // Dark purple text
    primaryContainer: primaryDark, // Dark violet
    onPrimaryContainer: Color(0xFFF3E8FF), // Light violet text
    secondary: secondaryLight, // Lighter dark purple
    onSecondary: white, // White text
    secondaryContainer: secondaryDark, // Very dark purple
    onSecondaryContainer: Color(0xFFEDE9FE), // Light purple text
    tertiary: Color(0xFFF472B6), // Pink 400 (complementary)
    onTertiary: Color(0xFF2F0F1B),
    tertiaryContainer: Color(0xFF5F1133),
    onTertiaryContainer: Color(0xFFFFD6E8),
    error: Color(0xFFFCA5A5), // Light red
    onError: Color(0xFF7F1D1D),
    errorContainer: Color(0xFFB91C1C), // Dark red
    onErrorContainer: Color(0xFFFEE2E2),
    surfaceContainer: backgroundDark, // Near black
    onPrimaryFixed: gray100, // Light gray
    surface: surfaceDark, // Dark gray
    onSurface: gray100, // Light gray
    surfaceContainerHighest: gray700, // Dark gray
    onSurfaceVariant: gray300, // Medium gray
    outline: borderDark, // Dark gray
    outlineVariant: gray600, // Darker gray
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: gray100, // Light gray
    onInverseSurface: gray800, // Dark gray
    inversePrimary: primary, // Violet
  );
}
