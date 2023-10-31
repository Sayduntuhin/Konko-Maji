library custom_line_indicator_bottom_navbar;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


enum IndicatorType { Top, Bottom }

class CustomLineIndicatorBottomNavbar extends StatelessWidget {
  final Color? backgroundColor;
  final List<CustomBottomBarItems> customBottomBarItems;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final double unselectedFontSize;
  final Color? splashColor;
  final int currentIndex;
  final bool enableLineIndicator;
  final double lineIndicatorWidth;
  final IndicatorType indicatorType;
  final Function(int) onTap;
  final double selectedFontSize;
  final double selectedIconSize;
  final double unselectedIconSize;
  final LinearGradient? gradient;

  CustomLineIndicatorBottomNavbar({
    this.backgroundColor,
    this.selectedColor,
    required this.customBottomBarItems,
    this.unSelectedColor,
    this.unselectedFontSize = 11,
    this.selectedFontSize = 12,
    this.selectedIconSize = 20,
    this.unselectedIconSize = 15,
    this.splashColor,
    this.currentIndex = 0,
    required this.onTap,
    this.enableLineIndicator = true,
    this.lineIndicatorWidth = 3,
    this.indicatorType = IndicatorType.Top,
    this.gradient,
  });
  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarThemeData bottomTheme =
    BottomNavigationBarTheme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? bottomTheme.backgroundColor,
        gradient: gradient,
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < customBottomBarItems.length; i++) ...[
              Expanded(
                child: CustomLineIndicatorBottomNavbarItems(
                  selectedColor: selectedColor,
                  unSelectedColor: unSelectedColor,
                  //icon: customBottomBarItems[i].icon,
                  image: customBottomBarItems[i].image,
                  unSelectedFontSize: unselectedFontSize,
                  selectedFontSize: selectedFontSize,
                  unselectedIconSize: unselectedIconSize,
                  selectedIconSize: selectedIconSize,
                  splashColor: splashColor,
                  currentIndex: currentIndex,
                  enableLineIndicator: enableLineIndicator,
                  lineIndicatorWidth: lineIndicatorWidth,
                  indicatorType: indicatorType,
                  index: i,
                  onTap: onTap,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

class CustomBottomBarItems {
  final String? image;
  //final IconData icon;



  CustomBottomBarItems({
   // required this.icon,
    required this.image

  });
}

class CustomLineIndicatorBottomNavbarItems extends StatelessWidget {
  final IconData? icon;
  final String? image;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final double unSelectedFontSize;
  final double selectedIconSize;
  final double unselectedIconSize;

  final double selectedFontSize;
  final Color? splashColor;
  final int? currentIndex;
  final int index;
  final Function(int) onTap;
  final bool enableLineIndicator;
  final double lineIndicatorWidth;
  final IndicatorType indicatorType;

  CustomLineIndicatorBottomNavbarItems({
    this.icon,
    this.image,
    this.selectedColor,
    this.unSelectedColor,
    this.unSelectedFontSize = 11,
    this.selectedFontSize = 12,
    this.selectedIconSize = 20,
    this.unselectedIconSize = 15,
    this.splashColor,
    this.currentIndex,
    required this.onTap,
    required this.index,
    this.enableLineIndicator = true,
    this.lineIndicatorWidth = 1,
    this.indicatorType = IndicatorType.Top,
  });

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarThemeData bottomTheme =
    BottomNavigationBarTheme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 22,right: 22),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: splashColor ?? Theme.of(context).splashColor,
            onTap: () {
              onTap(index);
            },
            child: Container(

              decoration: BoxDecoration(

                border: enableLineIndicator
                    ? Border(
                  bottom: indicatorType == IndicatorType.Bottom
                      ? BorderSide(
                    color: currentIndex == index
                        ? selectedColor ??
                        bottomTheme.selectedItemColor!
                        : Colors.transparent,
                    width: lineIndicatorWidth,
                  )
                      : BorderSide(color: Colors.transparent),
                  top: indicatorType == IndicatorType.Top
                      ? BorderSide(
                    color: currentIndex == index
                        ? selectedColor ??
                        bottomTheme.selectedItemColor!
                        : Colors.transparent,
                    width: lineIndicatorWidth,
                  )
                      : BorderSide(color: Colors.transparent),
                )
                    : null,
              ),
              //padding: EdgeInsets.only(top: 12,bottom: 12),
              // width: 70,
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 12,),
                  Container(
                    width: 24,
                      height: 24,
                      child: SvgPicture.asset(image!,color: currentIndex == index
                      ? selectedColor ?? bottomTheme.unselectedItemColor
                          : unSelectedColor ,),


                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}