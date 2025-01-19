import 'package:shopping/core/imports/imports.dart';

import '../../widgets/customdialog_about.dart';
import '../../widgets/language_switcher.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final l10n = AppLocalizations.of(context)!;
//     return ListView(
//       padding: const EdgeInsets.all(16.0),
//       children: [
//         _buildProfileHeader(),
//         const Divider(),
//         _buildListTile(
//           context,
//           icon: Icons.share,
//           title: l10n.share,
//           onTap: () => _handleShare(context, AppLocalizations.of(context)!),
//         ),
//         _buildListTile(
//           context,
//           icon: Icons.favorite_border,
//           title: l10n.don_favorites,
//           onTap: () {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) =>
//                     const Center(child: Text("Favorites Page")),
//               ),
//             );
//           },
//         ),
//         _buildListTile(
//           context,
//           icon: Icons.info_outline,
//           title: l10n.about,
//           onTap: () => _showDialog(
//             context,
//             title: l10n.about,
//             message: l10n.aboutmsg,
//             icon: Icons.info_outline,
//           ),
//         ),
//         _buildListTile(
//           context,
//           icon: Icons.help_outline,
//           title: l10n.help,
//           onTap: () => _showDialog(
//             context,
//             title: l10n.help,
//             message: l10n.contactwithus,
//             icon: Icons.help_center_outlined,
//           ),
//         ),
//         _buildCustomDivider(),
//         _buildLanguageSwitcher(context),
//       ],
//     );
//   }
//
//   Widget _buildProfileHeader() {
//     return const Column(
//       children: [
//         CircleAvatar(
//           radius: 50,
//           backgroundImage: NetworkImage('https://via.placeholder.com/150'),
//         ),
//         SizedBox(height: 16),
//         Text(
//           "Farea AL-Dhela’a",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         Text("farea.738@gmail.com"),
//       ],
//     );
//   }
//
//   Widget _buildCustomDivider() {
//     return const Divider();
//   }
//
//   Widget _buildListTile(
//     BuildContext context, {
//     required IconData icon,
//     required String title,
//     required VoidCallback onTap,
//   }) {
//     return ListTile(
//       leading: Icon(icon),
//       title: Text(title),
//       onTap: onTap,
//     );
//   }
//
//   Widget _buildLanguageSwitcher(BuildContext context) {
//     final l10n = AppLocalizations.of(context)!;
//     return ListTile(
//       leading: const Icon(Icons.language),
//       title: Text(l10n.changeLanguage),
//       onTap: () {
//         _showLanguageBottomSheet(context);
//       },
//     );
//   }
//
//   void _showLanguageBottomSheet(BuildContext context) {
//     final l10n = AppLocalizations.of(context)!;
//
//     final List<Map<String, dynamic>> languages = [
//       {'name': l10n.english, 'locale': const Locale('en', 'US')},
//       {'name': l10n.arabic, 'locale': const Locale('ar', 'AE')},
//       //{'name': l10n.french, 'locale': const Locale('fr', 'FR')},
//       //{'name': l10n.spanish, 'locale': const Locale('es', 'ES')},
//      // {'name': l10n.german, 'locale': const Locale('de', 'DE')},
//       // Add more languages here
//     ];
//
//     showModalBottomSheet(
//       context: context,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       builder: (BuildContext context) {
//         return Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Text(
//                   l10n.selectlanguage,
//                   style: Theme.of(context).textTheme.titleLarge,
//                 ),
//               ),
//               const Divider(),
//               ListView.separated(
//                 shrinkWrap: true,
//                 itemCount: languages.length,
//                 separatorBuilder: (context, index) => const Divider(),
//                 itemBuilder: (context, index) {
//                   final language = languages[index];
//                   return ListTile(
//                     title: Text(language['name']),
//                     onTap: () {
//                       context.read<LanguageProvider>().setLocale(language['locale']);
//                       MyApp.setLocale(context, language['locale']); // Update the locale
//                       Navigator.of(context).pop();
//                     },
//                   );
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//
//   void _handleShare(BuildContext context, AppLocalizations l10n) {
//     Share.share(
//       l10n.shareme,
//       subject: l10n.shareme,
//     );
//   }
//
//   void _showDialog(
//     BuildContext context, {
//     required String title,
//     required String message,
//     required IconData icon,
//   }) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return CustomDialog(
//           message: message,
//           title: title,
//           icon: icon,
//           onClose: () => Navigator.pop(context),
//         );
//       },
//     );
//   }
// }
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
        const LanguageSwitcher(), // استخدام ويدجت تغيير اللغة هنا
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
