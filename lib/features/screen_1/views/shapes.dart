
import 'package:flutter/material.dart';

class MainShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0040000, 0);
    path_0.lineTo(size.width * 0.9960000, size.height * 0.0030000);
    path_0.quadraticBezierTo(
      size.width * 0.9960000,
      size.height * 0.5250000,
      size.width * 0.9960000,
      size.height * 0.6990000,
    );
    path_0.cubicTo(
      size.width * 0.6030000,
      size.height * 0.9478500,
      size.width * 0.3962000,
      size.height * 0.9447500,
      0,
      size.height * 0.6960000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0010000,
      size.height * 0.5220000,
      size.width * 0.0040000,
      0,
    );
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SubShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double w=200;
    // double h=200;
    Path path_0 = Path();
    path_0.moveTo(123.159, 112.618);
    path_0.cubicTo(123.159, 75.8683, 63.7539, 0.118286, 63.7539, 0.118286);
    path_0.cubicTo(63.7539, 0.118286, -4.83114, 77.3683, 0.909365, 112.618);
    path_0.cubicTo(6.64987, 147.868, 17.2401, 122.549, 63.7539, 121.618);
    path_0.cubicTo(108.443, 120.724, 123.159, 149.368, 123.159, 112.618);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


class RightShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9924500, size.height * 0.7188500);
    path_0.cubicTo(
      size.width * 0.9990500,
      size.height * 0.3401000,
      size.width * 0.9953500,
      size.height * 0.4265000,
      size.width * 0.9975500,
      size.height * 0.3002500,
    );
    path_0.cubicTo(
      size.width * 0.9478000,
      size.height * 0.4508500,
      size.width * 0.6827000,
      size.height * 0.3511000,
      size.width * 0.6817000,
      size.height * 0.4923500,
    );
    path_0.cubicTo(
      size.width * 0.6950500,
      size.height * 0.6502000,
      size.width * 0.9312500,
      size.height * 0.5619000,
      size.width * 0.9924500,
      size.height * 0.7188500,
    );
    path_0.close();
    return path_0;

    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
    throw UnimplementedError();
  }
}

class LefShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double w=200;
    // double h=200;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0060500, size.height * 0.2930000);
    path_0.cubicTo(
      size.width * 0.0015000,
      size.height * 0.6717500,
      size.width * 0.0047000,
      size.height * 0.5853500,
      size.width * 0.0032000,
      size.height * 0.7116000,
    );
    path_0.cubicTo(
      size.width * 0.0521500,
      size.height * 0.5607500,
      size.width * 0.3177700,
      size.height * 0.6590500,
      size.width * 0.3180121,
      size.height * 0.5178000,
    );
    path_0.cubicTo(
      size.width * 0.3037850,
      size.height * 0.3600000,
      size.width * 0.0681000,
      size.height * 0.4496000,
      size.width * 0.0060500,
      size.height * 0.2930000,
    );
    path_0.close();

    return path_0;

    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
    throw UnimplementedError();
  }
}

class BottomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double w=200;
    // double h=200;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7550000, size.height);
    path_0.cubicTo(
      size.width * 0.3725000,
      size.height * 1.0037500,
      size.width * 0.3725000,
      size.height * 1.0037500,
      size.width * 0.2450000,
      size.height * 1.0050000,
    );
    path_0.cubicTo(
      size.width * 0.3927500,
      size.height * 0.9625000,
      size.width * 0.3802500,
      size.height * 0.7535000,
      size.width * 0.5000000,
      size.height * 0.7550000,
    );
    path_0.cubicTo(
      size.width * 0.6557500,
      size.height * 0.7522500,
      size.width * 0.5997500,
      size.height * 0.9602500,
      size.width * 0.7550000,
      size.height,
    );
    path_0.close();

    return path_0;

    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
    throw UnimplementedError();
  }
}
class RightChapeOfContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double w=200;
    // double h=200;
    Path path_0 = Path();
    path_0.moveTo(size.width*0.9964000,size.height*0.2620000);
    path_0.cubicTo(size.width*0.9964000,size.height*0.6445000,size.width*0.9964000,size.height*0.6445000,size.width*0.9964000,size.height*0.7720000);
    path_0.cubicTo(size.width*0.8925000,size.height*0.5782000,size.width*-0.0042000,size.height*0.7839000,size.width*0.0015000,size.height*0.5350000);
    path_0.cubicTo(size.width*-0.0032000,size.height*0.2297000,size.width*0.9228000,size.height*0.4866000,size.width*0.9964000,size.height*0.2620000);
    path_0.close();
    return path_0;

    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
    throw UnimplementedError();
}
}