import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest01/Features/base_will_pop.dart';
import 'package:fluttertest01/animation/base_animaiton.dart';
import 'package:fluttertest01/animation/base_animation_diy.dart';
import 'package:fluttertest01/animation/base_animation_switch.dart';
import 'package:fluttertest01/animation/base_hreo.dart';
import 'package:fluttertest01/animation/base_pageRoute.dart';
import 'package:fluttertest01/animation/base_tagger_animation.dart';
import 'package:fluttertest01/baseWidget/baseButtons.dart';
import 'package:fluttertest01/baseWidget/baseIndicator.dart';
import 'package:fluttertest01/baseWidget/baseState.dart';
import 'package:fluttertest01/baseWidget/baseSwitch.dart';
import 'package:fluttertest01/baseWidget/baseText.dart';
import 'package:fluttertest01/baseWidget/baseTextField.dart';
import 'package:fluttertest01/baseWidget/dialog.dart';
import 'package:fluttertest01/baseWidget/imgAndIcon.dart';
import 'package:fluttertest01/comment/config.dart';
import 'package:fluttertest01/container/base_bars.dart';
import 'package:fluttertest01/container/base_container.dart';
import 'package:fluttertest01/container/base_decorateBox.dart';
import 'package:fluttertest01/container/base_clip.dart';
import 'package:fluttertest01/container/base_constraints.dart';
import 'package:fluttertest01/container/base_padding.dart';
import 'package:fluttertest01/container/base_transform.dart';
import 'package:fluttertest01/features/base_color_and_theme.dart';
import 'package:fluttertest01/features/base_eventbus.dart';
import 'package:fluttertest01/features/base_future_stream.dart';
import 'package:fluttertest01/features/base_gesturedetetor.dart';
import 'package:fluttertest01/features/base_notification.dart';
import 'package:fluttertest01/features/base_touch_handle.dart';
import 'package:fluttertest01/features/share_data.dart';
import 'package:fluttertest01/file_and_http/fileAction.dart';
import 'package:fluttertest01/file_and_http/http_client.dart';
import 'package:fluttertest01/file_and_http/http_dio.dart';
import 'package:fluttertest01/file_and_http/http_socket.dart';
import 'package:fluttertest01/file_and_http/json_to_model.dart';
import 'package:fluttertest01/layout/baseFlex.dart';
import 'package:fluttertest01/layout/base_align.dart';
import 'package:fluttertest01/layout/base_flow_and_wrap.dart';
import 'package:fluttertest01/layout/base_row_and_column.dart';
import 'package:fluttertest01/layout/base_stack.dart';
import 'package:fluttertest01/scrollview/scrollview.dart';
import 'package:fluttertest01/scrollview/baseCustomScrollview.dart';
import 'package:fluttertest01/scrollview/baseGridView.dart';
import 'package:fluttertest01/scrollview/baseListView.dart';
import 'package:fluttertest01/scrollview/baseListenScrollViewOffset.dart';
import 'package:fluttertest01/scrollview/baseSingleChildScrollView.dart';
import 'package:fluttertest01/tips/asyn_and_isolate.dart';
import 'package:fluttertest01/tips/async_and_async*.dart';
import 'package:fluttertest01/tips/base_bloc.dart';
import 'package:fluttertest01/tips/base_provider.dart';
import 'package:fluttertest01/tips/base_record.dart';
import 'package:fluttertest01/tips/fish_redux_page.dart';
import 'package:fluttertest01/tips/keepStateAlive.dart';
import 'package:fluttertest01/tips/page_view.dart';
import 'package:fluttertest01/tips/page_view_tabbar.dart';
import 'package:fluttertest01/tips/redux_page.dart';
import 'package:fluttertest01/tips/scoped_page.dart';
import 'package:fluttertest01/tips/wechat_view.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          dividerTheme: DividerThemeData(
              color: Colors.black12,
              thickness: 0.5,
              endIndent: 25,
              indent: 35,
              space: 1)
//          fontFamily: 'Merriweather'
          ),
      home: MyHome(
        title: 'Flutter Demo Home Page',
      ),
      routes: {
        '/text': (ctx) => BaseWidgetTextPage(),
        '/btn': (ctx) => BaseButtons(),
        '/img': (ctx) => BaseImgAndIcon(),
        '/flex': (ctx) => BaseFlex(),
        '/sheet': (ctx) => BaseDialog(),
        '/sw': (ctx) => BaseSwitch(),
        '/field': (ctx) => BaseField(),
        '/in': (ctx) => BaseIndicator(),
        '/st': (ctx) => TapBox(),
        '/wheel': (ctx) => BaseScrollViewWheel(),
        '/align': (ctx) => BaseAlign(),
        '/stack': (ctx) => BaseStack(),
        '/row': (ctx) => BaseRowAndColumn(),
        '/pad': (ctx) => BasePadding(),
        '/flow': (ctx) => BaseFlowAndWrap(),
        '/box': (c) => BaseConstraints(),
        '/clip': (c) => BaseClip(),
        '/dbox': (c) => BaseDecoratedBox(),
        '/transform': (_) => BaseTransform(),
        '/contain': (_) => BaseContainer(),
        '/bars': (_) => BaseBars(),
        '/scrollview': (_) => BaseSingleChildScrollView(),
        '/list': (_) => BaseListView(),
        '/grid': (_) => BaseGridView(),
        '/cscrollview': (_) => BaseCustomScrollView(),
        '/listenoffset': (_) => BaseListenScrollView(),
        '/willpop': (_) => BaseWillPop(),
        '/sharedata': (_) => BaseShareData(),
        '/colortheme': (_) => BaseColorAndTheme(),
        '/futurestream': (_) => BaseFutureStream(),
        '/touchhandle': (_) => BaseTouchHandle(),
        '/gesture': (_) => BaseGesuredetetor(),
        '/ebus': (_) => BaseEventBus(),
        '/notifi': (_) => BaseNotificationPage(),
        '/animation': (_) => BaseAnimation(),
        '/route': (_) => BasePageRoute(),
        '/hero': (_) => BaseHreo(),
        '/jz': (_) => BaseTaggerAnimation(),
        '/animationswitch': (_) => BaseAnimationSwitcher(),
        '/diyanimation': (_) => BaseDIYPage(),
        '/BaseKeepStateAlive': (_) => BaseKeepStateAlive(),
        '/BaseFileRoute': (_) => BaseFileRoute(),
        '/BaseHttpClientRoute': (_) => BaseHttpClientRoute(),
        '/BaseHttpDioRoute': (_) => BaseHttpDioRoute(),
        '/BaseSocketRoute': (_) => BaseSocketRoute(),
        '/BaseJsonToModelRoute': (_) => BaseJsonToModelRoute(),
        '/BaseAsynAndISOlateRoute': (_) => BaseAsynAndISOlateRoute(),
        '/BaseProviderRoute': (_) => BaseProviderRoute(),
        '/BaseRecordRoute': (_) => BaseRecordRoute(),
        '/BaseAsync': (_) => BaseAsync(),
        '/BasePageViewRoute': (_) => BasePageViewRoute(),
        '/FYTabbarWidget': (_) => FYTabbarWidget(),
        '/WeChatSoundWidget': (_) => WeChatSoundWidget(),
        '/BaseBLoCRoute': (_) => BaseBLocRoute2(),
        BaseScopedPateRoute.routeName: (_) => BaseScopedPateRoute(),
        BaseReduxPateRoute.routeName: (_) => BaseReduxPateRoute(),
        BaseFishReduxPage.routeName: (_) => BaseFishReduxPage(),
      },
    );
  }
}

class MyHome extends StatefulWidget {
  final String title;
  MyHome({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: SafeArea(
        child: _body(),
      ),
    );
  }

  Widget _body() {
    Widget w = CupertinoScrollbar(
      child: CustomScrollView(
        slivers: <Widget>[
          _title('基础组件', subTile: '文本、样式、按钮、图片、Icon、单选和复选框、输入框、进度指示器', list: [
            _child(
              '文本 text 、style',
              '/text',
            ),
            _child('按钮', '/btn'),
            _child('图片和Icon', '/img'),
            _child('单选和复选', '/sw'),
            _child('输入框表单', '/field'),
            _child('进度指示器', '/in'),
            _child('弹窗', '/sheet'),
            _child('状态管理', '/st')
          ]),
          _title('布局',
              subTile:
                  '线性：Row、Column、弹性：Flex、流水布局：Wrap、Flow、层叠：Stack、Positioned',
              list: [
                _child('绝对位置stack、Positioned', '/stack'),
                _child('相对位置', '/align'),
                _child('弹性布局 Row Column', '/row'),
                _child('弹性布局 Flex', '/flex'),
                _child('流式布局 wrap flow', '/flow'),
              ]),
          _title('容器',
              subTile: 'padding、margin、尺寸、装饰、变换、脚手架、tabBar。底部导航、APPBar',
              list: [
                _child('padding', '/pad'),
                _child('container 容器', '/contain'),
                _child('尺寸限制容器', '/box'),
                _child('装饰类容器', '/dbox'),
                _child('变换transform', '/transform'),
                _child('裁剪容器', '/clip'),
                _child('导航 脚手架 Tabbar', '/bars'),
              ]),
          _title('滑动组件',
              subTile: 'SingleScrollView、List、GridView、CustomScrollView',
              list: [
                _child('SingleScrollView', '/scrollview'),
                _child('listView', '/list'),
                _child('gridView', '/grid'),
                _child('customScrollview', '/cscrollview'),
                _child('监听滚动', '/listenoffset'),
                _child('车轮list', '/wheel'),
              ]),
          _title('功能能组件', subTile: '导航返回拦截、数据共享、跨组件状态共享、颜色和主题、异步更新UI', list: [
            _child('导航返回键拦截', '/willpop'),
            _child('共享数据', '/sharedata'),
            _child('颜色和主题', '/colortheme'),
            _child('异步更新', '/futurestream'),
          ]),
          _title('时间处理和通知', subTile: '原始指针和时间、手势、全局总线、通知', list: [
            _child('原始指针处理', '/touchhandle'),
            _child('手势识别', '/gesture'),
            _child('全局事件总线', '/ebus'),
            _child('通知', '/notifi'),
          ]),
          _title('动画',
              subTile: '路由动画、Hero动画、交织动画、过度组件(AnimatedSwitcher)',
              list: [
                _child('动画结构', '/animation'),
                _child('过度动画', '/route'),
                _child('hero动画', '/hero'),
                _child('交织动画', '/jz'),
                _child('切换动画', '/animationswitch'),
                _child('过渡性动画', '/diyanimation'),
              ]),
          _title(
            '自定义组件',
          ),
          _title('文件操作与网络请求',
              subTile: 'Http HttpClient Dio Http分块下载、WebSocket、Json转Model',
              list: [
                _child('文件读写', '/BaseFileRoute'),
                _child('HTTP client', '/BaseHttpClientRoute'),
                _child('dio请求', '/BaseHttpDioRoute'),
                _child('使用Socket', '/BaseSocketRoute'),
                _child('json 转model', '/BaseJsonToModelRoute'),
              ]),
          _title('其他每周小部件与Tips', subTile: '状态保持、', list: [
            _child('保持页面数据不丢失', '/BaseKeepStateAlive'),
            _child('异步与多线程', '/BaseAsynAndISOlateRoute'),
            _child('异步与同步数据流', '/BaseAsync'),
            _child('录音与播放', '/BaseRecordRoute'),
            _child('pageview 联动', '/BasePageViewRoute'),
            _child('仿头条项目', '/FYTabbarWidget'),
            _child('微信语音动画', '/WeChatSoundWidget'),
            _child('状态管理(1)ScopedModel', BaseScopedPateRoute.routeName),
            _child('状态管理(2)redux', BaseReduxPateRoute.routeName),
            _child('状态管理(3)BLoC', '/BaseBLoCRoute'),
            _child('状态管理(4)provider', '/BaseProviderRoute'),
            _child('阿里fish(5) redux', BaseFishReduxPage.routeName),
          ]),
        ],
      ),
    );
    return w;
  }

  Widget _title(String text, {List<Widget> list, String subTile = ''}) {
    list ??= [];
    if (list.length == 0) {
      list.add(Container(
        height: 0.1,
        color: Colors.black38,
      ));
    }
    return SliverToBoxAdapter(
      child: Card(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: ExpansionTile(
          subtitle: Container(
            margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
            child: Text(
              subTile,
              style: ThemeYo.subTileTextStyle,
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
            child: Text(
              text,
              style: ThemeYo.textStyle,
            ),
          ),
          children: list,
        ),
      ),
    );
  }

  Widget _child(String title, String route, {bool isFirst = false}) {
    List<Widget> list = new List();

    list.add(const Divider());

    list.add(Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    title,
                    style: ThemeYo.itemTextStyle,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black12,
                    size: 14,
                  )
                ],
              ),
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {
              Navigator.pushNamed(this.context, route);
            },
          ),
        ),
      ],
    ));
    return Container(
      child: Column(
        children: list,
      ),
//      height: 25,
    );
  }
}
