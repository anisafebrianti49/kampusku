
# KampusKu

Aplikasi multiplatform sederhana untuk mahasiswa Universitas Teknologi Bandung (UTB), dibuat menggunakan Flutter dan Dart sebagai bagian dari praktikum Pemrograman Mobile II.

## Fitur

- Menampilkan halaman beranda mahasiswa.
- Menampilkan tanggal hari ini dalam bahasa Indonesia.
- Menampilkan contoh jadwal mata kuliah beserta kode, hari, dan jumlah SKS.

## Teknologi

- Flutter
- Dart
- Package intl untuk format tanggal.
- Widget testing menggunakan flutter_test.

## Struktur Proyek

```text
lib/
├── main.dart
├── app.dart
├── models/
│   └── mata_kuliah.dart
├── screens/
│   └── beranda_screen.dart
├── widgets/
├── services/
├── providers/
└── utils/
```

## Menjalankan Aplikasi

Pastikan Flutter SDK sudah terpasang, lalu jalankan:

```bash
flutter pub get
flutter run -d chrome
```

Untuk menjalankan aplikasi di perangkat Android, gunakan:

```bash
flutter devices
flutter run -d ID_PERANGKAT
```

Ganti `ID_PERANGKAT` dengan ID perangkat yang ditampilkan oleh Flutter.

## Pemeriksaan

```bash
dart format lib test
flutter analyze
flutter test
```

## Bukti Pengujian

Screenshot aplikasi pada browser dan perangkat Android tersedia di folder `screenshots/`.
