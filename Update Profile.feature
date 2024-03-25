Feature: Update Profile

Backgroud:
 Given User sudah login sebagai superadmin
 And User berada di halaman Dashboard

Scenario: Update profile dengan data yang valid
 Given User membuka halaman profile
 When User klik edit proile
 And User ubah Nama "Super Admin"
 And User ubah username "superadmin1"
 And User ubah password "superadmin1passwords"
 And User klik tombol Ubah Profile
 Then Data user berhasil diubah
