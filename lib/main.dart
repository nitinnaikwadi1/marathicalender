import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:marathicalender/properties/app_constants.dart' as properties;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: CalenderHome(), debugShowCheckedModeBanner: false);
  }
}

class CalenderHome extends StatefulWidget {
  const CalenderHome({super.key});

  @override
  State<CalenderHome> createState() => _CalenderHomePageState();
}

class _CalenderHomePageState extends State<CalenderHome> {
  final CarouselSliderController _pagesController = CarouselSliderController();
  final _transformationController = TransformationController();
  late TapDownDetails _doubleTapDetails;

  @override
  void initState() {
    super.initState();
    properties.constructMonthAndDate();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFE4365),
        foregroundColor: Colors.white,
        title: Text(properties.currentDate),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.today_outlined),
            tooltip: 'चालू महिना',
            onPressed: () {
              _pagesController.animateToPage(properties.currentMonthIndex);
            },
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        elevation: 50,
        toolbarHeight: 50,
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          initialPage: properties.currentMonthIndex,
        ),
        carouselController: _pagesController,
        items: properties.monthsImgList
            .map(
              (item) => GestureDetector(
                onDoubleTapDown: (d) => _doubleTapDetails = d,
                onDoubleTap: _handleDoubleTap,
                child: InteractiveViewer(
                  transformationController: _transformationController,
                  boundaryMargin: const EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(item),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      // For a 3x zoom
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx * 2, -position.dy * 2)
        ..scale(3.0);
      // Fox a 2x zoom
      // ..translate(-position.dx, -position.dy)
      // ..scale(2.0);
    }
  }
}
