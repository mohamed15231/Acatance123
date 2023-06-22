import 'package:acatance/general/Screens/widgets/AppColors.dart';
import 'package:acatance/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAnimatedBottomBar extends StatefulWidget {
  CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  State<CustomAnimatedBottomBar> createState() =>
      _CustomAnimatedBottomBarState();
}

class _CustomAnimatedBottomBarState extends State<CustomAnimatedBottomBar> {
  double width = 120.0;
  double widthIcon = 0.10003999999999999;
  double scaleVal = -19.0;

  Future scale({
    bool isFirst = true,
  }) async {
    if (isFirst == false) {
      width = 0;
      scaleVal = 1;
      widthIcon = 0.1;
      while (width < 100) {
        await Future.delayed(
          const Duration(milliseconds: 60),
          () {},
        );
        width += 30.0;
        widthIcon += 0.00001;
        scaleVal -= 5;
        setState(() {});

      }
    } else {
       width = 120.0;
       widthIcon = 0.10003999999999999;
       scaleVal = -19.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = widget.backgroundColor ?? Colors.white;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (widget.showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: widget.containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Row(
            mainAxisAlignment: widget.mainAxisAlignment,
            children: widget.items.map((item) {
              var index = widget.items.indexOf(item);
              return GestureDetector(
                onTap: () {
                  widget.onItemSelected(index);
                  scale(isFirst: false);
                },
                child: _ItemWidget(
                  scaleVal: scaleVal,
                  widthIcon: widthIcon,
                  width: width,
                  item: item,
                  iconSize: widget.iconSize,
                  isSelected: index == widget.selectedIndex,
                  backgroundColor: bgColor,
                  itemCornerRadius: widget.itemCornerRadius,
                  animationDuration: widget.animationDuration,
                  curve: widget.curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final double widthIcon;
  final bool isSelected;
  final BottomNavyBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
    required this.width,
    required this.widthIcon,
    required this.scaleVal,
  }) : super(key: key);
  final double width;
  final double scaleVal;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: Container(
        height: double.maxFinite,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                isSelected
                    ? Transform.translate(
                        offset: Offset(10, scaleVal),
                        child: Stack(
                          // alignment: Alignment.center,
                          children: [
                            Container(
                              height: 200,
                              child: Image.asset(
                                Res.vectorNavBar,
                                width: width,
                                height: 300,
                                scale: 0.1,
                              ),
                            ),
                            Container(
                              width: width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      item.stringImage,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      item.title,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : Column(
                        children: [
                          Image.asset(
                            item.stringImage,
                          height: item.iconHeight,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            item.title,
                            style: TextStyle(color: AppColors.labelTextField),
                          )
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavyBarItem {
  BottomNavyBarItem({
    required this.iconHeight,
    required this.stringImage,
    required this.title,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  });

  final String stringImage;
  final String title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
  final double iconHeight;
}
