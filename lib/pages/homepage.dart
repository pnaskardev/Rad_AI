import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_ai/model/radio.dart';
import 'package:radio_ai/utils/ai_util.dart';
import 'package:velocity_x/velocity_x.dart';
class HomePage extends StatefulWidget 
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
{

  late List<MyRadio>radios;
  @override
  void initState()
  {
    super.initState();
    fetchRadios();
  }

  fetchRadios() async
  {
    final radiosJson=await rootBundle.loadString("assets/radio.json");
    radios=MyRadioList.fromJson(radiosJson)!.radios;
    print(radios);
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      drawer: Drawer(),
      body: Stack
      (
        children: 
        [
          VxAnimatedBox().size(context.screenWidth, context.screenHeight)
          .withGradient
          (
            LinearGradient
            (
              colors: 
              [
                AiUtil.primaryColor1,
                AiUtil.primaryColor2
              ],
              begin:Alignment.topLeft,
              end: Alignment.bottomRight
            )
          )
          .make(),
          AppBar
          (
            title: "Rad-AI".text.xl4.bold.white.make().shimmer
            (
              primaryColor: Vx.purple300,
              secondaryColor: Colors.white
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          )
          .h(100.0)
          .p16()
        ],
      ),
    );
  }
}