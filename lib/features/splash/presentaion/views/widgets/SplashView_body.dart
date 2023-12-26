import 'package:coursee/core/utils/app_routing.dart';
import 'package:coursee/core/utils/asssets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neon/neon.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{


  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    slidingAnimation();
         
         NavigateHome();
  }

  @override
  void dispose() {

    super.dispose();
    animationController.dispose();
  }

  void slidingAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1));

    slideAnimation =
        Tween<Offset>(begin: const Offset(0,10) ,  end:Offset.zero )
            .animate(animationController);

    animationController.forward();
    slideAnimation.addListener(() {
      setState(() {

      });
    });
  }

  void NavigateHome() {
    Future.delayed(Duration(seconds: 2) , ()
    {

      GoRouter.of(context).push(AppRouter.KhomeView);
      // Get.to(() => HomeView() , transition: Transition.fade , duration: kTransDur);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),

        // SizedBox(height: 50,),
        AnimatedBuilder(
          animation: slideAnimation,
          builder: (context, _) {
            return SlideTransition(
              position:slideAnimation ,
              child: Neon(
                text: 'Books',
                color: Colors.blue,
                fontSize: 50,
                font: NeonFont.Beon,
                flickeringText: true,
                flickeringLetters: [0,1],
              ),
            );
          }
        ),
      ],
    );
  }
}
