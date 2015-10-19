# 取得雅虎股市資料
# 先安裝 httr
# install.packages("httr")
# 系統會自動安裝
# stringi, magrittr, digest, jsonlite, mime, curl, R6, stringr 等套件
library(httr)
res = GET("http://tw.stock.yahoo.com/d/s/major_2451.html")
# 印出 res 結果
# res
# res$url         回應結果的網址 http://tw.stock.yahoo.com/d/s/major_2451.html
# res$status_code 狀態代碼
# res$cookies
# res$content     回應結果，以 HEX 表示，Byte Data
# res$date        回應時間
# res$times       相關動作的處理時間
# res$handle
# 原始資料為 Big5 編碼，可使用 Context 函數來處理相關中文字型顯示
content(res, as="text", encoding="big5")

# 使用 post 方法，取得公開資訊站資料
# Demo POST method
# URL: http://mops.twse.com.tw/mops/web/t51sb01
# 要取得基本資料查詢彙總表
# 相關參數市場別: 產業別:
# request URL: "http://mops.twse.com.tw/mops/web/ajax_t51sb01"
# Chrome 點選 XHR > From Data 可以看到送入的相關參數
# encodeURIComponent=1, step=1, firstin=1, TYPEK=sii, code=01
# 相關 POST 參數請參考 http://forum.twbts.com/viewthread.php?tid=9214 說明
# 
# code 不給定，取得所有上市公司基本資料
res = POST("http://mops.twse.com.tw/mops/web/ajax_t51sb01",
           body = "encodeURIComponent=1&step=1&firstin=1&TYPEK=sii&code=")
res
res$request
content(res, "text", encoding = "utf8")
