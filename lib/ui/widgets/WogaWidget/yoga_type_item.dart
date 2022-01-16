import 'package:yoga_app/models/yogaModels/yoga_item_type_model.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YogaTypeItemModelWidget extends StatelessWidget {
  YogaTypeItemModel yogaItemModel;
  YogaTypeItemModelWidget(this.yogaItemModel);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? 100.h
          : 180.h,
      padding: EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
      child: Row(
        children: [
          // image
          Container(
            width: MediaQuery.of(context).orientation == Orientation.portrait
                ? 102.w
                : 102.w,
            height: double.infinity,
            child: Image.network(
              yogaItemModel.ImgURL,
              fit: BoxFit.cover,
            ),
          ),
          // texts
          Container(
            // height: 135.h,
            height: double.infinity,
            // color: Colors.amber,
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    context.locale == Locale('en')
                        ? yogaItemModel.title
                        : yogaItemModel.title_ar,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer,
                        size: 18,
                        color: Color(0xff624FC0),
                      ),
                      SizedBox(width: 5),
                      Text(
                        context.locale == Locale('en')
                            ? yogaItemModel.steps
                            : yogaItemModel.steps_ar,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff624FC0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xff7E7E7E),
            size: 16,
          ),
        ],
      ),
    ));
  }
}
