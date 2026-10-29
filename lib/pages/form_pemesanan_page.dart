import 'package:flutter/material.dart';

class FormPemesananPage extends StatefulWidget {
  const FormPemesananPage({super.key});

  @override
  State<FormPemesananPage> createState() => _FormPemesananPageState();
}

class _FormPemesananPageState extends State<FormPemesananPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  String metodePembayaran = 'Tunai';
  bool setuju = false;

  @override
  void dispose() {
    namaController.dispose();
    alamatController.dispose();
    super.dispose();
  }

  void kirimPesanan() {
    if (!setuju) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Centang persetujuan sebelum mengirim pesanan.'),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Pesanan berhasil dikirim')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Pemesanan')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: namaController,
            decoration: const InputDecoration(
              labelText: 'Nama Pembeli',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: alamatController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Alamat Pengiriman',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          Text('Metode Pengiriman',
              style: Theme.of(context).textTheme.titleMedium),
          RadioListTile<String>(
            title: const Text('Diantar'),
            value: 'Diantar',
            groupValue: metodePembayaran,
            onChanged: (value) {
              if (value != null) setState(() => metodePembayaran = value);
            },
          ),
          RadioListTile<String>(
            title: const Text('Ambil Di Tempat'),
            value: 'Ambil Di Tempat',
            groupValue: metodePembayaran,
            onChanged: (value) {
              if (value != null) setState(() => metodePembayaran = value);
            },
          ),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Pesan'),
            value: setuju,
            onChanged: (value) => setState(() => setuju = value ?? false),
            controlAffinity: ListTileControlAffinity.leading,
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: kirimPesanan,
            child: const Text('Pesanan Berhasil Dibuat'),
          ),
        ],
      ),
    );
  }
}
