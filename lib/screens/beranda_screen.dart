import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static const List<MataKuliah> _jadwal = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Kamis',
    ),
    MataKuliah(kode: 'IF-021', nama: 'Basis Data', sks: 3, hari: 'Jumat'),
    MataKuliah(
      kode: 'IF-022',
      nama: 'Analisis dan Desain Sistem',
      sks: 3,
      hari: 'Senin',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tanggalHariIni = DateFormat(
      'EEEE, d MMMM y',
      'id_ID',
    ).format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text('KampusKu'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Selamat Datang, Mahasiswa!',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(tanggalHariIni, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 24),
          Text('Jadwal Kuliah', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          for (final mk in _jadwal)
            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: Text(mk.nama),
                subtitle: Text('${mk.kode} • ${mk.hari} • ${mk.sks} SKS'),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
        ],
      ),
    );
  }
}
