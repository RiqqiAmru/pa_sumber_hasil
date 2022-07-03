TYPE=VIEW
query=select `pa_sumber_hasil`.`trans_pengiriman`.`tgl_sa` AS `tgl_sa`,`pa_sumber_hasil`.`pengirim`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`detail_pengiriman`.`jml_barang` AS `jml_barang`,`pa_sumber_hasil`.`ongkos_kuli`.`ongkos` AS `ongkos`,`pa_sumber_hasil`.`trans_pengiriman`.`total_ongkos_kuli` AS `total` from `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pengirim` join `pa_sumber_hasil`.`detail_pengiriman` join `pa_sumber_hasil`.`ongkos_kuli` where `pa_sumber_hasil`.`trans_pengiriman`.`no_sa` = `pa_sumber_hasil`.`detail_pengiriman`.`no_sa` and `pa_sumber_hasil`.`detail_pengiriman`.`id_ongkos` = `pa_sumber_hasil`.`ongkos_kuli`.`id_ongkos` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim`
md5=b069e27dea897fdbd03d4846d751dec6
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-07-03 06:43:19
create-version=2
source=SELECT\n    trans_pengiriman.tgl_sa,\n    pengirim.nm_pengirim,\n    detail_pengiriman.jml_barang,\n    ongkos_kuli.ongkos,\n    trans_pengiriman.total_ongkos_kuli AS total\nFROM\n    trans_pengiriman,\n    pengirim,\n    detail_pengiriman,\n    ongkos_kuli\nWHERE\n    trans_pengiriman.no_sa = detail_pengiriman.no_sa AND detail_pengiriman.id_ongkos = ongkos_kuli.id_ongkos AND trans_pengiriman.id_pengirim = pengirim.id_pengirim
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `pa_sumber_hasil`.`trans_pengiriman`.`tgl_sa` AS `tgl_sa`,`pa_sumber_hasil`.`pengirim`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`detail_pengiriman`.`jml_barang` AS `jml_barang`,`pa_sumber_hasil`.`ongkos_kuli`.`ongkos` AS `ongkos`,`pa_sumber_hasil`.`trans_pengiriman`.`total_ongkos_kuli` AS `total` from `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pengirim` join `pa_sumber_hasil`.`detail_pengiriman` join `pa_sumber_hasil`.`ongkos_kuli` where `pa_sumber_hasil`.`trans_pengiriman`.`no_sa` = `pa_sumber_hasil`.`detail_pengiriman`.`no_sa` and `pa_sumber_hasil`.`detail_pengiriman`.`id_ongkos` = `pa_sumber_hasil`.`ongkos_kuli`.`id_ongkos` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim`
mariadb-version=100422
