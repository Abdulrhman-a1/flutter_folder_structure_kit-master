import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widges.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWiget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                    BackgroundColor: TColors.white.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                    BackgroundColor: TColors.white.withOpacity(0.1),
                  )),
              child,    
            ],
          ),
        ),
      ),
    );
  }
}

