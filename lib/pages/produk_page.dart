// import 'package:flutter/material.dart';

// class ProdukPage extends StatefulWidget {
//   const ProdukPage({super.key});

//   @override
//   State<ProdukPage> createState() => _ProdukPageState();
// }

// class _ProdukPageState extends State<ProdukPage> {
//   final List<Map<String, dynamic>> produk = [
//     {'nama': 'Pupuk Kompos Organik', 'harga': 15000},
//     {'nama': 'Pot Tanaman Daur Ulang', 'harga': 25000},
//     {'nama': 'Tas Kemasan Daur Ulang', 'harga': 35000},
//   ];

//   int jumlahBotol = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Katalog Produk')),
//       body: ListView(
//         padding: const EdgeInsets.all(12),
//         children: [
//           ...produk.map((item) {
//             return Card(
//               child: ListTile(
//                 leading: const Icon(Icons.eco, color: Colors.green),
//                 title: Text(item['nama'] as String),
//                 subtitle: Text('Harga: Rp${item['harga']}'),
//               ),
//             );
//           }),
//           const SizedBox(height: 12),
//           Card(
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 children: [
//                   const Text(
//                     'Jumlah pembelian Botol Minum',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     '$jumlahBotol',
//                     style: const TextStyle(fontSize: 28),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             if (jumlahBotol > 1) {
//                               jumlahBotol--;
//                             }
//                           });
//                         },
//                         icon: const Icon(Icons.remove_circle_outline),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             jumlahBotol++;
//                           });
//                         },
//                         icon: const Icon(Icons.add_circle_outline),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 8),
//           OutlinedButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Kembali'),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  final List<Map<String, dynamic>> produk = [
    {'nama': 'Pupuk Kompos Organik', 'harga': 15000},
    {'nama': 'Pot Tanaman Daur Ulang', 'harga': 25000},
    {'nama': 'Tas Kemasan Daur Ulang', 'harga': 35000},
  ];


  int jumlahBotol = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Katalog Produk')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [

          ...produk.map((item) {
            return Card(
              child: ListTile(
                leading: const Icon(Icons.eco, color: Colors.green),
                title: Text(item['nama'] as String),

                subtitle: Text('Harga: Rp${item['harga']}'),
              ),
            );
          }),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Text(
                    'Jumlah pembelian ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$jumlahBotol',
                    style: const TextStyle(fontSize: 28),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      IconButton(
                        onPressed: () {
                          setState(() {

                            if (jumlahBotol > 1) {
                              jumlahBotol--;
                            }
                          });
                        },
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            jumlahBotol++;
                          });
                        },
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),

          OutlinedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
