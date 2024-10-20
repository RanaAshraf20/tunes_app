import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/widgets/item_widget.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});
  final List<TuneModel> colorList = const [
    TuneModel(color: Color(0xffFF604D), sound: 'note1.wav'),
    TuneModel(color: Color(0xffFFB929), sound: 'note2.wav'),
    TuneModel(color: Color(0xffF7F758), sound: 'note3.wav'),
    TuneModel(color: Color(0xff12C04D), sound: 'note4.wav'),
    TuneModel(color: Color(0xff09A3AB), sound: 'note5.wav'),
    TuneModel(color: Color(0xff0AA8EF), sound: 'note6.wav'),
    TuneModel(color: Color(0xffA14BAC), sound: 'note7.wav')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff25232E),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Column(
        children: colorList.map((e)=>(ItemWidget(tune: e,))).toList()
        ),
    );
  }

  List<ItemWidget> getItem() {
    List<ItemWidget> items = [];
    for (var element in colorList) {
      items.add(ItemWidget(tune: element));
    }
    return items;
  }
}
