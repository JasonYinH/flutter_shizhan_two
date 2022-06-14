import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///电子书
///https://book.flutterchina.club/chapter1/install_flutter.html#_1-3-2-ide%E9%85%8D%E7%BD%AE%E4%B8%8E%E4%BD%BF%E7%94%A8
///文档注释用///  https://dart-lang.github.io/linter/lints/slash_for_doc_comments.html
///Dart语言   https://dart.cn/guides/language/language-tour#important-concepts
var name = 'Bob';
var number = 42;
int? lineCount;
//如果您确定变量在使用之前已设置，但 Dart 不同意，您可以通过将变量标记为延迟来修复错误：
late String description;
const names = 'final Bob';
const String nickname = 'Bobby';
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
var foo = const [];
// final bar1=const[];
const bar1 = []; //等价于`const []`
const Object i = 3; //其中i是一个带int值的const对象…
const list = [i as int]; //强制类型转换 使用定型
const map = {if (i is int) i: 'int'}; //类型检查
const set = {if (list is List<Int>) ...list}; // ...and a spread.
var s3 =
    'It\'s easy to escape the string delimiter.'; //'使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
var s1 = '可以拼接' '字符串';
var s2 = '可以拼接' + '字符串'; //使用加号拼接
var s4 = '''你可以像这样创建多行字符串'''; //使用三个单引号或三个双引号拼接
var constantList = const [1, 2, 3]; //在 List 字面量前添加 const 关键字会创建一个编译时常量：
//扩展操作符（...）和 空感知扩展操作符（...?），它们提供了一种将多个元素插入集合的简洁方法。
var list1 = [2, 3, 4];
var list2 = [1, ...list1];
//下面是使用 Set 字面量来创建一个 Set 集合的方法：
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//可以使用在 {} 前加上类型参数的方式创建一个空的 Set，或者将 {} 赋值给一个 Set 类型的变量：
var namesSet = <String>{};
// 语法 => 表达式 是 { return 表达式; } 的简写， => 有时也称之为 箭头 函数。
isNoble(atomicNumber) => constantList[atomicNumber] != null;
// 定义函数时，使用 {参数1, 参数2, …} 来指定命名参数
void enableFlags({bool? bold = false, bool? hidden}) {}

void printElement(int element) {
  print(element);
}

var listE = [1, 2, 3];
var loudify = (msg) => '!!! ${msg.toUpperCase()}!!!';
//词法闭包
Function makeAdder(int addBy){
  return(int i)=> addBy+i;
}
foo1(){}
int a=0;
int b=++a;
//定义一个函数
void printInteger(int aNumber) {
  if (kDebugMode) {
    print('${a}__''$b');
    if(a is int){
      print('对');
    }else{
      print('错');
    }
    assert(foo1()==null);
    var add2=makeAdder(2);
    assert(add2(3)==5);
    print(loudify('hello'));
    //将printElement作为参数传递
    listE.forEach(printElement);
    enableFlags(bold: true, hidden: false);
    namesSet.add('value');
    namesSet.addAll(halogens);
    print(namesSet);
    print(list2);
    print(s4);
    assert(s1 == '可以拼接字符串');
    //double ->String
    var piAsString = 3.14159.toStringAsFixed(2);
    assert(piAsString == '3.14');
    foo = [1, 2, 3];
    print(i);
    print(list);
    print(map);
    print(set);
    print(foo);
    print(atm);
    print('The number is $aNumber');
    assert(lineCount ==
        null); //注：生产环境中不会执行。在开发中，可以在条件表达式为false时使用assert语句来打断代码执行下去
    assert(number < 100); //确保该值小于100
    print(name);
    description = 'Feijoada!';
    print(description);
  }
}

void main() {
  // runApp(const MyApp());

  printInteger(number);
}

//同上 单行函数简写
// void main() =>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   return  MaterialApp(
//       title: 'StatelessWidget',
//       theme: ThemeData(
//           primarySwatch: Colors.blue
//       ),
//       home:  ContextRoute(),
//   );
// }
  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return  MaterialApp(
  //       title: 'StatelessWidget',
  //       theme: ThemeData(
  //           primarySwatch: Colors.blue
  //       ),
  //       home: const Echo(text: "Hello"),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //应用名称
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, witho ut quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // 蓝色主题颜色
        primarySwatch: Colors.blue,
      ),
      // 应用首页路由
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  记录点击按钮的总次数
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, //接收一个回调函数，代表被点击后的处理器
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

///演示State的生命周期

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key, this.initValue = 0});

  final int initValue;

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    //初始化状态
    _counter = widget.initValue;
    print("");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Echo extends StatelessWidget {
  const Echo(
      {Key? key, required this.text, this.backgroundColor = Colors.grey //默认为灰色
      })
      : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: backgroundColor,
      child: Text(text),
    ));
  }
}

// class ContextRoute extends StatelessWidget {
//   const ContextRoute({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Context测试"),
//       ),
//       body: Builder(builder: (context) {
//         Scaffold scaffold = context.findAncestorWidgetOfExactType<Scaffold>()!!;
//         return (scaffold.appBar as AppBar).title!!;
//       }),
//     );
//   }
// }
