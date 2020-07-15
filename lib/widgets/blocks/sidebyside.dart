import 'package:ergoweb/widgets/block_elements/half_side_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBySide extends StatelessWidget {
  const SideBySide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(44, 65, 104, 1.0),
        child: Column(
          children: [
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lernen Sie uns kennen',
                  style: GoogleFonts.getFont(
                    'Playfair Display',
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromRGBO(44, 65, 104, 1.0),
              child: Row(
                children: [
                  HalfSideContent(
                    backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                    content: Column(
                      children: [
                        Image.network(
                            'https://jimdo-storage.freetls.fastly.net/image/74236941/ac32471b-edd0-4cff-934b-3cffb0641017.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2458&trim=0,385,0,1587',
                            height: MediaQuery.of(context).size.height / 1.75),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sara',
                            style: GoogleFonts.getFont(
                              'Playfair Display',
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Ich bin seit 2010 Ergotherapeutin aus Leidenschaft und arbeite vorwiegend mit Klient*innen in der Neurologie.\nAn der Arbeit in ambulanten Praxen begeistert mich besonders die Möglichkeit mit meinen Klient*innen in ihrem tatsächlichen Umfeld arbeiten zu können.\nDurch das Studium der Ergotherapie kann ich meine praktische Arbeit jetzt auch auf wissenschaftliche Füße stellen. Dabei interessiert mich besonders wie theoretisches Wissen in den praktischen Alltag gelangt.\n\nAuch privat beschäftige ich mich mit großen Umstellungsprozessen und lebe daher seit 2020 in Brisbane, Australien.',
                          style: GoogleFonts.getFont(
                            'Mukta',
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  HalfSideContent(
                    backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                    content: Column(
                      children: [
                        Image.network(
                          'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
                          height: MediaQuery.of(context).size.height / 1.75,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sarah',
                            style: GoogleFonts.getFont(
                              'Playfair Display',
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Die Vielfalt und die damit verbundenen Herausforderungen, die die Arbeit in ambulanten Praxen mit sich bringen, begeistern mich und machen unseren Beruf so spannend. Ich bin seit 2015 Ergotherapeutin und arbeite hauptsächlich mit Kindern, deren Eltern und weiteren Bezugspersonen.\nWichtig ist es mir, durch Evidenzbasierung meinen Klient*innen Partizipation und Selbstständigkeit zu ermöglichen. Das motivierte mich, mein Wissen durch das Ergotherapie Studium zu vertiefen. Ich glaube, dass die Zukunft der Ergotherapie nur gemeinsam als Team gestaltet werden kann. Hierzu möchte ich theoretisches Wissen mit praktischem Knowhow verbinden. ',
                          style: GoogleFonts.getFont(
                            'Mukta',
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
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
      ),
    );
  }
}
