import 'package:flutter/material.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(double fontSize,String fontFamily,Color color,FontWeight fontWeight){
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight
  );

}
//Regular Style
TextStyle getRegularStyle({double fontSize=FontSize.size12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, color,FontWeightManager.regular);
}
// Light Style
TextStyle getLightStyle({double fontSize=FontSize.size12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, color,FontWeightManager.light);
}
//Bold Style
TextStyle getBoldStyle({double fontSize=FontSize.size12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, color,FontWeightManager.bold);
}
//
TextStyle getSemiBoldStyle({double fontSize=FontSize.size12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, color,FontWeightManager.semiBold);
}
TextStyle getMediumStyle({double fontSize=FontSize.size12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, color,FontWeightManager.medium);
}
