import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/keranjang_cubits.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BelanjaCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Keranjang Belanja')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<BelanjaCubit, int>(
                builder: (context, jumlah) {
                  return Text(
                    'Jumlah Barang: $jumlah',
                    style: const TextStyle(fontSize: 22),
                  );
                },
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  context.read<BelanjaCubit>().tambahBarang();
                },
                child: const Text('Tambah Barang'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<BelanjaCubit>().kurangiBarang();
                },
                child: const Text('Kurangi Barang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
