import 'package:flutter/material.dart';
import 'dart:ui';

//  毛玻璃效果
class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox( // 约束盒子组件，添加额外的约束条件child上
          constraints: const BoxConstraints.expand(),
          child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583087641895&di=aabed904fb00974bd7d724c48731c62f&imgtype=0&src=http%3A%2F%2Fbbs-fd.zol-img.com.cn%2Ft_s800x5000%2Fg5%2FM00%2F01%2F00%2FChMkJ1Zq9tqIFk5wAAngiG6ME6YAAGDNQCR7b0ACeCg438.jpg"),
        ),
        Center(
          child: ClipRect( // 可以裁剪的矩形
            child: BackdropFilter( //  背景过滤
              filter: ImageFilter.blur(sigmaX:5.0, sigmaY:5.0),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  width: 500.0,
                  height: 700.0,
                  decoration: BoxDecoration(color:Colors.grey.shade200), // 盒子修饰器
                  child: Center(
                    child: Text(
                      'jiang',
                      style: Theme.of(context).textTheme.display3
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        ],
      ),
    );
  }
}