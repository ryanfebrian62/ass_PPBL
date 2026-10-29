import 'package:flutter/material.dart';

import 'produk_page.dart';
import 'form_pemesanan_page.dart';
import 'favorit_page.dart';
import 'keranjang.dart';
import 'lokasi_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  Widget menuButton(
    BuildContext context,
    String judul,
    Widget halaman,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => halaman),
            );
          },
          child: Text(judul),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GreenShop')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Icon(Icons.eco, size: 72, color: Colors.green),
            const SizedBox(height: 12),
            const Text(
              'Selamat Datang di GreenShop',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Aplikasi untuk mengenal dan membeli produk ramah lingkungan.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            menuButton(context, 'Latihan 1 & 2: Katalog Produk', const ProdukPage()),
            menuButton(context, 'Latihan 3: Form Pemesanan', const FormPemesananPage()),
            menuButton(context, 'Latihan 4: Favorit (Provider)', const FavoritPage()),
            menuButton(context, 'Latihan 5: Keranjang (Cubit)', const KeranjangPage()),
            menuButton(context, 'Latihan 6: Lokasi GreenLife (Maps)', const LokasiPage()),
          ],
        ),
      ),
    );
  }
}
