import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail extends StatelessWidget {
  Detail({
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
                  Pin(size: 98.0, middle: 0.3342),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'ALTURA',
                    style: TextStyle(
                      fontFamily: 'Roboto',
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 23.0, end: 23.0),
            Pin(size: 122.0, middle: 0.6288),
            child:
                // Adobe XD layer: 'Board' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 230.0, start: 0.0),
                  Pin(size: 28.0, start: 0.0),
                  child: Text(
                    'Mustard Asheru Chair',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 80.0, start: 7.0),
                  Pin(size: 20.0, middle: 0.3725),
                  child: Text(
                    'USD 2,000',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 7.0, end: 0.0),
                  Pin(size: 54.0, end: 0.0),
                  child: Text(
                    'Boasting a shell crafted from 100% recycled plastic, \nRely is a chair with environmentally-friendly \ncredentials.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, end: 30.0),
            Pin(size: 27.0, middle: 0.7589),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff4a3232),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, middle: 0.8264),
            Pin(size: 27.0, middle: 0.7589),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffbfb2c7),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, middle: 0.7355),
            Pin(size: 27.0, middle: 0.7589),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffe5ad2c),
                border: Border.all(width: 1.0, color: const Color(0xffe6e2e2)),
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
            Pin(size: 34.0, middle: 0.6067),
            Pin(size: 18.0, middle: 0.7567),
            child: Text(
              'Color',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: const Color(0xff956f6f),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 67.0, end: 96.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff4eaea),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 64.0, start: 30.0),
            Pin(size: 20.0, end: 118.0),
            child: Text(
              'Quantity',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.0, middle: 0.8037),
            Pin(size: 28.0, end: 114.0),
            child: Text(
              '1',
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
            Pin(size: 27.6, middle: 0.7202),
            Pin(size: 27.6, end: 114.4),
            child:
                // Adobe XD layer: 'Icon feather-minus-…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_bi9bjf,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 11.1, middle: 0.5),
                  Pin(size: 1.0, middle: 0.5188),
                  child: SvgPicture.string(
                    _svg_fj30bw,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.3, end: 30.8),
            Pin(size: 29.3, end: 113.8),
            child:
                // Adobe XD layer: 'Icon ionic-ios-add-…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 7.1, end: 7.1),
                  Pin(start: 7.1, end: 7.1),
                  child: SvgPicture.string(
                    _svg_s7j5ps,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_lvopyi,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 264.0, start: 30.0),
            Pin(size: 54.0, end: 18.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffea6f16),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, end: 30.0),
            Pin(size: 54.0, end: 18.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.3, end: 44.8),
            Pin(size: 21.3, end: 34.3),
            child:
                // Adobe XD layer: 'Icon feather-heart' (shape)
                SvgPicture.string(
              _svg_cwox5d,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 96.0),
            Pin(size: 20.0, end: 36.0),
            child: Text(
              'Add to bag',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 341.0, start: 89.0),
            child:
                // Adobe XD layer: 'Pouf' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Asheru.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.5, start: 10.4),
            Pin(size: 23.6, middle: 0.2804),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_2iteis,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.5, end: 9.5),
            Pin(size: 23.6, middle: 0.2804),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_nlvh9p,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

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
const String _svg_3fi4vt =
    '<svg viewBox="510.0 348.0 22.0 16.0" ><path transform="translate(510.0, 348.04)" d="M 22 16.00000190734863 L 21.99946212768555 16.00000190734863 L 18.11777305603027 16.00000190734863 L 11 5.333705425262451 L 3.882226705551147 16.00000190734863 L 0 16.00000190734863 L 11 0 L 22 16.00000190734863 L 22 16.00000190734863 Z M 14.23527812957764 16.00000190734863 L 14.23527812957764 16.00000190734863 L 7.764990329742432 16.00000190734863 L 11 10.66629505157471 L 14.23527812957764 15.9994421005249 L 14.23527812957764 16.00000190734863 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nvu2dy =
    '<svg viewBox="0.0 6.7 13.4 13.4" ><path transform="translate(-11.29, -4.57)" d="M 19.58906173706055 18 L 24.38437461853027 13.20468711853027 C 24.8203125 12.76874923706055 24.8203125 12.05156230926514 24.38437461853027 11.61562442779541 C 23.94843673706055 11.17968654632568 23.23124885559082 11.17968654632568 22.79531288146973 11.61562442779541 L 18 16.41093826293945 L 13.20468711853027 11.61562538146973 C 12.76874923706055 11.1796875 12.05156230926514 11.1796875 11.61562442779541 11.61562538146973 C 11.39765548706055 11.83359432220459 11.28515529632568 12.12187576293945 11.28515529632568 12.41015625 C 11.28515529632568 12.69843769073486 11.39765548706055 12.98671913146973 11.61562442779541 13.20468711853027 L 16.41093635559082 18 L 11.61562347412109 22.79531288146973 C 11.39765453338623 23.01328086853027 11.28515434265137 23.30156326293945 11.28515434265137 23.58984375 C 11.28515434265137 23.87812423706055 11.39765453338623 24.16640663146973 11.61562347412109 24.38437461853027 C 12.05156135559082 24.8203125 12.76874828338623 24.8203125 13.20468616485596 24.38437461853027 L 17.99999809265137 19.58906173706055 L 22.79531097412109 24.38437461853027 C 23.23124885559082 24.8203125 23.94843673706055 24.8203125 24.38437271118164 24.38437461853027 C 24.82031059265137 23.94843673706055 24.82031059265137 23.23124885559082 24.38437271118164 22.79531288146973 L 19.58906173706055 18 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bi9bjf =
    '<svg viewBox="3.0 3.0 27.6 27.6" ><path  d="M 30.625 16.8125 C 30.625 24.44093322753906 24.44093322753906 30.625 16.8125 30.625 C 9.184067726135254 30.625 3.000001668930054 24.44093322753906 3 16.81250381469727 C 3 9.18406867980957 9.18406867980957 3.000000238418579 16.81250190734863 3.000001907348633 C 24.44093322753906 3.000001907348633 30.625 9.184070587158203 30.625 16.81250381469727 Z" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_fj30bw =
    '<svg viewBox="11.3 16.8 11.1 1.0" ><path transform="translate(-0.71, -1.19)" d="M 12 18 L 23.05000114440918 18" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s7j5ps =
    '<svg viewBox="10.5 10.5 15.0 15.0" ><path  d="M 24.36328125 16.875 L 19.125 16.875 L 19.125 11.63671875 C 19.125 11.01796913146973 18.61874961853027 10.51171875 18 10.51171875 C 17.38125038146973 10.51171875 16.875 11.01796913146973 16.875 11.63671875 L 16.875 16.875 L 11.63671875 16.875 C 11.01796913146973 16.875 10.51171875 17.296875 10.51171875 18 C 10.51171875 18.703125 11.0390625 19.125 11.63671875 19.125 C 12.234375 19.125 16.875 19.125 16.875 19.125 C 16.875 19.125 16.875 23.6953125 16.875 24.36328125 C 16.875 25.03125 17.3671875 25.48828125 18 25.48828125 C 18.6328125 25.48828125 19.125 24.98203086853027 19.125 24.36328125 L 19.125 19.125 L 24.36328125 19.125 C 24.98203086853027 19.125 25.48828125 18.61874961853027 25.48828125 18 C 25.48828125 17.38125038146973 24.98203086853027 16.875 24.36328125 16.875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lvopyi =
    '<svg viewBox="3.4 3.4 29.3 29.3" ><path  d="M 18 5.34375 C 21.38203048706055 5.34375 24.56015586853027 6.658593654632568 26.95078086853027 9.049219131469727 C 29.34140586853027 11.43984413146973 30.65625 14.61796855926514 30.65625 18 C 30.65625 21.38203048706055 29.34140586853027 24.56015586853027 26.95078086853027 26.95078086853027 C 24.56015586853027 29.34140586853027 21.38203048706055 30.65625 18 30.65625 C 14.61796855926514 30.65625 11.43984413146973 29.34140586853027 9.049219131469727 26.95078086853027 C 6.658593654632568 24.56015586853027 5.34375 21.38203048706055 5.34375 18 C 5.34375 14.61796951293945 6.658593654632568 11.43984413146973 9.049219131469727 9.049219131469727 C 11.43984413146973 6.658593654632568 14.61796855926514 5.34375 18 5.34375 M 18 3.375 C 9.921093940734863 3.375 3.375 9.921093940734863 3.375 18 C 3.375 26.07890701293945 9.921093940734863 32.625 18 32.625 C 26.07890701293945 32.625 32.625 26.07890701293945 32.625 18 C 32.625 9.921092987060547 26.07890701293945 3.375 18 3.375 L 18 3.375 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cwox5d =
    '<svg viewBox="320.8 788.3 24.3 21.3" ><path transform="translate(318.51, 783.85)" d="M 24.77215766906738 6.381214141845703 C 22.27244567871094 3.869277954101562 18.21836090087891 3.869277954101562 15.7186450958252 6.381214141845703 L 14.48513221740723 7.620175361633301 L 13.25162029266357 6.381214141845703 C 10.75156307220459 3.870110750198364 6.698166370391846 3.870110273361206 4.198107719421387 6.381213665008545 C 1.698048710823059 8.892316818237305 1.698049426078796 12.96361923217773 4.198108673095703 15.4747200012207 L 5.431619644165039 16.71368217468262 L 14.48513221740723 25.80718994140625 L 23.53864479064941 16.71368217468262 L 24.77215766906738 15.4747200012207 C 27.27304840087891 12.96396446228027 27.27304840087891 8.891970634460449 24.77215957641602 6.381213188171387 Z" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2iteis =
    '<svg viewBox="10.4 230.0 13.5 23.6" ><path transform="translate(-0.9, 223.81)" d="M 15.32109355926514 18 L 24.2578125 9.0703125 C 24.91875076293945 8.409375190734863 24.91875076293945 7.340624809265137 24.2578125 6.686718940734863 C 23.59687423706055 6.025781631469727 22.52812576293945 6.032812595367432 21.8671875 6.686718940734863 L 11.7421875 16.8046875 C 11.10234355926514 17.44453048706055 11.08828163146973 18.47109413146973 11.69296836853027 19.13203048706055 L 21.86015701293945 29.3203125 C 22.19062614440918 29.65078163146973 22.62656402587891 29.8125 23.05546951293945 29.8125 C 23.484375 29.8125 23.92031288146973 29.65078163146973 24.25078201293945 29.3203125 C 24.91172027587891 28.65937423706055 24.91172027587891 27.59062576293945 24.25078201293945 26.93671798706055 L 15.32109355926514 18 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nlvh9p =
    '<svg viewBox="367.0 230.0 13.5 23.6" ><path transform="translate(355.75, 223.81)" d="M 20.68299102783203 18 L 11.74628067016602 9.0703125 C 11.08534240722656 8.409375190734863 11.08534240722656 7.340624809265137 11.74628067016602 6.686718940734863 C 12.40721893310547 6.025781631469727 13.47596549987793 6.032812595367432 14.13690376281738 6.686718940734863 L 24.26189613342285 16.8046875 C 24.9017391204834 17.44453048706055 24.91580200195312 18.47109413146973 24.31111526489258 19.13203048706055 L 14.14393424987793 29.3203125 C 13.8134651184082 29.65078163146973 13.37752723693848 29.8125 12.94862174987793 29.8125 C 12.51971817016602 29.8125 12.08378028869629 29.65078163146973 11.75331115722656 29.3203125 C 11.09237289428711 28.65937423706055 11.09237289428711 27.59062576293945 11.75331115722656 26.93671798706055 L 20.68299102783203 18 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
