import 'package:flutter/material.dart';

class DraggleWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;
  const DraggleWidget({Key key, this.offset, this.widgetColor}):super(key:key);
  @override
  _DraggleWidgettState createState() => _DraggleWidgettState();
}

class _DraggleWidgettState extends State<DraggleWidget> {

  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offset = widget.offset;
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.widgetColor,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor,
        ),
        feedback: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}

