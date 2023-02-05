import 'package:flex_color_scheme/flex_color_scheme.dart';

class AppTheme {
  final light = FlexThemeData.light(
    scheme: FlexScheme.red,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 9,
    subThemesData: const FlexSubThemesData(
      defaultRadius: 12.0,
      elevatedButtonSchemeColor: SchemeColor.surface,
      elevatedButtonSecondarySchemeColor: SchemeColor.primary,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      inputDecoratorIsFilled: false,
      inputDecoratorUnfocusedBorderIsColored: false,
    ),
    keyColors: const FlexKeyColors(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );
  final dark = FlexThemeData.dark(
    scheme: FlexScheme.red,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(
      defaultRadius: 12.0,
      elevatedButtonSchemeColor: SchemeColor.surface,
      elevatedButtonSecondarySchemeColor: SchemeColor.primary,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      inputDecoratorIsFilled: false,
      inputDecoratorUnfocusedBorderIsColored: false,
    ),
    keyColors: const FlexKeyColors(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // To use the Playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );
}
