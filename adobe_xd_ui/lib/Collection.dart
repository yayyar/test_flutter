import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Detail.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Collection extends StatelessWidget {
  Collection({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 265.0, start: 49.0),
            Pin(size: 28.0, start: 127.0),
            child: Text(
              'Shop the Chair Collection',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 838.0, end: 18.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 185.0, start: 0.0),
                  Pin(size: 266.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'Chair' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.linear,
                        duration: 0.3,
                        pageBuilder: () => Detail(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 0.0, end: 56.0),
                          child:
                              // Adobe XD layer: 'Asheru' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/Asheru.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 3.0),
                          Pin(size: 20.0, end: 22.0),
                          child: Text(
                            'Asheru',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 3.0),
                          Pin(size: 18.0, end: 0.0),
                          child: Text(
                            '\$895 - \$2,395',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 185.0, end: 0.0),
                  Pin(size: 266.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'Chair' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 56.0),
                        child:
                            // Adobe XD layer: 'Asheru' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  const AssetImage('assets/images/Betty.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 20.0, end: 22.0),
                        child: Text(
                          'Betty',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 18.0, end: 0.0),
                        child: Text(
                          '\$995 – \$2,595',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 185.0, start: 0.0),
                  Pin(size: 266.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Chair' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 56.0),
                        child:
                            // Adobe XD layer: 'Asheru' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/Boomerang.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 20.0, end: 22.0),
                        child: Text(
                          'Boomerang',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 18.0, end: 0.0),
                        child: Text(
                          '\$1,495 – \$2,495',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 185.0, end: 0.0),
                  Pin(size: 266.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Chair' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 56.0),
                        child:
                            // Adobe XD layer: 'Asheru' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/Little_Petra.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 20.0, end: 22.0),
                        child: Text(
                          'Little Petra',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 18.0, end: 0.0),
                        child: Text(
                          'Sale \$595',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 185.0, start: 0.0),
                  Pin(size: 266.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Chair' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 56.0),
                        child:
                            // Adobe XD layer: 'Asheru' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage('assets/images/Pouf.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 20.0, end: 22.0),
                        child: Text(
                          'Pouf',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 18.0, end: 0.0),
                        child: Text(
                          '\$795 – \$2,695',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 185.0, end: 0.0),
                  Pin(size: 266.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Chair' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 56.0),
                        child:
                            // Adobe XD layer: 'Asheru' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage('assets/images/Rely.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 20.0, end: 22.0),
                        child: Text(
                          'Rely',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 3.0),
                        Pin(size: 18.0, end: 0.0),
                        child: Text(
                          '\$795 – \$1,995',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 75.0, start: 0.0),
            child:
                // Adobe XD layer: 'NavBar' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.1, end: 31.8),
            Pin(size: 26.0, start: 36.0),
            child:
                // Adobe XD layer: 'NavItem' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 24.0, start: 46.9),
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
                                  _svg_3fi4vt,
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
                  Pin(size: 98.0, middle: 0.3342),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'ALTURA',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 22,
                      color: const Color(0xff000000),
                      letterSpacing: 2.75,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.5, middle: 0.7409),
                  Pin(start: 5.0, end: 4.5),
                  child:
                      // Adobe XD layer: 'Icon ionic-ios-sear…' (shape)
                      SvgPicture.string(
                    _svg_amop32,
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
                    _svg_ppyzui,
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
                          _svg_p3rspl,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 3.1),
                        child: SvgPicture.string(
                          _svg_53lvx5,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 6.1, middle: 0.5),
                        Pin(size: 3.1, middle: 0.5),
                        child: SvgPicture.string(
                          _svg_s1edod,
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
                Pinned.fromPins(
                  Pin(size: 13.4, start: 0.0),
                  Pin(size: 13.4, middle: 0.5345),
                  child:
                      // Adobe XD layer: 'Icon ionic-ios-close' (shape)
                      PageLink(
                    links: [
                      PageLinkInfo(),
                    ],
                    child: SvgPicture.string(
                      _svg_nvu2dy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
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

const String _svg_3fi4vt =
    '<svg viewBox="510.0 348.0 22.0 16.0" ><path transform="translate(510.0, 348.04)" d="M 22 16.00000190734863 L 21.99946212768555 16.00000190734863 L 18.11777305603027 16.00000190734863 L 11 5.333705425262451 L 3.882226705551147 16.00000190734863 L 0 16.00000190734863 L 11 0 L 22 16.00000190734863 L 22 16.00000190734863 Z M 14.23527812957764 16.00000190734863 L 14.23527812957764 16.00000190734863 L 7.764990329742432 16.00000190734863 L 11 10.66629505157471 L 14.23527812957764 15.9994421005249 L 14.23527812957764 16.00000190734863 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_amop32 =
    '<svg viewBox="230.9 5.0 16.5 16.5" ><path transform="translate(226.41, 0.51)" d="M 20.80287742614746 19.79920196533203 L 16.21487426757812 15.16823959350586 C 17.11271476745605 14.04271793365479 17.65399551391602 12.61648368835449 17.65399551391602 11.06567096710205 C 17.65399551391602 7.435649394989014 14.71131420135498 4.492969512939453 11.07699680328369 4.492969512939453 C 7.442680358886719 4.492969512939453 4.5 7.439945220947266 4.5 11.06996631622314 C 4.5 14.69998741149902 7.442680358886719 17.64266777038574 11.07699680328369 17.64266777038574 C 12.64929008483887 17.64266777038574 14.08841133117676 17.09279441833496 15.22252368927002 16.17347526550293 L 19.78045654296875 20.77436828613281 C 19.91792488098145 20.92042922973633 20.10694313049316 20.99345779418945 20.29166793823242 20.99345779418945 C 20.46779823303223 20.99345779418945 20.64393043518066 20.92901992797852 20.77710151672363 20.80014228820801 C 21.06063079833984 20.52950286865234 21.06922340393066 20.08272933959961 20.80287742614746 19.79920196533203 Z M 11.07699680328369 16.22932243347168 C 9.698019027709961 16.22932243347168 8.400661468505859 15.6923360824585 7.425496578216553 14.71717071533203 C 6.450331211090088 13.74200439453125 5.913345813751221 12.44464778900146 5.913345813751221 11.06996536254883 C 5.913345813751221 9.690986633300781 6.450331211090088 8.393630027770996 7.425496578216553 7.422760963439941 C 8.400662422180176 6.447595596313477 9.698019027709961 5.910610198974609 11.07699680328369 5.910610198974609 C 12.45597553253174 5.910610198974609 13.75333309173584 6.447595596313477 14.72849750518799 7.422760963439941 C 15.70366287231445 8.397926330566406 16.24064826965332 9.695282936096191 16.24064826965332 11.06996536254883 C 16.24064826965332 12.44894409179688 15.70366287231445 13.74630069732666 14.72849750518799 14.71717071533203 C 13.75333309173584 15.6923360824585 12.45597553253174 16.22932243347168 11.07699680328369 16.22932243347168 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p3rspl =
    '<svg viewBox="0.0 0.0 13.7 15.3" ><path transform="translate(-4.5, -3.0)" d="M 6.78753662109375 3 L 4.5 6.050048828125 L 4.5 16.7252197265625 C 4.5 17.56746673583984 5.18277645111084 18.250244140625 6.025023937225342 18.250244140625 L 16.70019340515137 18.250244140625 C 17.54244232177734 18.250244140625 18.22521781921387 17.56746673583984 18.22521781921387 16.7252197265625 L 18.22521781921387 6.050048828125 L 15.93768119812012 3 L 6.78753662109375 3 Z" fill="none" stroke="#000000" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_53lvx5 =
    '<svg viewBox="0.0 3.1 13.7 1.0" ><path transform="translate(-4.5, -5.95)" d="M 4.5 9 L 18.22521781921387 9" fill="none" stroke="#000000" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s1edod =
    '<svg viewBox="3.8 6.1 6.1 3.1" ><path transform="translate(-8.19, -8.9)" d="M 18.10009574890137 15 C 18.10009574890137 16.68449592590332 16.73454475402832 18.050048828125 15.05004787445068 18.050048828125 C 13.36555194854736 18.050048828125 12 16.68449592590332 12 15" fill="none" stroke="#000000" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ppyzui =
    '<svg viewBox="272.1 4.5 17.2 17.2" ><path transform="translate(267.58, 0.0)" d="M 13.09184741973877 13.09184741973877 C 15.45483016967773 13.09184741973877 17.38777160644531 11.15863704681396 17.38777160644531 8.795924186706543 C 17.38777160644531 6.433210372924805 15.45483016967773 4.5 13.09184741973877 4.5 C 10.7288646697998 4.5 8.795924186706543 6.433210372924805 8.795924186706543 8.795924186706543 C 8.795924186706543 11.15863704681396 10.72886562347412 13.09184741973877 13.09184741973877 13.09184741973877 Z M 13.09184741973877 15.2398099899292 C 10.24588680267334 15.2398099899292 4.5 16.68977355957031 4.5 19.53573417663574 L 4.5 21.68369674682617 L 21.68369674682617 21.68369674682617 L 21.68369674682617 19.53573417663574 C 21.68369674682617 16.68977355957031 15.9378080368042 15.2398099899292 13.09184741973877 15.2398099899292 Z" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nvu2dy =
    '<svg viewBox="0.0 6.7 13.4 13.4" ><path transform="translate(-11.29, -4.57)" d="M 19.58906173706055 18 L 24.38437461853027 13.20468711853027 C 24.8203125 12.76874923706055 24.8203125 12.05156230926514 24.38437461853027 11.61562442779541 C 23.94843673706055 11.17968654632568 23.23124885559082 11.17968654632568 22.79531288146973 11.61562442779541 L 18 16.41093826293945 L 13.20468711853027 11.61562538146973 C 12.76874923706055 11.1796875 12.05156230926514 11.1796875 11.61562442779541 11.61562538146973 C 11.39765548706055 11.83359432220459 11.28515529632568 12.12187576293945 11.28515529632568 12.41015625 C 11.28515529632568 12.69843769073486 11.39765548706055 12.98671913146973 11.61562442779541 13.20468711853027 L 16.41093635559082 18 L 11.61562347412109 22.79531288146973 C 11.39765453338623 23.01328086853027 11.28515434265137 23.30156326293945 11.28515434265137 23.58984375 C 11.28515434265137 23.87812423706055 11.39765453338623 24.16640663146973 11.61562347412109 24.38437461853027 C 12.05156135559082 24.8203125 12.76874828338623 24.8203125 13.20468616485596 24.38437461853027 L 17.99999809265137 19.58906173706055 L 22.79531097412109 24.38437461853027 C 23.23124885559082 24.8203125 23.94843673706055 24.8203125 24.38437271118164 24.38437461853027 C 24.82031059265137 23.94843673706055 24.82031059265137 23.23124885559082 24.38437271118164 22.79531288146973 L 19.58906173706055 18 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
