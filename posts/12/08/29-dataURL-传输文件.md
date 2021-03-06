
dataURL 传输文件
------

一直很想知道怎么从浏览器上传文件, 曾经在社区问过, 没有好的结果
http://cnodejs.org/topic/4f8f54f8407edba21416cf60
当时找到了一个款叫做 `delivery` 的模块, 可以在 `socket.io` 当中传输文件
https://github.com/liamks/Delivery.js
也一直不知道怎么实现的, 最初虽然动过 File API 一类的代码, 也没成功
然后因为现在对 HTTP 协议熟悉度有所提高了, 开始稍稍理解
https://twitter.com/jiyinyiyong/status/240790389446021120
推测上传就是 Node 处理 POST 请求存放数据的过程

然后回去看网上介绍 File API 的文档, 这一次我慢慢看懂了
http://www.html5rocks.com/zh/tutorials/file/dndfiles/
并确认浏览器支持, Firefox 和 Chrome 双双支持的
http://caniuse.com/#feat=fileapi
然后自己仿写了一个版本, 前端的部分的代码是这样的

```jade
body
  input(id='file', type='file', multiple='')
```

```coffee
show = (x) -> console.log x
hostname = location.hostname
s = io.connect "#{hostname}:8001"
$ ->
  $('#file').bind 'change', (e) ->
    files = e.target.files
    reader = new FileReader()
    reader.onload = (file) ->
      res = file.target.result
      show 'sending'
      s.emit 'dataURL', res
    reader.readAsDataURL files[0]
```

开始我很想知道读出来是什么数据, 后来看到方法名, 反应过来是 dataURL
印象里 canvas 图片的 dataURL 我听说过的, 输入到地址栏可以显示图片
http://www.blackglory.co.cc/canvas-convert-the-picture-to-dataurl/
做了更多的搜多之后防线支持更多的文件类型, 于是我就明白了
http://marz.is-programmer.com/posts/20048.html
我尝试把内容输入到地址栏, 发现文件名是问题, 没有文件名啊
搜索之后发现人买说协议当中没有定义关于文件名的内容, 因此没有通用的办法
http://stackoverflow.com/questions/283956/is-there-any-way-to-specify-a-suggested-filename-when-using-data-uri
http://stackoverflow.com/questions/8792616/downloading-file-from-dataurl-in-javascript

没办法, 但 Node 能单独传文件名的, 于是搜写文件的代码, 简单
http://stackoverflow.com/questions/6926016/nodejs-saving-a-base64-encoded-image-to-disk
我用 coffee 仿写的版本, 然后运行了一下, 成功了

```coffee
save = (data) ->
  data =  data.replace /^\w+\:\w+\/\w+\;base64\,/, ''
  dataBuffer = new Buffer data, 'base64'
  fs.writeFile 'a.zip', dataBuffer, (err) ->
    show err
    show 'end'
```

这样成功了意味着所有文件可以读取为字符串, 然后通过 `socket.io` 传输
这样的话, 我通过一个服务器转发, 相互分享文件, 理论是可行的
文件名的话, 在 Chrome 里面还是用 trick, 不然手动也勉强接受
明天开始播放器的界面部分吧, 本来还以为今天能弄完的..
