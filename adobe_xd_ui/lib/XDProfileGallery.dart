import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDProfileGallery extends StatelessWidget {
  XDProfileGallery({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 161.0, start: 0.0),
            child:
                // Adobe XD layer: 'beach' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/leaf-one.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 119.0, middle: 0.5),
            Pin(size: 119.0, start: 81.0),
            child:
                // Adobe XD layer: 'talin' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage('assets/images/person-profile.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 6.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 111.0, middle: 0.4886),
            Pin(size: 33.0, middle: 0.3000),
            child: Text(
              'Tony Jork',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                color: const Color(0xff524b4b),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 20.0, end: 21.0),
            Pin(size: 373.0, end: 70.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 157.0, start: 0.0),
                  Pin(size: 105.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'beach-one' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/beach-one.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 40.0, start: 12.0),
                        Pin(size: 26.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'sample-nature-label' (text)
                            Text(
                          'Tree',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.0, end: 4.0),
                        Pin(size: 18.4, start: 5.0),
                        child:
                            // Adobe XD layer: 'heart-outline' (shape)
                            SvgPicture.string(
                          _svg_efs47c,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 157.0, end: 0.0),
                  Pin(size: 105.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'beach-one' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/beach-two.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, start: 12.0),
                        Pin(size: 26.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'Mountain' (text)
                            Text(
                          'Beach',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.0, end: 5.0),
                        Pin(size: 18.4, start: 5.0),
                        child:
                            // Adobe XD layer: 'heart' (shape)
                            SvgPicture.string(
                          _svg_bu8zgh,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 157.0, start: 0.0),
                  Pin(size: 105.0, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'beach-one' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  const AssetImage('assets/images/grass.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 52.0, start: 12.0),
                        Pin(size: 26.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'Mountain' (text)
                            Text(
                          'Grass',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.0, end: 4.0),
                        Pin(size: 18.4, start: 5.0),
                        child:
                            // Adobe XD layer: 'heart-outline' (shape)
                            SvgPicture.string(
                          _svg_efs47c,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 157.0, end: 0.0),
                  Pin(size: 105.0, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'beach-one' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/mountain-one.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 85.0, start: 12.0),
                        Pin(size: 26.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'Mountain' (text)
                            Text(
                          'Mountain',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.0, end: 4.0),
                        Pin(size: 18.4, start: 5.0),
                        child:
                            // Adobe XD layer: 'heart-outline' (shape)
                            SvgPicture.string(
                          _svg_efs47c,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 157.0, start: 0.0),
                  Pin(size: 105.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'beach-one' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/tree-street-one.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 54.0, start: 12.0),
                        Pin(size: 26.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'Mountain' (text)
                            Text(
                          'Street',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.0, end: 4.0),
                        Pin(size: 18.4, start: 5.0),
                        child:
                            // Adobe XD layer: 'heart-outline' (shape)
                            SvgPicture.string(
                          _svg_efs47c,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 157.0, end: 0.0),
                  Pin(size: 105.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'beach-one' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/waterfall-one.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 81.0, start: 12.0),
                        Pin(size: 26.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'Mountain' (text)
                            Text(
                          'Waterfall',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.0, end: 4.0),
                        Pin(size: 18.4, start: 5.0),
                        child:
                            // Adobe XD layer: 'heart-outline' (shape)
                            SvgPicture.string(
                          _svg_efs47c,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_efs47c =
    '<svg viewBox="145.0 273.0 20.0 18.4" ><path transform="translate(143.0, 270.0)" d="M 12.10000038146973 18.54999923706055 L 12 18.64999961853027 L 11.89000034332275 18.54999923706055 C 7.139999866485596 14.23999977111816 4 11.39000034332275 4 8.5 C 4 6.5 5.5 5 7.5 5 C 9.039999961853027 5 10.53999996185303 6 11.06999969482422 7.360000133514404 L 12.93000030517578 7.360000133514404 C 13.46000003814697 6 14.96000003814697 5 16.5 5 C 18.5 5 20 6.5 20 8.5 C 20 11.39000034332275 16.86000061035156 14.23999977111816 12.10000038146973 18.54999923706055 M 16.5 3 C 14.76000022888184 3 13.09000015258789 3.809999942779541 12 5.079999923706055 C 10.90999984741211 3.809999942779541 9.239999771118164 3 7.5 3 C 4.420000076293945 3 2 5.409999847412109 2 8.5 C 2 12.27000045776367 5.400000095367432 15.35999965667725 10.55000019073486 20.03000068664551 L 12 21.35000038146973 L 13.44999980926514 20.03000068664551 C 18.60000038146973 15.35999965667725 22 12.27000045776367 22 8.5 C 22 5.409999847412109 19.57999992370605 3 16.5 3 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bu8zgh =
    '<svg viewBox="144.0 273.0 20.0 18.4" ><path transform="translate(142.0, 270.0)" d="M 12 21.35000038146973 L 10.55000019073486 20.03000068664551 C 5.400000095367432 15.35999965667725 2 12.27000045776367 2 8.5 C 2 5.409999847412109 4.420000076293945 3 7.5 3 C 9.239999771118164 3 10.90999984741211 3.809999942779541 12 5.079999923706055 C 13.09000015258789 3.809999942779541 14.76000022888184 3 16.5 3 C 19.57999992370605 3 22 5.409999847412109 22 8.5 C 22 12.27000045776367 18.60000038146973 15.35999965667725 13.44999980926514 20.03000068664551 L 12 21.35000038146973 Z" fill="#de4040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
