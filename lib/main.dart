import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       home: new Scaffold(

          backgroundColor: Colors.white,
          appBar: new AppBar(
          title: new Text('大标题'),
         ),
         body: new Center(
           child: new Column(
             children: <Widget>[
               new Text(
                '第一个text',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 35,
                  height: 1.2,
                  fontFamily: 'annafiwiiq',
                  background: new Paint()..color =Colors.orange,
                  decoration: TextDecoration.underline,
                  //height：该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于fontSize*height。
                ),
                ),
                 //在上面的例子中，Text的所有文本内容只能按同一种样式，如果我们需要对一个Text内容的不同部分按照不同的样式显示，这时就可以使用TextSpan，它代表文本的一个“片段”。我们看看TextSpan的定义:
                 
                

                 new Text.rich(TextSpan(
                  children: [
                   TextSpan(
                     text: 'home',
                     style: TextStyle(
                       fontSize: 35,
                       height: 1.1,
                     )
                   ),
                   TextSpan(
                     text: 'https://flutterchina.club',
                     style: TextStyle(
                       color: Colors.blue,
                     ),
      
                   )
                  ],
              
                 )),
                     new DefaultTextStyle(
                      style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      ),
                      textAlign: TextAlign.start,
                      child: new Column(
                        children: <Widget>[
                           Text("hello world"),
                           Text("I am Jack"),
                           Text(
                             "I am Jack",
                             
                             style: TextStyle(
                             inherit: false, //2.不继承默认样式
                             color: Colors.grey
                            ),
                           ),
                           new RaisedButton(
                             child: Text('带阴影的button'),
                             onPressed: ()=>{},
                           ),
                          
                          new FlatButton(
                            child: Text('不带阴影的button'),
                            onPressed: ()=>{},
                            ),
                          new OutlineButton(
                            child: Text('带边框的button'),
                            onPressed: ()=>{},
                            ),
                          new FlatButton(
                            highlightColor: Colors.blue,
                            color: Colors.red,
                            splashColor: Colors.grey,
                             child: Text('自定义按钮'),
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                             onPressed: ()=>{},
                            ),
                            new Image(
                              image: AssetImage('images/1544680838193.jpg'),
                              width: 100,
                              height: 200,
                            )
                   
                        ],
                      ),
                  ),
             ],
           ),
         ),
       ),
    );
  }
  
}

// void main() {
//   //runApp接受的widget将成为widget树的根(ps：相当于顶层容器)
//   runApp(
//     //此处的Center和Text是两个widget,显示效果就是一个Hello, Flutter!在屏幕中央

//     new MaterialApp(
//       theme: ThemeData(
//         backgroundColor: Colors.red
//       ),
//       home: new Center(

//       ),
//     )
    // new Center(
        
    //     child: new Text('Hello, Flutter!'*4,
    //     textAlign: TextAlign.center,
    //      maxLines: 1,
    //      overflow: TextOverflow.ellipsis,
    //      textScaleFactor: 1.5,
         
    //      style: TextStyle(
    //      color: Colors.red,
    //      background: new Paint()..color = Colors.orange,
    //      height: 100,
        
    //     ),
    //     textDirection: TextDirection.ltr,
        
    //     ),


      // child: new Text(
      //   'Hello, Flutter!',
      //   //针对容器来说的 是在style外面写，对text来说，字体颜色什么的都是 写在Style里面
      //   textAlign: TextAlign.center,
      //   maxLines: 1,
      //   overflow: TextOverflow.ellipsis,
      //   textScaleFactor: 1.5,

      //   style: TextStyle(
      //   color: Colors.red,
      //   ),
      //   textDirection: TextDirection.ltr,
      // ),
  

    // ),
//   );
// }









