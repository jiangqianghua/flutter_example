import 'package:flutter/material.dart';
// 自定义页面跳转的过度动画
class CustomeRoute extends PageRouteBuilder {
  final Widget widget;

  CustomeRoute(this.widget):super(
    transitionDuration:Duration(seconds: 1),
    pageBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
    ){
      return widget;
    },
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child
    ){
      // 动画效果1 渐隐渐显的动画效果
        // return FadeTransition(
        //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn // 快出慢进
        //   )),
        //   child: child,
        // );
        // 动画效果2 缩放动画效果
        // return ScaleTransition(
        //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn
        //   )) ,
        //   child: child,
        // );

        // 动画效果3 旋转加缩放效果
        // return RotationTransition(  // 旋转
        //   turns: Tween(begin:0.0, end:1.0).animate(CurvedAnimation(
        //                parent: animation1,
        //     curve: Curves.fastOutSlowIn
        //   )),
        //   child: ScaleTransition(  //  缩放
        //     scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        //       parent: animation1,
        //       curve:Curves.fastOutSlowIn
        //     )),
        //     child: child,
        //   ),
        // );

        // 动画效果4 左右滑动动画
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1.0, 0.0),
            end: Offset(0.0, 0.0)
          ).animate(
            CurvedAnimation(
              parent:animation1,
              curve: Curves.fastOutSlowIn
            )
          ),
          child: child,
        );
    }
  );
}