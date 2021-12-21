# sap-purchase-scheduling-agreement-sql     

sap-purchase-scheduling-agreement-sql は、主にエッジアプリケーションにおいて、SAPと連携された購買分納契約データを保存するSQLテーブルを作成するためのレポジトリです。    
sap-purchase-scheduling-agreement-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。   

## 前提条件  
sap-purchase-scheduling-agreement-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。  
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_SCHED_AGRMT_PROCESS_SRV_0001/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。    

## sqlの設定ファイル

sap-purchase-scheduling-agreement-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-purchase-scheduling-agreement-sql-header-data.sql（SAP 購買分納契約 - ヘッダデータ）
* sap-purchase-scheduling-agreement-sql-item-data.sql（SAP 購買分納契約 - 明細データ）
* sap-purchase-scheduling-agreement-sql-header-partner-data.sql（SAP 購買分納契約 - ヘッダ取引先データ）
* sap-purchase-scheduling-agreement-sql-item-schedule-line-data.sql（SAP 購買分納契約 - 明細納入日程行データ）
* sap-purchase-scheduling-agreement-sql-item-delivery-address-data.sql（SAP 購買分納契約 - 明細納入先住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。

