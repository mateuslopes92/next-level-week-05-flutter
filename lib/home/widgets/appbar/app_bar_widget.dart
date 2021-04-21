import 'dart:ffi';

import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';

import '../../../core/app_text_styles.dart';
import '../../../core/app_gradients.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Ola, ",
                    style: AppTextStyles.title,
                    children:[
                      TextSpan(
                        text: "Mateus",
                        style: AppTextStyles.titleBold,
                      ),
                    ]
                  ),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://avatars.githubusercontent.com/u/43526801?s=400&u=8aade1084872fefd457f3ab98199eaf82d3a48ee&v=4"),
                    )
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.2),
            child: ScoreCardWidget()
          )
        ],
      ),
    )
  );
}
