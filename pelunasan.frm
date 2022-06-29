TYPE=VIEW
query=select `pa_sumber_hasil`.`trans_pengiriman`.`tgl_sa` AS `tgl_sa`,`pa_sumber_hasil`.`trans_pengiriman`.`no_sa` AS `no_sa`,`pa_sumber_hasil`.`pengirim`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`trans_pengiriman`.`total_bayar` AS `total_bayar`,`pa_sumber_hasil`.`pegawai`.`nm_pegawai` AS `nm_pegawai` from `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pegawai` join `pa_sumber_hasil`.`pengirim` where `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pegawai` = `pa_sumber_hasil`.`pegawai`.`id_pegawai` and `pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` in (select `pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` from `pa_sumber_hasil`.`trans_pengiriman` where `pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` = \'lunas\')
md5=7b4a0833b7be0b4a40d016c20df25046
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-06-29 11:02:12
create-version=2
source=SELECT\n    trans_pengiriman.tgl_sa,\n    trans_pengiriman.no_sa,\n    pengirim.nm_pengirim,\n    trans_pengiriman.total_bayar,\n    pegawai.nm_pegawai\nFROM\n    trans_pengiriman,\n    pegawai,\n    pengirim\nWHERE\n    trans_pengiriman.id_pengirim = pengirim.id_pengirim AND trans_pengiriman.id_pegawai = pegawai.id_pegawai AND trans_pengiriman.ketr_bayar IN(\n    SELECT\n        ketr_bayar\n    FROM\n        trans_pengiriman\n    WHERE\n        ketr_bayar = \'lunas\'\n)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `pa_sumber_hasil`.`trans_pengiriman`.`tgl_sa` AS `tgl_sa`,`pa_sumber_hasil`.`trans_pengiriman`.`no_sa` AS `no_sa`,`pa_sumber_hasil`.`pengirim`.`nm_pengirim` AS `nm_pengirim`,`pa_sumber_hasil`.`trans_pengiriman`.`total_bayar` AS `total_bayar`,`pa_sumber_hasil`.`pegawai`.`nm_pegawai` AS `nm_pegawai` from `pa_sumber_hasil`.`trans_pengiriman` join `pa_sumber_hasil`.`pegawai` join `pa_sumber_hasil`.`pengirim` where `pa_sumber_hasil`.`trans_pengiriman`.`id_pengirim` = `pa_sumber_hasil`.`pengirim`.`id_pengirim` and `pa_sumber_hasil`.`trans_pengiriman`.`id_pegawai` = `pa_sumber_hasil`.`pegawai`.`id_pegawai` and `pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` in (select `pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` from `pa_sumber_hasil`.`trans_pengiriman` where `pa_sumber_hasil`.`trans_pengiriman`.`ketr_bayar` = \'lunas\')
mariadb-version=100422
