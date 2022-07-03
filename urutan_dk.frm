TYPE=VIEW
query=select `pa_sumber_hasil`.`trans_pengiriman`.`no_dk` AS `no_dk`,`urutan`.`no_sa` AS `no_sa`,`urutan`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`pengirim`.`alamat` AS `alamat`,`urutan`.`nm_penerima` AS `nm_penerima`,`pa_sumber_hasil`.`trans_pengiriman`.`alamat_penerima` AS `alamat_penerima`,`urutan`.`jml_barang` AS `jml_barang`,`urutan`.`jenis_barang` AS `jenis_barang`,`urutan`.`nm_barang` AS `nm_barang`,`urutan`.`total_berat` AS `total_berat`,`urutan`.`ketr_bayar` AS `ketr_bayar`,`urutan`.`bayar` AS `bayar` from `pa_sumber_hasil`.`urutan` join `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pengirim` where `urutan`.`no_sa` = `pa_sumber_hasil`.`trans_pengiriman`.`no_sa` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim`
md5=897d1c818c9ec1444249a948990a8318
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-07-03 07:18:46
create-version=2
source=SELECT \ntrans_pengiriman.no_dk,\nurutan.no_sa,\nurutan.nm_pengirim,\npengirim.alamat,\nurutan.nm_penerima,\ntrans_pengiriman.alamat_penerima,\nurutan.jml_barang,\nurutan.jenis_barang,\nurutan.nm_barang,\nurutan.total_berat,\nurutan.ketr_bayar,\nurutan.bayar\nFROM urutan,trans_pengiriman,pengirim\nWHERE urutan.no_sa = trans_pengiriman.no_sa\nAND trans_pengiriman.id_pengirim = pengirim.id_pengirim
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `pa_sumber_hasil`.`trans_pengiriman`.`no_dk` AS `no_dk`,`urutan`.`no_sa` AS `no_sa`,`urutan`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`pengirim`.`alamat` AS `alamat`,`urutan`.`nm_penerima` AS `nm_penerima`,`pa_sumber_hasil`.`trans_pengiriman`.`alamat_penerima` AS `alamat_penerima`,`urutan`.`jml_barang` AS `jml_barang`,`urutan`.`jenis_barang` AS `jenis_barang`,`urutan`.`nm_barang` AS `nm_barang`,`urutan`.`total_berat` AS `total_berat`,`urutan`.`ketr_bayar` AS `ketr_bayar`,`urutan`.`bayar` AS `bayar` from `pa_sumber_hasil`.`urutan` join `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pengirim` where `urutan`.`no_sa` = `pa_sumber_hasil`.`trans_pengiriman`.`no_sa` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim`
mariadb-version=100422
