import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toggle Slider Example',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(child: ToggleSlider()),
      ),
    );
  }
}

class ToggleSlider extends StatefulWidget {
  const ToggleSlider({Key? key}) : super(key: key);

  @override
  _ToggleSliderState createState() => _ToggleSliderState();
}

class _ToggleSliderState extends State<ToggleSlider>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  // Это значение можно использовать для позиционирования ползунка
  // Оно должно быть синхронизировано с _controller.value
  double knobPosition = 0.0;

  // Параметры для расчёта движения (настройте под вашу анимацию)
  final double minX = 0;
  final double maxX = 200;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    // Начальное состояние: выключено (0.0)
    _controller.value = 0.0;
    knobPosition = minX;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Обновляем позицию ползунка и значение контроллера
  void _updatePosition(DragUpdateDetails details) {
    setState(() {
      knobPosition = (knobPosition + details.delta.dx)
          .clamp(minX, maxX)
          .toDouble();
      // Привязываем положение к значению контроллера
      _controller.value = (knobPosition - minX) / (maxX - minX);
    });
  }

  // По окончании перетаскивания завершить анимацию до ближайшего состояния
  void _onPanEnd(DragEndDetails details) {
    setState(() {
      if (_controller.value > 0.5) {
        // если ближе к концу, то ползунок в положение "on"
        _controller.forward();
        knobPosition = maxX;
      } else {
        _controller.reverse();
        knobPosition = minX;
      }
    });
  }

  // Обработчик простого нажатия на ползунок
  void _onTap() {
    setState(() {
      if (_controller.value == 0.0) {
        _controller.forward();
        knobPosition = maxX;
      } else {
        _controller.reverse();
        knobPosition = minX;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Lottie-анимация находится на заднем плане.
        Lottie.asset(
          'assets/switch.json',
          controller: _controller,
          onLoaded: (composition) {
            _controller.duration = composition.duration;
          },
        ),
        // Наложенный виджет-ползунок.
        // Positioned можно использовать для позиционирования ползунка по горизонтали.
        Positioned(
          left: knobPosition, // смещаем по оси X
          child: GestureDetector(
            onPanUpdate: _updatePosition,
            onPanEnd: _onPanEnd,
            onTap: _onTap,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
