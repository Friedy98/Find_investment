import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF007AFF); // Vibrant blue
  static const Color accent = Color(0xFFFF2D55); // Bright red for accents
  static const Color background = Color(0xFFF5F7FA); // Light gray background
  static const Color cardBackground = Colors.white; // White for card
  static const Color textPrimary = Color(0xFF1A1A1A); // Dark gray for text
  static const Color textSecondary =
      Color(0xFF757575); // Lighter gray for hints/icons
  static const Color gray50 =
      Color(0xFFFAFAFA); // Light gray for field background
  static const Color gray200 = Color(0xFFEEEEEE); // Border color
  static const Color error = Color(0xFFFF3B30); // Red for errors

  // Primary Colors (Blue)
  // static const Color primary = Color(0xFF0067FF); // Main blue
  static const Color primaryLight = Color(0xFF4B8FFF); // Lighter blue (derived)
  static const Color primaryDark = Color(0xFF0047B3); // Darker blue (derived)

  // Secondary Colors (Gray)
  static const Color secondary = Color(0xFF6E7174); // Dark gray
  static const Color secondaryLight =
      Color(0xFF8E9194); // Lighter gray (derived)
  static const Color secondaryDark =
      Color.fromARGB(138, 244, 244, 245); // Darker gray (derived)

  // Neutral Colors
  static const Color white = Color(0xFFF9F9F9); // Off-white
  static const Color black = Color(0xFF232323); // Black
  // static const Color gray50 = Color(0xFFF9F9F9); // Off-white
  static const Color gray100 = Color(0xFFE7E5E5); // Light gray
  // static const Color gray200 = Color(0xFFD4D2D2); // Softer gray (derived)
  static const Color gray300 = Color(0xFFB0B0B0); // Medium gray (derived)
  static const Color gray400 = Color(0xFF8E9194); // Secondary light gray
  static const Color gray500 = Color(0xFF6E7174); // Secondary dark gray
  static const Color gray600 = Color(0xFF4B4E50); // Darker gray (derived)
  static const Color gray700 = Color(0xFF3A3D3F); // Dark gray (derived)
  static const Color gray800 = Color(0xFF232323); // Black
  static const Color gray900 = Color(0xFF1A1A1A); // Near black (derived)

  // Status Colors
  static const Color success = Color(0xFF14B8A6); // Teal 500 (accent)
  static const Color warning = Color(0xFFFBBF24); // Amber 400 (accent)
  // static const Color error = Color(0xFFF87171); // Red 400 (accent)
  static const Color info = Color(0xFF8B5CF6); // Purple 500 (accent)

  // Text Colors
  // static const Color textPrimary = Color(0xFF232323); // Black for light theme
  // static const Color textSecondary = Color(0xFF6E7174); // Dark gray
  static const Color textTertiary = Color(0xFFE7E5E5); // Light gray for hints
  static const Color textInverse =
      Color(0xFFF9F9F9); // Off-white for dark theme

  // Background Colors
  static const Color backgroundLight = Color(0xFFF9F9F9); // Off-white
  static const Color backgroundDark = Color(0xFF232323); // Black
  static const Color surfaceLight = Color(0xFFE7E5E5); // Light gray
  static const Color surfaceDark = Color(0xFF3A3D3F); // Dark gray

  // Border Colors
  static const Color border = Color(0xFFE7E5E5); // Light gray
  static const Color borderDark = Color(0xFF6E7174); // Dark gray

  // Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary, // Blue
    onPrimary: white, // Off-white text on blue
    primaryContainer: Color(0xFFE6F0FF), // Very light blue background
    onPrimaryContainer: textPrimary, // Black text
    secondary: secondary, // Dark gray
    onSecondary: white, // Off-white text on dark gray
    secondaryContainer: Color(0xFFECECED), // Light gray background
    onSecondaryContainer: textPrimary, // Black text
    tertiary: Color(0xFFF472B6), // Pink 400 (complementary accent)
    onTertiary: white,
    tertiaryContainer: Color(0xFFFFD6E8), // Light pink background
    onTertiaryContainer: Color(0xFF2F0F1B),
    error: error,
    onError: white,
    errorContainer: Color(0xFFFEE2E2), // Light red
    onErrorContainer: Color(0xFF7F1D1D),
    surfaceContainer: backgroundLight, // Off-white
    onSecondaryFixed: textPrimary, // Black
    surface: surfaceLight, // Light gray
    onSurface: textPrimary, // Black
    surfaceContainerHighest: gray100, // Light gray
    onSurfaceVariant: gray600, // Darker gray
    outline: border, // Light gray
    outlineVariant: gray200, // Softer gray
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: gray800, // Black
    onInverseSurface: gray100, // Light gray
    inversePrimary: primaryLight, // Lighter blue
  );

  // Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primaryLight, // Lighter blue
    onPrimary: textPrimary, // Black text
    primaryContainer: primaryDark, // Darker blue
    onPrimaryContainer: Color(0xFFE6F0FF), // Light blue text
    secondary: secondaryLight, // Lighter gray
    onSecondary: white, // Off-white text
    secondaryContainer: secondaryDark, // Darker gray
    onSecondaryContainer: Color(0xFFECECED), // Light gray text
    tertiary: Color(0xFFF472B6), // Pink 400 (complementary)
    onTertiary: Color(0xFF2F0F1B),
    tertiaryContainer: Color(0xFF5F1133),
    onTertiaryContainer: Color(0xFFFFD6E8),
    error: Color(0xFFFCA5A5), // Light red
    onError: Color(0xFF7F1D1D),
    errorContainer: Color(0xFFB91C1C), // Dark red
    onErrorContainer: Color(0xFFFEE2E2),
    surfaceContainer: backgroundDark, // Black
    onSecondaryFixed: gray100, // Light gray
    surface: surfaceDark, // Dark gray
    onSurface: gray100, // Light gray
    surfaceContainerHighest: gray700, // Dark gray
    onSurfaceVariant: gray300, // Medium gray
    outline: borderDark, // Dark gray
    outlineVariant: gray600, // Darker gray
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: gray100, // Light gray
    onInverseSurface: gray800, // Black
    inversePrimary: primary, // Blue
  );
}
