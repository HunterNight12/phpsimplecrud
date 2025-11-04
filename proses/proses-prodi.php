<?php

// Memasukkan file class-master.php untuk mengakses class MasterData
include '../config/class-master.php';
// Membuat objek dari class MasterData
$master = new MasterData();
// Mengecek aksi yang dilakukan berdasarkan parameter GET 'aksi'
if($_GET['aksi'] == 'inputprodi'){
    // Mengambil data Ranking dari form input menggunakan metode POST dan menyimpannya dalam array
    $dataranking = [
        'kode' => $_POST['kode'],
        'nama' => $_POST['nama']
    ];
    // Memanggil method inputRanking untuk memasukkan data Ranking dengan parameter array $dataRanking
    $input = $master->inputRanking($dataranking);
    if($input){
        // Jika berhasil, redirect ke halaman master-Ranking-list.php dengan status inputsuccess
        header("Location: ../master-prodi-list.php?status=inputsuccess");
    } else {
        // Jika gagal, redirect ke halaman master-Ranking-input.php dengan status failed
        header("Location: ../master-ranking-input.php?status=failed");
    }
} elseif($_GET['aksi'] == 'updateranking    '){
    // Mengambil data Ranking dari form edit menggunakan metode POST dan menyimpannya dalam array
    $dataranking = [
        'id' => $_POST['id'],   
        'kode' => $_POST['kode'],
        'nama' => $_POST['nama']
    ];
    // Memanggil method updateRanking untuk mengupdate data Ranking dengan parameter array $dataRanking
    $update = $master->updateRanking($dataranking);
    if($update){
        // Jika berhasil, redirect ke halaman master-Ranking-list.php dengan status editsuccess
        header("Location: ../master-prodi-list.php?status=editsuccess");
    } else {
        // Jika gagal, redirect ke halaman master-Ranking-edit.php dengan status failed dan membawa id Ranking
        header("Location: ../master-prodi-edit.php?id=".$dataranking['id']."&status=failed");
    }
} elseif($_GET['aksi'] == 'deleteprodi'){
    // Mengambil id Ranking dari parameter GET
    $id = $_GET['id'];
    // Memanggil method deleteRanking untuk menghapus data Ranking berdasarkan id
    $delete = $master->deleteRanking($id);
    if($delete){
        // Jika berhasil, redirect ke halaman master-Ranking-list.php dengan status deletesuccess
        header("Location: ../master-prodi-list.php?status=deletesuccess");
    } else {
        // Jika gagal, redirect ke halaman master-Ranking-list.php dengan status deletefailed
        header("Location: ../master-prodi-list.php?status=deletefailed");
    }
}

?>