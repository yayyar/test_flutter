import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Button.dart';
import './Collection.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home({
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
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'HomeBackground' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/room.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 79.0, end: 79.0),
            Pin(size: 47.0, end: 69.0),
            child:
                // Adobe XD layer: 'Button' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.2,
                  pageBuilder: () => Collection(),
                ),
              ],
              child: Button(),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.5, end: 31.8),
            Pin(size: 26.0, start: 36.0),
            child:
                // Adobe XD layer: 'NavItem' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 27.5, start: 0.0),
                  Pin(size: 8.9, middle: 0.5253),
                  child:
                      // Adobe XD layer: 'Menu' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 0.0),
                        child: SvgPicture.string(
                          _svg_8693g9,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child: SvgPicture.string(
                          _svg_kewmc1,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 46.5),
                  Pin(start: 1.0, end: 1.0),
                  child:
                      // Adobe XD layer: 'Logo' (group)
                      Stack(
                    children: [
// background:
                      Positioned.fill(
                        child:
                            // Adobe XD layer: 'Container' (shape)
                            Container(
                          decoration: BoxDecoration(),
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(1.0, 4.0, 1.0, 4.0),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 1.0, end: -1.0),
                                Pin(start: 4.0, end: -4.0),
                                child:
                                    // Adobe XD layer: 'Logo' (shape)
                                    SvgPicture.string(
                                  _svg_j1bjgn,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 98.0, middle: 0.333),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'ALTURA',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      color: const Color(0xffffffff),
                      letterSpacing: 2.75,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.5, middle: 0.7406),
                  Pin(start: 5.0, end: 4.5),
                  child:
                      // Adobe XD layer: 'Icon ionic-ios-sear…' (shape)
                      SvgPicture.string(
                    _svg_fuj09l,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.2, end: 38.9),
                  Pin(start: 4.5, end: 4.3),
                  child:
                      // Adobe XD layer: 'Icon ionic-md-person' (shape)
                      SvgPicture.string(
                    _svg_cnq3f8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 13.7, end: 2.2),
                  Pin(size: 15.3, middle: 0.4651),
                  child:
                      // Adobe XD layer: 'Icon feather-shoppi…' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_ift207,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 3.1),
                        child: SvgPicture.string(
                          _svg_mdxbc7,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 6.1, middle: 0.5),
                        Pin(size: 3.1, middle: 0.5),
                        child: SvgPicture.string(
                          _svg_fi6h1f,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 7.0, end: 0.0),
                  Pin(size: 7.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffef3737),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 290.0, start: 30.0),
            Pin(size: 133.0, start: 99.0),
            child:
                // Adobe XD layer: 'Board' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 237.0, start: 0.0),
                  Pin(size: 67.0, start: 0.0),
                  child: Text(
                    'ALTURE',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 56,
                      color: const Color(0xffffffff),
                      letterSpacing: 7,
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 57.0, end: 0.0),
                  child: Text(
                    'Mid-century modern with a cozy twist,\nallowing you to create a space \nwith both form and function in mind.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
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

const String _svg_8693g9 =
    '<svg viewBox="37.5 43.5 27.5 1.0" ><path transform="translate(37.5, 43.5)" d="M 0 0 L 27.49613189697266 0" fill="none" stroke="#fffdfd" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kewmc1 =
    '<svg viewBox="37.5 52.4 27.5 1.0" ><path transform="translate(37.5, 52.37)" d="M 0 0 L 27.49613189697266 0" fill="none" stroke="#fffdfd" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j1bjgn =
    '<svg viewBox="510.0 348.0 22.0 16.0" ><path transform="translate(510.0, 348.04)" d="M 22 16.00000190734863 L 21.99946212768555 16.00000190734863 L 18.11777305603027 16.00000190734863 L 11 5.333705425262451 L 3.882226705551147 16.00000190734863 L 0 16.00000190734863 L 11 0 L 22 16.00000190734863 L 22 16.00000190734863 Z M 14.23527812957764 16.00000190734863 L 14.23527812957764 16.00000190734863 L 7.764990329742432 16.00000190734863 L 11 10.66629505157471 L 14.23527812957764 15.9994421005249 L 14.23527812957764 16.00000190734863 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fuj09l =
    '<svg viewBox="261.0 40.0 16.5 16.5" ><path transform="translate(256.5, 35.51)" d="M 20.80287742614746 19.79920196533203 L 16.21487426757812 15.16823959350586 C 17.11271476745605 14.04271793365479 17.65399551391602 12.61648368835449 17.65399551391602 11.06567096710205 C 17.65399551391602 7.435649394989014 14.71131420135498 4.492969512939453 11.07699680328369 4.492969512939453 C 7.442680358886719 4.492969512939453 4.5 7.439945220947266 4.5 11.06996631622314 C 4.5 14.69998741149902 7.442680358886719 17.64266777038574 11.07699680328369 17.64266777038574 C 12.64929008483887 17.64266777038574 14.08841133117676 17.09279441833496 15.22252368927002 16.17347526550293 L 19.78045654296875 20.77436828613281 C 19.91792488098145 20.92042922973633 20.10694313049316 20.99345779418945 20.29166793823242 20.99345779418945 C 20.46779823303223 20.99345779418945 20.64393043518066 20.92901992797852 20.77710151672363 20.80014228820801 C 21.06063079833984 20.52950286865234 21.06922340393066 20.08272933959961 20.80287742614746 19.79920196533203 Z M 11.07699680328369 16.22932243347168 C 9.698019027709961 16.22932243347168 8.400661468505859 15.6923360824585 7.425496578216553 14.71717071533203 C 6.450331211090088 13.74200439453125 5.913345813751221 12.44464778900146 5.913345813751221 11.06996536254883 C 5.913345813751221 9.690986633300781 6.450331211090088 8.393630027770996 7.425496578216553 7.422760963439941 C 8.400662422180176 6.447595596313477 9.698019027709961 5.910610198974609 11.07699680328369 5.910610198974609 C 12.45597553253174 5.910610198974609 13.75333309173584 6.447595596313477 14.72849750518799 7.422760963439941 C 15.70366287231445 8.397926330566406 16.24064826965332 9.695282936096191 16.24064826965332 11.06996536254883 C 16.24064826965332 12.44894409179688 15.70366287231445 13.74630069732666 14.72849750518799 14.71717071533203 C 13.75333309173584 15.6923360824585 12.45597553253174 16.22932243347168 11.07699680328369 16.22932243347168 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ift207 =
    '<svg viewBox="0.0 0.0 13.7 15.3" ><path transform="translate(-4.5, -3.0)" d="M 6.78753662109375 3 L 4.5 6.050048828125 L 4.5 16.7252197265625 C 4.5 17.56746673583984 5.18277645111084 18.250244140625 6.025023937225342 18.250244140625 L 16.70019340515137 18.250244140625 C 17.54244232177734 18.250244140625 18.22521781921387 17.56746673583984 18.22521781921387 16.7252197265625 L 18.22521781921387 6.050048828125 L 15.93768119812012 3 L 6.78753662109375 3 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_mdxbc7 =
    '<svg viewBox="0.0 3.1 13.7 1.0" ><path transform="translate(-4.5, -5.95)" d="M 4.5 9 L 18.22521781921387 9" fill="none" stroke="#ffffff" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_fi6h1f =
    '<svg viewBox="3.8 6.1 6.1 3.1" ><path transform="translate(-8.19, -8.9)" d="M 18.10009574890137 15 C 18.10009574890137 16.68449592590332 16.73454475402832 18.050048828125 15.05004787445068 18.050048828125 C 13.36555194854736 18.050048828125 12 16.68449592590332 12 15" fill="none" stroke="#ffffff" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_cnq3f8 =
    '<svg viewBox="302.2 39.5 17.2 17.2" ><path transform="translate(297.67, 35.0)" d="M 13.09184741973877 13.09184741973877 C 15.45483016967773 13.09184741973877 17.38777160644531 11.15863704681396 17.38777160644531 8.795924186706543 C 17.38777160644531 6.433210372924805 15.45483016967773 4.5 13.09184741973877 4.5 C 10.7288646697998 4.5 8.795924186706543 6.433210372924805 8.795924186706543 8.795924186706543 C 8.795924186706543 11.15863704681396 10.72886562347412 13.09184741973877 13.09184741973877 13.09184741973877 Z M 13.09184741973877 15.2398099899292 C 10.24588680267334 15.2398099899292 4.5 16.68977355957031 4.5 19.53573417663574 L 4.5 21.68369674682617 L 21.68369674682617 21.68369674682617 L 21.68369674682617 19.53573417663574 C 21.68369674682617 16.68977355957031 15.9378080368042 15.2398099899292 13.09184741973877 15.2398099899292 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
