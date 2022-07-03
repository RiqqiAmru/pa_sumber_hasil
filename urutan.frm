TYPE=VIEW
query=select `pa_sumber_hasil`.`trans_pengiriman`.`tgl_sa` AS `tgl_sa`,`pa_sumber_hasil`.`trans_pengiriman`.`no_sa` AS `no_sa`,`pa_sumber_hasil`.`pengirim`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`trans_pengiriman`.`nm_penerima` AS `nm_penerima`,`pa_sumber_hasil`.`detail_pengiriman`.`jml_barang` AS `jml_barang`,`pa_sumber_hasil`.`barang`.`jenis_barang` AS `jenis_barang`,`pa_sumber_hasil`.`detail_pengiriman`.`nm_barang` AS `nm_barang`,`pa_sumber_hasil`.`detail_pengiriman`.`total_berat` AS `total_berat`,`pa_sumber_hasil`.`barang`.`baku_harga` AS `baku_harga`,`pa_sumber_hasil`.`detail_pengiriman`.`bayar` AS `bayar`,`pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` AS `ketr_bayar` from `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pengirim` join `pa_sumber_hasil`.`detail_pengiriman` join `pa_sumber_hasil`.`barang` where `pa_sumber_hasil`.`trans_pengiriman`.`no_sa` = `pa_sumber_hasil`.`detail_pengiriman`.`no_sa` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim` and `pa_sumber_hasil`.`detail_pengiriman`.`id_barang` = `pa_sumber_hasil`.`barang`.`id_barang`
md5=45b68f6a4fb24513ff335103bf0ba048
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-07-03 06:58:51
create-version=2
source=SELECT \ntrans_pengiriman.tgl_sa,\ntrans_pengiriman.no_sa,\npengirim.nm_pengirim,\ntrans_pengiriman.nm_penerima,\ndetail_pengiriman.jml_barang,\nbarang.jenis_barang,\ndetail_pengiriman.nm_barang,\ndetail_pengiriman.total_berat,\nbarang.baku_harga,\ndetail_pengiriman.bayar,\ntrans_pengiriman.ketr_bayar\nFROM trans_pengiriman,pengirim,detail_pengiriman,barang\nWHERE trans_pengiriman.no_sa = detail_pengiriman.no_sa\nAND trans_pengiriman.id_pengirim = pengirim.id_pengirim\nAND detail_pengiriman.id_barang = barang.id_barang
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `pa_sumber_hasil`.`trans_pengiriman`.`tgl_sa` AS `tgl_sa`,`pa_sumber_hasil`.`trans_pengiriman`.`no_sa` AS `no_sa`,`pa_sumber_hasil`.`pengirim`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`trans_pengiriman`.`nm_penerima` AS `nm_penerima`,`pa_sumber_hasil`.`detail_pengiriman`.`jml_barang` AS `jml_barang`,`pa_sumber_hasil`.`barang`.`jenis_barang` AS `jenis_barang`,`pa_sumber_hasil`.`detail_pengiriman`.`nm_barang` AS `nm_barang`,`pa_sumber_hasil`.`detail_pengiriman`.`total_berat` AS `total_berat`,`pa_sumber_hasil`.`barang`.`baku_harga` AS `baku_harga`,`pa_sumber_hasil`.`detail_pengiriman`.`bayar` AS `bayar`,`pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` AS `ketr_bayar` from `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pengirim` join `pa_sumber_hasil`.`detail_pengiriman` join `pa_sumber_hasil`.`barang` where `pa_sumber_hasil`.`trans_pengiriman`.`no_sa` = `pa_sumber_hasil`.`detail_pengiriman`.`no_sa` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim` and `pa_sumber_hasil`.`detail_pengiriman`.`id_barang` = `pa_sumber_hasil`.`barang`.`id_barang`
mariadb-version=100422
