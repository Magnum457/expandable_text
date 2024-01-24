import 'package:flutter/material.dart';
import 'ExpandableWidget.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ExpandableWidget(
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus ultricies tristique nulla aliquet enim tortor at. Integer quis auctor elit sed vulputate mi sit amet mauris. Turpis nunc eget lorem dolor sed. Leo vel fringilla est ullamcorper eget. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Mattis vulputate enim nulla aliquet porttitor lacus luctus. Elit at imperdiet dui accumsan sit amet nulla. Venenatis a condimentum vitae sapien pellentesque habitant morbi. Varius duis at consectetur lorem donec massa. Nunc sed id semper risus in hendrerit. Porta lorem mollis aliquam ut porttitor leo. Tristique magna sit amet purus gravida quis blandit. At in tellus integer feugiat scelerisque. Scelerisque felis imperdiet proin fermentum leo vel orci porta. Viverra justo nec ultrices dui sapien eget. Nunc eget lorem dolor sed viverra ipsum nunc. Id consectetur purus ut faucibus pulvinar elementum integer. Quam adipiscing vitae proin sagittis nisl rhoncus mattis. Consequat nisl vel pretium lectus quam id leo in. At erat pellentesque adipiscing commodo elit at imperdiet dui. Nam at lectus urna duis. Semper risus in hendrerit gravida rutrum quisque non tellus orci. Vel turpis nunc eget lorem dolor sed. Amet mattis vulputate enim nulla aliquet. At varius vel pharetra vel turpis. Massa tincidunt dui ut ornare lectus sit amet. Vitae turpis massa sed elementum tempus egestas sed sed risus. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Non odio euismod lacinia at quis risus. Feugiat sed lectus vestibulum mattis ullamcorper. Tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum. Amet consectetur adipiscing elit ut aliquam purus sit amet luctus. Sit amet risus nullam eget felis eget nunc. Egestas purus viverra accumsan in nisl. Tincidunt praesent semper feugiat nibh sed pulvinar proin. Rhoncus aenean vel elit scelerisque mauris. Nulla facilisi morbi tempus iaculis urna id. Imperdiet nulla malesuada pellentesque elit eget. Aliquam faucibus purus in massa tempor nec. Pulvinar etiam non quam lacus. Aliquam sem et tortor consequat id. Mi quis hendrerit dolor magna eget est lorem. Congue mauris rhoncus aenean vel elit. Tellus in metus vulputate eu scelerisque felis imperdiet proin. A diam sollicitudin tempor id eu nisl. Id aliquet risus feugiat in. Semper eget duis at tellus at urna. Rutrum tellus pellentesque eu tincidunt tortor aliquam. Sit amet volutpat consequat mauris nunc congue nisi vitae. Nisi est sit amet facilisis magna. In mollis nunc sed id semper. Quis ipsum suspendisse ultrices gravida dictum fusce ut. Ut pharetra sit amet aliquam id diam maecenas ultricies mi. Eu mi bibendum neque egestas congue. Quam quisque id diam vel quam elementum. Sit amet est placerat in egestas erat imperdiet sed euismod. Eu facilisis sed odio morbi. Rhoncus dolor purus non enim praesent elementum facilisis leo. Gravida arcu ac tortor dignissim convallis aenean. Sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum. Nunc sed blandit libero volutpat. Elementum facilisis leo vel fringilla est ullamcorper eget.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
