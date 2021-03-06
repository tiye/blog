
doctype

html
  head
    title $ = 题叶
    link (:rel stylesheet) $ :href css/index.css
    link (:rel icon) $ :href http://tiye.qiniudn.com/tiye.jpg
    meta $ :charset utf-8
  body
    #about
      .line
        a (:href http://tiye.me/) $ = 题叶
        span $ = " "
        a
          :href https://www.google.com/ncr#q=JiyinYiyong
          = @jiyinyiyong
      .line $ span $ = "ChenYong, 1991, in CoffeeScript & Cirru"
    #list
      .year $ = 2015
      .month $ = Jul
      .month $ = Jun

      .post $ a.link
        :href https://medium.com/cirru-project/cirru-sepal-project-5b30786444b5
        = "Cirru Sepal Project"
      .post $ a.link
        :href https://medium.com/cirru-project/resources-on-elixir-ast-e045b613f284
        = "Resources on Elixir AST"
      .post $ a.link
        :href http://www.douban.com/note/504737332/
        = "别人的照片"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002909224
        = "笔记 immutable-js 基本操作"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002905071
        = "最近关于 Web 和 VR 开发的一些随想"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002889630
        = "关于简聊 Webpack 配置的一些注释"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002882642
        = "笔记, Cirru Table Redo 失败, 经验教训"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002878171
        = "对视觉编程"

      .month $ = May
      .post $ a.link
        :href http://www.qianduan.net/react-virtual-dom-speed-develop/
        = "用 Virtual DOM 加速开发"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002801220
        = "为什么一个 Todolist 是不够的"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002800505
        = "简聊前端中的 React.js"
      .post $ a.link
        :href http://www.douban.com/note/501156521/
        = "Sea of Cold"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002773901
        = "[译] 真实的设计(Authentic Design)"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002753143
        = "笔记, 如何生成一个 Haskell 模块, Hackage"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002740741
        = "关于 Elm 的分享, 底稿"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002738508
        = "[译]: MVC, MVP 和 MVVM 模式的对比"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002724223
        = "关于 Monad 的学习笔记"

      .month $ = Apr
      .post $ a.link
        :href http://segmentfault.com/a/1190000002713985
        = "在线面试, 前端, 提纲, 草稿"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002709773
        = "编写 Racket 模块一些简单的记录"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002707567
        = "梳理下我至今对界面和编程方面的想法"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002707257
        = "Julia 和 Ruby 提交 package 流程一点记录跟疑问"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002687298
        = "在 Julia 当中实现 Cirru 解释器的初步想法"
      .post $ a.link
        :href http://www.douban.com/note/494212440/
        = "想念的颜色"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002678689
        = "基于 React 中文社区, 对开源社区最近的思考(2015.04)"
      .post $ a.link
        :href http://www.douban.com/note/493686558/
        = "West Lake Seasons, Inc."
      .post $ a.link
        :href http://segmentfault.com/a/1190000002669213
        = "周末花了点时间看 LLVM IR, 闲扯几句"
      .post $ a.link
        :href http://www.douban.com/note/493320358/
        = "关于桌面足球经验策略"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002646285
        = "Scirpus(Cirru -> ES6 AST) 底稿"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002642281
        = "[译] PureScript: 一门编译到 JavaScript 的 Haskell 方言"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002639770
        = "搜集用 LLVM 创造动态语言的例子"

      .month $ = Mar
      .post $ a.link
        :href http://segmentfault.com/a/1190000002635243
        = "编程不是乐趣"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002620695
        = "备份一点笔记, 关于用 escodegen 将 JavaScript AST 转化为代码"
      .post $ a.link
        :href http://www.douban.com/note/490044726/
        = "晴了的周末"
      .post $ a.link
        :href http://www.douban.com/note/488659621/
        = "下雨的周末"
      .post $ a.link
        :href https://medium.com/cirru-project/a-lisp-syntax-with-less-parentheses-915384011008
        = "A Lisp syntax with fewer parentheses"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002576013
        = "Nim 语言有哪些特点"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002573437
        = "开始使用 Nim(翻译)"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002570899
        = "关于浏览器端 Canvas Hit Region API 和结构化的图形"

      .month $ = Feb
      .post $ a.link
        :href http://www.douban.com/note/485439163/
        = "春节几日"
      .post $ a.link
        :href https://medium.com/cirru-project/cirru-cumulo-quamolit-and-my-new-year-ed096221ef8f
        = "Cirru, Cumulo, Quamolit and my new year"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002552008
        = "Webpack 怎么用"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002551952
        = "Webpack 入门指迷"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002533958
        = "最近困扰我的问题, 关于写动画"
      .post $ a.link
        :href http://www.douban.com/note/482870699/
        = "日记, 新手机和多看"

      .month $ = Jan
      .post $ a.link
        :href http://segmentfault.com/a/1190000002523389
        = "React Native 的一些介绍(正式发布之前的, 已过时)"
      .post $ a.link
        :href http://www.douban.com/note/481521846/
        = "失眠"
      .post $ a.link
        :href http://segmentfault.com/a/1190000002462378
        = "[翻译] WikiBooks: Haskell 调试"
      .post $ a.file
        :href posts/15/01/02-sights-of-2015.md
        = "2015 年展望"

      .year $ = 2014

      .month $ = Dec
      .post $ a.link
        :href http://www.douban.com/note/474400150/
        = "她是谁呢?"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000002441027
        = "写 gulp requirejs 编译流程的笔记"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000002432718
        = "使用 React 的一些经验"
      .post $ a.link
        :href http://www.douban.com/note/471984054/
        = "那些最初所想的"

      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000002411278
        = "关于 FP 和 OOP 区别不成熟的想法"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000002407016
        = "我很在乎社区的原因"

      .month $ = Nov
      .post $ a.link
        :href http://www.douban.com/note/453336413/
        = "关于编程有点灰心"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000001648081
        = "关于 WebCity 界面的一些想法"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000001638575
        = "以 Flux 角度从头考虑后端架构"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000001469143
        = "我参与过的产品回顾"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000001022809
        = "思考线上技术社区"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000781144
        = "思考程序隔离和通信"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000764614
        = "晚上在公司(Teambition)分享 React 的底稿"
      .post $ a.link
        :href http://www.douban.com/note/444725352/
        = "关于 WebCity 一些新的想法"
      .post $ a.link
        :href http://www.douban.com/note/443990247/
        = "过去一周的情况"
      .month $ = Oct
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000751795
        = "浏览器平台的改造"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000742201
        = "代码不是怎么想就怎么写的"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000742193
        = "单页面应用越来越像游戏, 我们是否有好的架构来对待?"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000742126
        = "参加 D2 的这个周末"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000741911
        = "React China 的 HTTPS 是如何配置的"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000719013
        = "假如软件正在生长"
      .post $ a.link
        :href http://www.douban.com/note/433095808/
        = "幽灵"
      .post $ a.link
        :href http://www.douban.com/note/432497089/
        = "一个人的世界"
      .month $ = Sep
      .post $ a.link
        :href http://www.douban.com/note/429903076/
        = "一日在杭州"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000693651
        = "React.js 概览"
      .post $ a.link
        :href http://segmentfault.com/blog/jiyinyiyong/1190000000692457
        = "变量名是有害的"
      .post $ a.link
        :href http://www.douban.com/note/426189432/
        = "Drown in knowledges"
      .month $ = Aug
      .post $ a.link
        :href http://www.douban.com/note/402939696/
        = "Some note on Aug 23"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000636303
        = "Cirru 解析缩进的方案"
      .month $ = July
      .post $ a.link
        :href http://www.douban.com/note/374520535/
        = "有了汽车之后, 那种平静是不能比的"
      .post $ a.file
        :href posts/14/07/11-without-books.md
        = "如果不读书, 我们要如何?"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000599397
        = "最近关于前端开发效率的想法"
      .post $ a.link
        :href http://www.douban.com/note/366907626/
        = "出了上图"
      .post $ a.link
        :href http://www.douban.com/note/366602978/
        = "怪谈两则"
      .post $ a.file
        :href posts/14/07/01-vast-communications.md
        = "怎样设计同时几万人同时交流的界面?"
      .month $ = June
      .post $ a.file
        :href posts/14/06/29-about-memkits.md
        = "关于 Memkits 项目的想法"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000590789
        = "杭 JS 不太相关的一些感想"
      .post $ a.link
        :href http://www.douban.com/note/358203300/
        = "云雾缭绕"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000576880
        = "关于从 Backbone 转移到 React 的思考"
      .post $ a.link
        :href http://v2ex.com/t/116201
        = "做了两个私人的 Todo 工具"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000533324
        = "一步之遥和长期演进的互联网的改变"
      .month $ = May
      .post $ a.link
        :href http://www.douban.com/note/354802158/
        = "那些人的视野"
      .post $ a.link
        :href https://medium.com/@jiyinyiyong/choosing-indentation-as-a-life-style-of-programming-bbaeed7a6291
        = "Choosing indentation as a life style of programming"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000519654
        = "网上搜到的几个 React CoffeeScript 绑定"
      .post $ a.file
        :href posts/14/05/25-talk-to-a-lot-people.md
        = "网络中同时和很多人交流的问题"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000518803
        = "最近想通的几个单页面应用开发的重点"
      .post $ a.file
        :href posts/14/05/22-thoughts-on-words.md
        = "对于文字的理解"
      .post $ a.link
        :href http://ruby-china.org/topics/19306?page=1#reply37
        = "回帖: 我是怎样一步一步学会编程的"
      .post $ a.link
        :href http://www.douban.com/note/351349066/
        = "割耳朵的月亮"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000503451
        = "Topics 项目中跨域 Cookie 遇到的问题"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000498169
        = 我的前端单页面自动编译刷新工具和环境
      .post $ a.file
        :href posts/14/05/05-join-groups.md
        = 关于加入社团的一些想法
      .post $ a.link
        :href http://article.tiye.me/10-her-OS-1/
        = "电影 Her 中的界面设计截图"
      .month $ = Apr
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000474676
        = 关于双平衡三进制
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000471129
        = "使用 SPDY 配合 Nginx 或者 Node 加载文件的速度, 测试"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000466729
        = "关于那篇 如何成为一名黑客"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000461706
        = "Note: Continuation 相关的几个链接"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000454101
        = "Note: 一个初步的 Chrome Packaged App 写法"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000453817
        = "Note: 基本的 WebSocket 的 Nginx 配置"
      .month $ = Mar
      .post $ a.link
        :href http://www.douban.com/note/341691401/
        = "That small world, this larger world"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000450066
        = "Note: 把一个 Sublime Text 的语法包转为 Atom 的"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000449969
        = "Note: 通过 GitHub API 拿 GitHub README"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000447065
        = "Note: Gulp 使用 .coffee 配置文件"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000442070
        = "grunt-rev 和 grunt-usemin 替换静态资源 url 的配置"
      .post $ a.link
        :href http://www.douban.com/note/337722312/
        = "所庆幸的, 所忧伤的"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000442024
        = "关于 qrsync 同步 Grunt 生成前端静态资源到 CDN 的时间戳问题"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000437770
        = "电子设备上思考的单元,, 一些旧想法"
      .post $ a.link
        :href http://www.douban.com/note/335621968/
        = "A nice view of the moon"
      .month $ = Feb
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000418680
        = "Note: HTML5 识别语音相关的一些资源"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000416630
        = "Node 实现 REPL 自动补全功能"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000415954
        = "Cirru 项目一些约定"
      .post $ a.link
        :href http://www.douban.com/note/331837295/
        = 虚拟世界
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000413434
        = "草稿, 结合命令行和图形界面的想法"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000411057
        = "Vue.js 的一些资源索引"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000409722
        = "Note: 调整开发环境的, JS, Nginx, VPS, Rsync"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000409318
        = "Note: Web 应用的 View 的生存周期"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000408860
        = "Note: CORS 是不能直接写多个 Origin 的"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000406364
        = "关于 Nginx SPDY 使用的 Note"
      .post $ a.link
        :href http://www.douban.com/note/329875576/
        = 十年之后
      .month $ = Jan
      .post $ a.link
        :href http://www.douban.com/note/328613481/
        = 我的年纪长了一点点
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000397100
        = "Ace Editor 扩展编写初步"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000394053
        = "写 Highlight.js 插件的一些尝试"
      .post $ a.link
        :href http://www.douban.com/note/326834843/
        = 逆飞的时间
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000385365
        = "Cirru 脚本语言的方向感"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000383706
        = "写一个 Pygments 语法扩展"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000382229
        = "MoonScript 站点怎么静态编译的"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000381755
        = "Glyphs 使用技巧听录"
      .post $ a.link
        :href http://www.douban.com/note/325369161/
        = 意料之外
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000377937
        = "2013, 离开学校"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000377494
        = "关于 JIT 基础知识的几个链接"
      .year $ = 2013
      .month $ = Dec
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000371386
        = "在 Chrome Content Script 里使用 RequireJS"
      .post $ a.link
        :href http://www.douban.com/note/321761893/
        = 不辩年月
      .post $ a.link
        :href http://www.douban.com/note/321747236/
        = 这个年代居然还有朋友网和人人网都找不到的妹子?
      .post $ a.link
        :href http://www.douban.com/note/321121437/
        = 沉溺
      .post $ a.link
        :href http://www.douban.com/note/320433657/
        = "You are in a train"
      .post $ a.link
        :href http://www.douban.com/note/318883452/
        = 人与人之间的关联
      .month $ = Nov
      .post $ a.link
        :href http://www.douban.com/note/318190605/
        = 选择的没有
      .post $ a.link
        :href http://www.douban.com/note/317605335/
        = 断了的时间之箭
      .post $ a.link
        :href http://www.douban.com/note/317491348/
        = 你看到那扇门了吗?
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000340036
        = 单页面应用相关一些问题和揣测...
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000338582
        = "重学 C 的笔记"
      .post $ a.link
        :href http://www.douban.com/note/315041181/
        = 第二次去西湖
      .post $ a.link
        :href http://www.douban.com/note/314519112/
        = 迷失在记忆里
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000329102
        = "Air 装 Ubuntu"
      .month $ = Oct
      .post $ a.link
        :href http://www.douban.com/note/313258943/
        = 初恋
      .post $ a.link
        :href http://www.douban.com/note/313037995/
        = 伣
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000322401
        = "写 Cirru 缩进解析过程中文本解析的一些笔记"
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000320602
        = "tc 限制网络速度的命令"
      .post $ a.link
        :href http://www.douban.com/note/310218633/
        = 视线和现实
      .post $ a.link
        :href http://blog.segmentfault.com/jiyinyiyong/1190000000318827
        = "Addy Osmani 讲 MVC 的几个链接"
      .post $ a.link
        :href http://www.douban.com/note/308616527/
        = 生活的长度
      .post $ a.file
        :href posts/13/10/04-cirru-status.md
        = "Cirru 的进展"
      .post $ a.link
        :href http://www.douban.com/note/307823133/
        = 雕虫之技
      .month $ = Sep
      .post $ a.link
        :href http://www.douban.com/note/307092195/
        = 虽谬不忍弃
      .post $ a.link
        :href http://www.douban.com/note/306120664/
        = 沿时间而行
      .post $ a.link
        :href http://www.douban.com/note/304775383/
        = 梦到不该梦的人
      .post $ a.link
        :href http://www.douban.com/note/304497657/
        = 带着某从家乡出来
      .post $ a.file
        :href posts/13/09/18-notes-on-zephyros.md
        = "关于 Zephyros 的笔记"
      .post $ a.link
        :href http://www.douban.com/note/303232817/
        = "My Voice"
      .post $ a.link
        :href https://medium.com/design-startups/8c537994749b
        = "An idea on geography of the Web"
      .post $ a.file
        :href posts/13/09/09-a-taste-of-fish-shell.md
        = "Fish-Shell 的尝试"
      .post $ a.link
        :href http://www.douban.com/note/300940858/
        = 屏幕的世界
      .post $ a.link
        :href http://www.douban.com/note/300308329/
        = 熟悉的世界
      .post $ a.link
        :href https://medium.com/design-startups/71c99a3a3a8b
        = "Way to Combine GUI and CLI"
      .post $ a.file
        :href posts/13/09/01-thoughts-on-programming.md
        = 关于图形编程一些想法
      .post $ a.file
        :href posts/13/09/01-why-misunderstand-monads-more.md
        = "之前理解 Monads 出错的原因"
      .month $ = Aug
      .post $ a.link
        :href http://www.douban.com/note/298337930/
        = 废弃的博客
      .post $ a.link
        :href http://www.douban.com/note/298084662/
        = 高中吗
      .post $ a.file
        :href posts/13/08/26-events-inside-outside.md
        = 输入和输出的事件
      .post $ a.file
        :href posts/13/08/23-try-brackets.md
        = "尝试 Brackets 编辑 HTML"
      .post $ a.link
        :href http://www.douban.com/note/296672849/
        = "走在前面, 走在后面"
      .post $ a.file
        :href posts/13/08/18-chromebook-notes.md
        = "Chromebook 折腾简记"
      .post $ a.file
        :href posts/13/08/18-one-page-template.md
        = "One Page 模版"
      .post $ a.file
        :href posts/13/08/13-status-of-cirru.md
        = "Cirru, 自己学写解释器"
      .post $ a.file
        :href posts/13/08/04-im-not-as-clever.md
        = "我不是很聪明的人, 但我在想"
      .post $ a.file
        :href posts/13/08/01-stylus-browserify-in-deployment.md
        = "基于 Stylus 和 Browserify 前端代码的想法"
      .month $ = Jul
      .post $ a.file
        :href posts/13/07/31-dream-of-coding.md
        = 关于编程世界的梦想
      .post $ a.link
        :href http://www.douban.com/note/289511038/
        = 失去之后的感动
      .post $ a.link
        :href http://www.douban.com/note/288826252/
        = 学编程能编帮助人摆脱孤独吗?
      .post $ a.file
        :href posts/13/07/23-ubuntu-to-macosx.md
        = "Ubuntu 到 Mac OS X 的头几天"
      .post $ a.file
        :href posts/13/07/20-create-plugin.md
        = "Grunt 插件的一些笔记"
      .post $ a.link
        :href http://v2ex.com/t/76461
        = "相对于论坛, 我们是不是更需要 Wiki 和聊天室?"
      .post $ a.file
        :href posts/13/07/07-position-of-me.md
        = 人们在网络中的位置
      .post $ a.file
        :href posts/13/07/01-android-chrome-debug.md
        = "Android 远程调试 Chrome"
      .post $ a.link
        :href http://ruby-china.org/topics/12105
        = 又对工具感到不满了
      .month $ = Jun
      .post $ a.link
        :href http://www.douban.com/group/topic/40849093/
        = 观念的推送
      .post $ a.file
        :href posts/13/06/28-folding-code.md
        = "Sublime 折叠代码的"
      .post $ a.file
        :href posts/13/06/20-ubuntu-reinstallation.md
        = "配置 Ubuntu 的一点笔记"
      .post $ a.file
        :href posts/13/06/18-far-from-reality.md
        = 可以下载的知识
      .month $ = May
      .post $ a.link
        :href http://jiyinyiyong.logdown.com/posts/223-fear-of-restrictions
        = 恐惧的限制
      .post $ a.link
        :href http://jiyinyiyong.logdown.com/posts/177
        = 页面的快速跳转
      .post $ a.link
        :href https://medium.com/written-in-chinese-1/a83dc52c3016
        = "大四将尽的 JiyinYiong"
      .post $ a.file
        :href posts/13/05/14-threejs-second-try.md
        = "再次尝试学习 Three.js 文档"
      .post $ a.file
        :href posts/13/05/19-google-plus-as-page.md
        = "社区和使用 Google+ 的经验"
      .post $ a.file
        :href posts/13/05/12-gnome-extension.md
        = "关于 GNOME3 插件开发的想法"
      .post $ a.link
        :href http://www.douban.com/group/topic/39211659/
        = 心态和想法
      .post $ a.file
        :href posts/13/05/12-my-page-tools.md
        = 我的页面调试工具
      .post $ a.file
        :href posts/13/05/02-what-to-read.md
        = 到哪里找阅读的资源
      .month $ = Apr
      .post $ a.file
        :href posts/13/04/29-配置-IBus-Fcitx-输入法.md
        = 配置-IBus-Fcitx-输入法
      .post $ a.file
        :href posts/13/04/27-缺失的技术和交流方式.md
        = "缺失的技术, 缺失的交流方式"
      .post $ a.link
        :href https://github.com/coffee-js/languages/issues/56
        = "关于文章 " How To Become A Hacker
      .post $ a.file
        :href posts/13/04/21-browserify-入门笔记.md
        = browserify-入门笔记
      .post $ a.file
        :href posts/13/04/21-Bower-Grunt-入门笔记.md
        = Bower-Grunt-入门笔记
      .post $ a.file
        :href posts/13/04/14-键盘和-Sublime-配置.md
        = 键盘和-Sublime-配置
      .post $ a.file
        :href posts/13/04/01-css-flexbox-布局.md
        = css-flexbox-布局
      .post $ a.link
        :href http://jiyinyiyong.lofter.com/post/19ab57_50972a
        = "在用的 gnome-shell 插件"
      .month $ = Mar
      .post $ a.file
        :href posts/13/03/31-Arch-Monaco-字体.md
        = Arch-Monaco-字体
      .post $ a.file
        :href posts/13/03/29-做不到的事.md
        = 做不到的事
      .post $ a.link
        :href https://github.com/jiyinyiyong/rain-boots/issues/2
        = 模块和使用方面的规划
      .post $ a.link
        :href https://github.com/jiyinyiyong/cirru-eval/issues/4
        = 树状的代码
      .post $ a.file
        :href posts/13/03/09-重新启用博客.md
        = 重新启用博客
      .post $ a.file
        :href posts/13/07/31-arch-second-log.md
        = "第二轮装 Arch... 把用到的几个链接放在这里"
      .post $ a.link
        :href https://github.com/jiyinyiyong/blog2/issues/3
        = "Sublime 写语法高亮一点尝试"
      .post $ a.link
        :href https://github.com/jiyinyiyong/blog2/issues/2
        = "关于 Sublime 的一些笔记"
      .post $ a.link
        :href http://www.douban.com/group/topic/37157568/
        = 简单
      .post $ a.link
        :href https://github.com/Bodule/Bodule/issues/6
        = "Component + SourceMaps 的模块化方案前景怎样?"
      .post $ a.link
        :href https://github.com/jiyinyiyong/metro-wm-concept/issues/1
        = "为什么 Metro 风格我认为适合 Linux"
      .month $ = Feb
      .post $ a.link
        :href https://github.com/jiyinyiyong/banyan/issues/1
        = 一个不切实际的前端模块化方案
      .post $ a.link
        :href https://github.com/jiyinyiyong/cirru-eval/issues/3
        = 为什么我讨厌括号
      .post $ a.link
        :href https://github.com/jiyinyiyong/cirru-eval/issues/2
        = 函数不是最基础的语法
      .post $ a.link
        :href https://github.com/jiyinyiyong/cirru-eval/issues/1
        = "Cirru 语法的思考"
      .post $ a.file
        :href posts/13/02/02-impressions-about-problem.md
        = 关于图形编程的模块化的印象
      .post $ a.file
        :href posts/13/02/02-read-von-meumann.md
        = "一份关于 John Von Neumann 的 PDF"
      .month $ = Jan
      .post $ a.file
        :href posts/13/01/16-autocomplete-and-save.md
        = "Vim 自动补全, 以及 `strl+s` 保存"
      .post $ a.file
        :href posts/13/01/14-sicp-chapter-1.md
        = "SICP Notes"
      .post $ a.file
        :href posts/13/01/09-nobody-dance.md
        = "Nobody 舞蹈教程的网络检索"
      .post $ a.file
        :href posts/13/01/09-github-api-blog.md
        = "Github 静态博客用 API 加强"
      .post $ a.file
        :href posts/13/01/08-template-engine.md
        = 从模板引擎所体会到的
      .post $ a.file
        :href posts/13/01/08-what-structure.md
        = 网络会是什么样的结构?
      .post $ a.file
        :href posts/13/01/08-lets-start.md
        = "关于为什么要装 FreeBSD, 以及尝试"
      .post $ a.file
        :href posts/13/01/07-scheme-translation.md
        = "关于 Scheme 的资源"
      .post $ a.file
        :href posts/13/01/06-about-scope.md
        = 关于作用域
      .post $ a.file
        :href posts/13/01/04-input-output.md
        = 输入输出的设备
      .post $ a.file
        :href posts/13/01/02-js-two-dimentions.md
        = "一维的 Lisp, 二维的 JS"
      .year $ = 2012
      .month $ = Dec
      .post $ a.file
        :href posts/12/12/29-httpie-requests.md
        = "结合 httpie 和 express 演示 HTTP 请求"
      .post $ a.file
        :href posts/12/12/28-interface-of-programes.md
        = 软件与人的交互
      .post $ a.file
        :href posts/12/12/28-html5-upload.md
        = 尝试上传文件
      .post $ a.file
        :href posts/12/12/26-direction.md
        = 曾经的梦想
      .post $ a.file
        :href posts/12/12/24-assumption.md
        = 关于世界的假想
      .post $ a.file
        :href posts/12/12/20-brief-lang-history.md
        = "一份简短的, 大概会错的编程语言的历史"
      .post $ a.file
        :href posts/12/12/14-describe-world.md
        = 描述世界
      .post $ a.file
        :href posts/12/12/14-cirru-live.md
        = "重构 Cirru, 增加 watch 函数"
      .post $ a.file
        :href posts/12/12/09-create-a-rock.md
        = "写一个 Lua Rock"
      .post $ a.file
        :href posts/12/12/08-syntax-for-cirru.md
        = "写 Cirru 语法的感想"
      .post $ a.file
        :href posts/12/12/06-drip-and-clojure.md
        = "drip 和 lein 的配置(failed)"
      .post $ a.file
        :href posts/12/12/06-arch-reinstall.md
        = "第二轮装 Arch 用到的链接"
      .post $ a.file
        :href posts/12/12/06-subl-syntax2.md
        = "继续看关于 Sublime Text 语法高亮的文档"
      .post $ a.file
        :href posts/12/12/06-subl-notes.md
        = "关于 Sublime 的一些笔记"
      .post $ a.file
        :href posts/12/12/06-subl-syntax-first-try.md
        = "Sublime 写语法高亮一点尝试"
      .post $ a.file
        :href posts/12/12/06-third-chuangling-code.md
        = 窗棂第三个版本
      .post $ a.file
        :href posts/12/12/02-explore-node-gir.md
        = "Node gir 笔记"
      .month $ = Nov
      .post $ a.file
        :href posts/12/11/25-page-dev.md
        = 关于网页编写的习惯
      .post $ a.file
        :href posts/12/11/25-flexity-in-pkg-and-lang.md
        = 包的灵活性
      .post $ a.file
        :href posts/12/11/24-app-in-page.md
        = 网页的应用
      .month $ = Oct
      .post $ a.file
        :href posts/12/10/15-said-by-九瓜.md
        = "关于 Node 一些负面评价"
      .post $ a.file
        :href posts/12/10/15-hour12.md
        = "第 12 小时"
      .post $ a.file
        :href posts/12/10/02-seajs-coffee-的尝试.md
        = "SeaJS 使用 coffee 的尝试"
      .post $ a.file
        :href posts/12/10/02-语法计划.md
        = 语法计划
      .post $ a.file
        :href posts/12/10/03-幻想中的语言.md
        = 幻想中的语言
      .month $ = Nov
      .post $ a.file
        :href posts/12/09/26-Shell-的初始设置.md
        = "Shell 的初始设置"
      .post $ a.file
        :href posts/12/09/26-学习-seed-的笔记.md
        = "学习 Seed 的笔记"
      .post $ a.file
        :href posts/12/09/24-作用域和面向对象.md
        = 作用域和面向对象
      .post $ a.file
        :href posts/12/09/24-更好玩的平台.md
        = 更好玩的平台
      .post $ a.file
        :href posts/12/09/19-关于学习的观点.md
        = 关于学习的观点
      .post $ a.file
        :href posts/12/09/15-还不会的语法解析.md
        = 还不会的语法解析
      .post $ a.file
        :href posts/12/09/15-ssh-config-配置等等.md
        = "ssh config 配置等等"
      .post $ a.file
        :href posts/12/09/10-安装-Arch.md
        = "安装 Arch"
      .post $ a.file
        :href posts/12/09/04-并行的时间.md
        = 并行的时间
      .post $ a.file
        :href posts/12/09/01-字符串作为要素.md
        = 字符串作为要素
      .month $ = Aug
      .post $ a.file
        :href posts/12/08/31-用来玩耍的桌面.md
        = 用来玩耍的桌面
      .post $ a.file
        :href posts/12/08/29-dataURL-传输文件.md
        = "dataURL 传输文件"
      .post $ a.file
        :href posts/12/08/29-寻找漂亮的语言.md
        = 寻找漂亮的语言
      .post $ a.file
        :href posts/12/08/23-模式匹配和对象的想法.md
        = 模式匹配和对象的想法
      .post $ a.file
        :href posts/12/08/21-doodle-刷新页面.md
        = "doodle 刷新页面"
      .post $ a.file
        :href posts/12/08/11-重写聊天应用的感想.md
        = 重写聊天应用的感想
      .post $ a.file
        :href posts/12/08/06-参考-coffee-设想语法.md
        = "参考 coffee 设想语法"
      .post $ a.file
        :href posts/12/08/05-OAuth-登录-Github-及微博.md
        = "OAuth 登录 Github 及微博"
      .post $ a.file
        :href posts/12/08/04-VPS-Node-应用配置.md
        = "VPS Node 应用配置"
      .month $ = July
      .post $ a.file
        :href posts/12/07/28-IP-地址记录.md
        = IP-地址记录
      .post $ a.file
        :href posts/12/07/25-里坊-网页的嵌套.md
        = 里坊-网页的嵌套
      .post $ a.file
        :href posts/12/07/20-未来的灯市.md
        = 未来的灯市
      .post $ a.file
        :href posts/12/07/15-重装-Ubuntu-记录.md
        = 重装-Ubuntu-记录
      .post $ a.file
        :href posts/12/07/14-Cirru-可能的遐想.md
        = "Cirru 可能的遐想"
      .post $ a.file
        :href posts/12/07/12-用网络来沟通的构思.md
        = 用网络来沟通的构思
      .post $ a.file
        :href posts/12/07/09-Cirru-编辑器的重写.md
        = "Cirru 编辑器的重写"
      .month $ = Jun
      .post $ a.file
        :href posts/12/06/24-开始学-Clojure-的模块机制.md
        = "开始学 Clojure 的模块机制"
      .post $ a.file
        :href posts/12/06/23-暑假前关于编程和学习的想法.md
        = 暑假前关于编程和学习的想法
      .post $ a.file
        :href posts/12/06/15-关于这个博客和柳线.md
        = 关于这个博客和柳线
    script (:defer) $ @insert save-scroll.js
    @insert ga.html