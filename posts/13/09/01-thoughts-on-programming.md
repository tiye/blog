
关于图形编程一些想法
======

### 图形编程

今天有点时间理了下思路, 觉得图形编程, 至少我以前想的错了
我以为所有的代码都能通过突醒來编写, 从而摆脱文本编程的这些麻烦
但细想, 编程具体到 `if else` 的判断, 类型转化等等, 无法简化的
就算是将文本变成图形, 我们同样要有类似的结构来完成对应的功能
这样意味着制作图形反而不如文本编程更快捷, 输入文字很方便
总之, 代码完全的图形化是不可能的

不能完全图形化, 那么部分的图形化呢?
我当初觉得图形有利的几点, 一个是摆脱文本中空白和分隔符的混淆
代码中用空格有时是文本内容空格, 有时是为了代码的排版, 显得很原始
并且代码的样式无法像 CSS 那样轻松自定义, 以及语法解析的麻烦
加上操作界面受字符位置的限制, 同时又是写死, 显得很麻烦
部分的图形化就是为了解决基本形态问题, 像 [Cirru Editor](editor) 那样

[editor]: http://jiyinyiyong.github.io/article/04-cirru-project/page

另一个目标是像 Intentional Programming 那样, 让代码能按多种方式呈现
比如按代码呈现, 按电路的形态呈现, 或者其他有利于理解的方式

[Intentional Programming - Editor](http://www.youtube.com/watch?v=tSnnfUj1XCQ)
[Intentional Programming - Compiler](http://www.youtube.com/watch?v=ZZDwB4-DPXE)

另一个简单的需求, 比如编程中方法名过多就会搜索方法名, 或者文件名, 变量等等
代码对于我们来说其实是一段一段的卡片, 被索引和连接在一起
或者, 其实就是单独的函数, 以及作用域里写的变量
是一个字典的形态, 而不是完整的代码树, 我们不应该用文本的瀑布来书写
而 [Smalltalk](pharo) 里的例子也显得非常清晰, 不是当作文本编辑
并且 Smalltalk 同时是在代码运行环境实时编写, 现在我们都很少做到

[pharo]: http://www.pharo-project.org/about/screenshots

还有是 Noflo 的想法, 将 JS 代码封装为模块, 然后在图形上操作之间的关联
Flow Based Programming 很早就有了, 只是具体我还没弄懂怎么做
这里的启示是, 代码可以分成可以图形化和难以图形化两部分, 有点像 Smalltalk
而代码用图形的方式展现之后, 可能性回事无穷的.. Noflo 的话可以看下下边的资源
https://vimeo.com/71970669
http://noflo.github.io/dataflow-noflo/demo/
http://bergie.iki.fi/talks/2013/noflo-sfjs/

### 执行过程的可视化

我现在关于图形编程的想法, 大概是在不同的层面用不同的工具来做
比如单个方法内的逻辑性代码, 太琐碎, 就有 Cirru 网页编辑器写
对象和方法组织的形式, 就像 Pharo 里重现的那样, 用列表管理
大尺度上的代码抽象通过 Noflo 这样的图形化工具来实现
然后对错误栈, 显示出具体输入输出的数据, 就像 Brackets 做的那样
单纯的文本, 单纯的跳转的错误行, 这显得太原始了一些

我感到调试的过程其实就是为了让代码对应的行为进课能可视化
可视化到人们能看清中间出错的在哪里, 或者具体图形上的效果
Noflo 只是其中一种, 对于代码本身执行的过程, 有更多的可视化可做

### 付出和回报

另外昨天看 Monads 代码时候就在想, 究竟怎么样才能人学会呢?
回想当初学板, 就是不断地练习, 形成肌肉记忆, 一直过来几个星期
然后到路上, 练肌肉的耐力, 和做稍微有难度的动作时的平衡感
除了时间, 还要有跌倒的准备, 而不是等待幸运, 一口气通过
是的据说有人一个下午就学会了玩板, 练习的方式和场地比我好
也不会别人都和我一样有坑的路上摔到下巴出血
我想说恐怕我不是幸运到无痛掌握一门技术的人, 只能做好受伤的准备了