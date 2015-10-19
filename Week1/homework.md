# 找到資料

1. [7-11](http://emap.pcsc.com.tw/emap.aspx) 找出全省 7-11 的店舖資訊
2. [雅虎股市_個股當日主力進出](https://tw.stock.yahoo.com/d/s/major_2451.html) 取得欄位資料
	Ans: https://tw.stock.yahoo.com/d/s/major_2451.html

3. [內政部實價登錄](https://tw.stock.yahoo.com/d/s/major_2451.html)
4. [公開資訊觀測站](http://mops.twse.com.tw/mops/web/t51sb01)
5. [Ptt八卦](https://www.ptt.cc/bbs/Gossiping/index.html)
6. [PChome購物](http://ecshweb.pchome.com.tw/search/v3.3/?q=sony)
	* 放在 XHR 標籤中的 results? 裡面
    * 點選 headers 中的 requset URL 就能取得資料頁面
	http://ecshweb.pchome.com.tw/search/v3.3/all/results?q=sony&page=1&sort=rnk/dc&callback=jQuery1710653160372050479_1445242793676
	* 去掉 Callback 就能取得 JSON 資料
	* http://ecshweb.pchome.com.tw/search/v3.3/all/results?q=sony


# 如何觀察

1. 打開無痕視窗，開啟開發者工具
2. 打開 network,勾選 Preserve Log 
3. 貼上你要處理的網址
	eg. https://www.ptt.cc/bbs/Gossiping/index.html

## 一般資料都在

* Documents
* XHR
* Script
* Websockets

