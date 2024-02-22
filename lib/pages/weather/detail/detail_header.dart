import 'package:flutter/material.dart';
import '../../search/search_screen.dart';
import '../../settings/settings_screen.dart';
import '../list/list_screen.dart';

class DetailScreenHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const DetailScreenHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.3);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:  IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const ListScreen()),
          (_) => false,
        )
      ),
      automaticallyImplyLeading: false,
      elevation: 0.5,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: false,
      title: const Text("KasaIru",
          style: TextStyle(
              color: Colors.black,
              fontSize: 33,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold)),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          },
          icon: const Icon(Icons.search, size: 30, color: Colors.black),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
          icon: const Icon(Icons.settings, size: 30, color: Colors.black),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
