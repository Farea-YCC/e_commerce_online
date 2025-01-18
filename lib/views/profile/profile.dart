import 'package:shopping/core/imports/imports.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildProfileHeader(),
        const Divider(),
        _buildListTile(
          context,
          icon: Icons.share,
          title: l10n.share,
          onTap: () => _handleShare(context, AppLocalizations.of(context)!),
        ),
        _buildListTile(
          context,
          icon: Icons.favorite_border,
          title: l10n.don_favorites,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    const Center(child: Text("Favorites Page")),
              ),
            );
          },
        ),
        _buildListTile(
          context,
          icon: Icons.info_outline,
          title: l10n.about,
          onTap: () => _showDialog(
            context,
            title: l10n.about,
            message: l10n.aboutmsg,
            icon: Icons.info_outline,
          ),
        ),
        _buildListTile(
          context,
          icon: Icons.help_outline,
          title: l10n.help,
          onTap: () => _showDialog(
            context,
            title: l10n.help,
            message: l10n.contactwithus,
            icon: Icons.help_center_outlined,
          ),
        ),
        _buildCustomDivider(),
        _buildLanguageSwitcher(context),
      ],
    );
  }

  Widget _buildProfileHeader() {
    return const Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
        ),
        SizedBox(height: 16),
        Text(
          "Farea AL-Dhela’a",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text("farea.738@gmail.com"),
      ],
    );
  }

  Widget _buildCustomDivider() {
    return const Divider();
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }

  Widget _buildLanguageSwitcher(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(l10n.changeLanguage),
      onTap: () {
        _showLanguageDialog(context);
      },
    );
  }

  void _showLanguageDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text(l10n.selectlanguage)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(l10n.english),
                onTap: () {
                  context
                      .read<LanguageProvider>()
                      .setLocale(const Locale('en', 'US'));
                  MyApp.setLocale(
                      context, const Locale('en', 'US')); // Update the locale
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text(l10n.arabic),
                onTap: () {
                  context
                      .read<LanguageProvider>()
                      .setLocale(const Locale('ar', 'AE'));
                  MyApp.setLocale(
                      context, const Locale('ar', 'AE')); // Update the locale
                  Navigator.of(context).pop();
                },
              ),
              // Add more languages here as needed
            ],
          ),
        );
      },
    );
  }

  void _handleShare(BuildContext context, AppLocalizations l10n) {
    Share.share(
      l10n.shareme,
      subject: l10n.shareme,
    );
  }

  void _showDialog(
    BuildContext context, {
    required String title,
    required String message,
    required IconData icon,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomDialog(
          message: message,
          title: title,
          icon: icon,
          onClose: () => Navigator.pop(context),
        );
      },
    );
  }
}
