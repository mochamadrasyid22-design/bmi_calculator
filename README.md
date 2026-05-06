# TUGAS ETS PRAKTIKUM MOBILE

## Pengembangan Praktikum 3 sampai 5

### Langkah‑langkah Pembuatan Aplikasi BMI Calculator
#### 1. Persiapan Project
- Install Flutter & Dart di komputer.
- Buat project baru: flutter create bmi_calculator.
- Atur struktur folder: models, services, screens, widgets.

#### 2. Entry Point
- Edit main.dart → set tema aplikasi, arahkan ke UserInputScreen.

#### 3. Model Data
- Buat file bmi_category.dart → class BmiCategory dengan properti min, max, label, advice, serta getter color dan icon.

#### 4. Service
- Buat bmi_service.dart → ambil kategori BMI dari JSON/endpoint.
- Buat storage_service.dart → simpan dan load tinggi/berat dengan SharedPreferences.

#### 5. Input Screen
- Buat user_input.dart:
- Tambahkan widget GenderToggle.
- Tambahkan TextField + Slider untuk tinggi dan berat.
- Tombol Calculate → navigasi ke BmiResultScreen.

#### 6. Result Screen
- Buat bmi_result.dart:
- Hitung BMI dengan rumus.
- Tentukan kategori menggunakan BmiCategory.
- Tampilkan nilai BMI, kategori, advice, warna, dan ikon.

7. Widget Reusable
- Buat gender_toggle.dart: widget toggle interaktif untuk memilih gender.

#### 8. Testing
- Jalankan aplikasi dengan flutter run.
- Uji input tinggi/berat manual dan slider.
- Pastikan hasil BMI sesuai kategori.

  ## Halaman Utama
  <img width="1920" height="972" alt="nature utm" src="https://github.com/user-attachments/assets/92b0fc6e-5d4a-4ac1-90d6-62e232817312" />

  ## Halaman Result
  <img width="1920" height="967" alt="nature" src="https://github.com/user-attachments/assets/2a2fe7a7-d35c-484e-96c7-d0ad7a1aa775" />

