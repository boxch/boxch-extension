class ThemeState {
  final bool icon;
  final bool ligthTheme;

  ThemeState({required this.icon, required this.ligthTheme});

  factory ThemeState.init(bool isTheme) =>
      ThemeState(icon: isTheme, ligthTheme: isTheme);
}
