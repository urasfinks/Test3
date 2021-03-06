import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:test3/AppStore/AppStoreData.dart';
import 'package:test3/DynamicPage/DynamicFn.dart';
import '../AppStore/AppStore.dart';
import 'DynamicUI.dart';
import 'FlutterTypeConstant.dart';
import 'icon.dart';

class FlutterType {
  static Widget defaultWidget = const SizedBox(width: 0);

  static dynamic pTextStyle(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return TextStyle(
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
      fontSize: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'fontSize', null, appStoreData, index, originKeyData),
      ),
      fontStyle: FlutterTypeConstant.parseFontStyle(
        DynamicUI.def(parsedJson, 'fontStyle', null, appStoreData, index, originKeyData),
      ),
      fontWeight: FlutterTypeConstant.parseFontWeight(
        DynamicUI.def(parsedJson, 'fontWeight', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pColumn(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Column(
      crossAxisAlignment: FlutterTypeConstant.parseCrossAxisAlignment(
        DynamicUI.def(parsedJson, 'crossAxisAlignment', 'center', appStoreData, index, originKeyData),
      )!,
      mainAxisAlignment: FlutterTypeConstant.parseMainAxisAlignment(
        DynamicUI.def(parsedJson, 'mainAxisAlignment', 'start', appStoreData, index, originKeyData),
      )!,
      children: DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData),
    );
  }

  static dynamic pRow(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Row(
      crossAxisAlignment: FlutterTypeConstant.parseCrossAxisAlignment(
        DynamicUI.def(parsedJson, 'crossAxisAlignment', 'center', appStoreData, index, originKeyData),
      )!,
      mainAxisAlignment: FlutterTypeConstant.parseMainAxisAlignment(
        DynamicUI.def(parsedJson, 'mainAxisAlignment', 'start', appStoreData, index, originKeyData),
      )!,
      children: DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData),
    );
  }

  static dynamic pExpanded(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Expanded(
      flex: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'flex', 1, appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', defaultWidget, appStoreData, index, originKeyData),
    );
  }

  static dynamic pPadding(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Padding(
      padding: FlutterTypeConstant.parseEdgeInsets(
        DynamicUI.def(parsedJson, 'padding', null, appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', defaultWidget, appStoreData, index, originKeyData),
    );
  }

  static dynamic pSizedBox(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return SizedBox(
      width: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'width', null, appStoreData, index, originKeyData),
      ),
      height: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'height', null, appStoreData, index, originKeyData),
      ),
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pContainer(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Container(
      margin: FlutterTypeConstant.parseEdgeInsets(
        DynamicUI.def(parsedJson, 'margin', null, appStoreData, index, originKeyData),
      ),
      padding: FlutterTypeConstant.parseEdgeInsets(
        DynamicUI.def(parsedJson, 'padding', null, appStoreData, index, originKeyData),
      ),
      width: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'width', null, appStoreData, index, originKeyData),
      ),
      height: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'height', null, appStoreData, index, originKeyData),
      ),
      child: DynamicUI.def(parsedJson, 'child', defaultWidget, appStoreData, index, originKeyData),
      decoration: DynamicUI.def(parsedJson, 'decoration', null, appStoreData, index, originKeyData),
      alignment: FlutterTypeConstant.parseAlignment(
        DynamicUI.def(parsedJson, 'alignment', null, appStoreData, index, originKeyData),
      ),
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pCenter(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Center(
      child: DynamicUI.def(parsedJson, 'child', defaultWidget, appStoreData, index, originKeyData),
    );
  }

  static dynamic pCircleAvatar(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return CircleAvatar(
      backgroundImage: DynamicUI.def(parsedJson, 'backgroundImage', null, appStoreData, index, originKeyData),
      backgroundColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'backgroundColor', null, appStoreData, index, originKeyData),
      ),
      radius: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'radius', null, appStoreData, index, originKeyData),
      ),
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pIcon(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Icon(
      iconsMap[DynamicUI.def(parsedJson, 'src', null, appStoreData, index, originKeyData)],
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
      size: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'size', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pAssetImage(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return AssetImage(
      DynamicUI.def(parsedJson, 'src', '', appStoreData, index, originKeyData),
    );
  }

  static dynamic pDecorationImage(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return DecorationImage(
      image: DynamicUI.def(parsedJson, 'image', null, appStoreData, index, originKeyData),
      fit: FlutterTypeConstant.parseBoxFit(
        DynamicUI.def(parsedJson, 'fit', null, appStoreData, index, originKeyData),
      ),
      scale: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'scale', 1.0, appStoreData, index, originKeyData),
      )!,
      opacity: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'scale', 1.0, appStoreData, index, originKeyData),
      )!,
      repeat: FlutterTypeConstant.parseImageRepeat(
        DynamicUI.def(parsedJson, 'scale', "noRepeat", appStoreData, index, originKeyData),
      )!,
      filterQuality: FilterQuality.high,
      alignment: FlutterTypeConstant.parseAlignment(
        DynamicUI.def(parsedJson, 'alignment', "center", appStoreData, index, originKeyData),
      )!,
      matchTextDirection: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'matchTextDirection', false, appStoreData, index, originKeyData),
      )!,
    );
  }

  static dynamic pBoxDecoration(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return BoxDecoration(
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
      image: DynamicUI.def(parsedJson, 'image', null, appStoreData, index, originKeyData),
      borderRadius: FlutterTypeConstant.parseBorderRadius(
        DynamicUI.def(parsedJson, 'borderRadius', null, appStoreData, index, originKeyData),
      ),
      gradient: DynamicUI.def(parsedJson, 'gradient', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pSpacer(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return const Spacer();
  }

  static dynamic pLinearGradient(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return LinearGradient(
      begin: FlutterTypeConstant.parseAlignment(
        DynamicUI.def(parsedJson, 'begin', 'centerLeft', appStoreData, index, originKeyData),
      )!,
      colors: FlutterTypeConstant.parseListColor(
        DynamicUI.def(parsedJson, 'colors', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pButtonStyle(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        FlutterTypeConstant.parseColor(
          DynamicUI.def(parsedJson, 'backgroundColor', null, appStoreData, index, originKeyData),
        ),
      ),
      shadowColor: MaterialStateProperty.all(
        FlutterTypeConstant.parseColor(
          DynamicUI.def(parsedJson, 'shadowColor', 'transparent', appStoreData, index, originKeyData),
        ),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: FlutterTypeConstant.parseBorderRadius(
            DynamicUI.def(parsedJson, 'borderRadius', null, appStoreData, index, originKeyData),
          )!,
        ),
      ),
    );
  }

  static dynamic pMaterial(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Material(
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
      borderRadius: FlutterTypeConstant.parseBorderRadius(
        DynamicUI.def(parsedJson, 'borderRadius', null, appStoreData, index, originKeyData),
      ),
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static void dynamicFunction(parsedJson, AppStoreData appStoreData, String key, int index, String originKeyData) {
    Map<String, dynamic> originData = appStoreData.getServerResponse()[originKeyData][index]["data"];
    List<String> exp = parsedJson[key].toString().split("):");
    List<dynamic> args = [];
    args.add(appStoreData);
    try {
      List<String> exp2 = exp[0].split("(");
      if (exp2.length > 1 && originData.containsKey(exp2[1])) {
        args.add(originData[exp2[1]]);
      }
    } catch (e, stacktrace) {
      print(e);
      print(stacktrace);
    }
    if (args.length == 1) {
      args.add(null);
    }
    Function? x = DynamicUI.def(parsedJson, key, null, appStoreData, index, originKeyData);
    if (x != null) {
      Function.apply(x, args);
    }
  }

  static dynamic pRawMaterialButton(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    print("pRawMaterialButton: ${parsedJson}");
    return RawMaterialButton(
      constraints: const BoxConstraints(minWidth: 10, maxHeight: 10),
      onPressed: DynamicFn.evalTextFunction(parsedJson['onPressed'], parsedJson, appStoreData, index, originKeyData),
      child: DynamicUI.def(parsedJson, 'icon', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pElevatedButtonIcon(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    //print(parsedJson);
    return ElevatedButton.icon(
      onPressed: DynamicFn.evalTextFunction(parsedJson['onPressed'], parsedJson, appStoreData, index, originKeyData),
      style: DynamicUI.def(parsedJson, 'style', null, appStoreData, index, originKeyData),
      icon: DynamicUI.def(parsedJson, 'icon', null, appStoreData, index, originKeyData),
      label: DynamicUI.def(parsedJson, 'label', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pInkWell(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return InkWell(
      customBorder: DynamicUI.def(parsedJson, 'customBorder', null, appStoreData, index, originKeyData),
      splashColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'splashColor', null, appStoreData, index, originKeyData),
      ),
      highlightColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'highlightColor', null, appStoreData, index, originKeyData),
      ),
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
      onTap: DynamicFn.evalTextFunction(parsedJson['onTap'], parsedJson, appStoreData, index, originKeyData),
    );
  }

  static dynamic pRoundedRectangleBorder(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return RoundedRectangleBorder(
      borderRadius: FlutterTypeConstant.parseBorderRadius(
        DynamicUI.def(parsedJson, 'borderRadius', 0, appStoreData, index, originKeyData),
      )!,
    );
  }

  static dynamic pText(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Text(
      DynamicUI.def(parsedJson, 'data', '', appStoreData, index, originKeyData).toString(),
      textDirection: FlutterTypeConstant.parseTextDirection(
        DynamicUI.def(parsedJson, 'textDirection', null, appStoreData, index, originKeyData),
      ),
      textAlign: FlutterTypeConstant.parseTextAlign(
        DynamicUI.def(parsedJson, 'textAlign', null, appStoreData, index, originKeyData),
      ),
      softWrap: DynamicUI.def(parsedJson, 'softWrap', null, appStoreData, index, originKeyData),
      overflow: FlutterTypeConstant.parseTextOverflow(
        DynamicUI.def(parsedJson, 'overflow', null, appStoreData, index, originKeyData),
      ),
      style: DynamicUI.def(parsedJson, 'style', null, appStoreData, index, originKeyData),
      textScaleFactor: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'textScaleFactor', null, appStoreData, index, originKeyData),
      ),
      maxLines: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'maxLines', null, appStoreData, index, originKeyData),
      ),
      textWidthBasis: FlutterTypeConstant.parseTextWidthBasis(
        DynamicUI.def(parsedJson, 'textWidthBasis', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pSelectableText(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return SelectableText(
      DynamicUI.def(parsedJson, 'data', '', appStoreData, index, originKeyData),
      style: DynamicUI.def(parsedJson, 'style', null, appStoreData, index, originKeyData),
      textAlign: FlutterTypeConstant.parseTextAlign(
        DynamicUI.def(parsedJson, 'textAlign', 'start', appStoreData, index, originKeyData),
      )!,
      textDirection: FlutterTypeConstant.parseTextDirection(
        DynamicUI.def(parsedJson, 'textDirection', null, appStoreData, index, originKeyData),
      ),
      textScaleFactor: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'textScaleFactor', null, appStoreData, index, originKeyData),
      ),
      showCursor: DynamicUI.def(parsedJson, 'showCursor', null, appStoreData, index, originKeyData),
      autofocus: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'autofocus', false, appStoreData, index, originKeyData),
      )!,
      minLines: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'minLines', 1, appStoreData, index, originKeyData),
      ),
      maxLines: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'maxLines', 1, appStoreData, index, originKeyData),
      ),
      cursorColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'cursorColor', null, appStoreData, index, originKeyData),
      ),
      enableInteractiveSelection: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'enableInteractiveSelection', true, appStoreData, index, originKeyData),
      )!,
      textWidthBasis: FlutterTypeConstant.parseTextWidthBasis(
        DynamicUI.def(parsedJson, 'textWidthBasis', null, appStoreData, index, originKeyData),
      ),
      scrollPhysics: pBouncingScrollPhysics(parsedJson, appStoreData, index, originKeyData),
    );
  }

  static dynamic pTextField(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    var key = DynamicUI.def(parsedJson, 'name', '-', appStoreData, index, originKeyData);
    String defData = DynamicUI.def(parsedJson, 'data', '', appStoreData, index, originKeyData);
    String formattedDate = defData;
    String type = DynamicUI.def(parsedJson, 'keyboardType', 'text', appStoreData, index, originKeyData);
    bool readOnly = type == "datetime" ? true : false;
    String? defAppStoreData = appStoreData.get(key, null);
    TextEditingController? textController = appStoreData.getTextController(
        key,
        defAppStoreData ?? defData
    );
    appStoreData.set(key, textController?.text);

    List<TextInputFormatter> f = [];
    String regExp = DynamicUI.def(parsedJson, 'regexp', '', appStoreData, index, originKeyData);
    if (regExp.isNotEmpty) {
      f.add(FilteringTextInputFormatter.allow(RegExp(regExp)));
    }

    return TextField(
      onSubmitted: (String x) {
        dynamic c =
            DynamicFn.evalTextFunction(parsedJson['onSubmitted'], parsedJson, appStoreData, index, originKeyData);
        if (c != null && x.isNotEmpty) {
          Function.apply(c, []);
        }
      },
      onEditingComplete:
          DynamicFn.evalTextFunction(parsedJson['onEditingComplete'], parsedJson, appStoreData, index, originKeyData),
      inputFormatters: f,
      textCapitalization: FlutterTypeConstant.parseTextCapitalization(
        DynamicUI.def(parsedJson, 'textCapitalization', 'sentences', appStoreData, index, originKeyData),
      )!,
      minLines: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'minLines', 1, appStoreData, index, originKeyData),
      ),
      maxLines: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'maxLines', 1, appStoreData, index, originKeyData),
      ),
      maxLength: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'maxLength', null, appStoreData, index, originKeyData),
      ),
      textAlign: FlutterTypeConstant.parseTextAlign(
        DynamicUI.def(parsedJson, 'textAlign', 'start', appStoreData, index, originKeyData),
      )!,
      textAlignVertical: FlutterTypeConstant.parseTextAlignVertical(
        DynamicUI.def(parsedJson, 'textAlignVertical', null, appStoreData, index, originKeyData),
      ),
      clipBehavior: FlutterTypeConstant.parseClip(
        DynamicUI.def(parsedJson, 'clipBehavior', 'hardEdge', appStoreData, index, originKeyData),
      )!,
      showCursor: DynamicUI.def(parsedJson, 'showCursor', null, appStoreData, index, originKeyData),
      autocorrect: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'autocorrect', true, appStoreData, index, originKeyData),
      )!,
      autofocus: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'autofocus', false, appStoreData, index, originKeyData),
      )!,
      expands: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'expands', false, appStoreData, index, originKeyData),
      )!,
      enabled: DynamicUI.def(parsedJson, 'enabled', null, appStoreData, index, originKeyData),
      cursorColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'cursorColor', null, appStoreData, index, originKeyData),
      ),
      readOnly: readOnly,
      controller: textController,
      obscureText: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'obscureText', false, appStoreData, index, originKeyData),
      )!,
      obscuringCharacter: DynamicUI.def(parsedJson, 'obscureText', '*', appStoreData, index, originKeyData),
      keyboardType: FlutterTypeConstant.parseTextInputType(type)!,
      decoration: DynamicUI.def(parsedJson, 'decoration', null, appStoreData, index, originKeyData),
      style: DynamicUI.def(parsedJson, 'style', null, appStoreData, index, originKeyData),
      onChanged: (value) {
        appStoreData.set(key, value);
      },
      onTap: (type == "datetime")
          ? () async {
              //print("Formated date: ${formattedDate}");
              DateTime? pickedDate = await showDatePicker(
                locale: const Locale('ru', 'ru_Ru'),
                context: appStoreData.getCtx()!,
                initialDate: formattedDate != "" ? DateFormat("dd.MM.yyyy").parse(formattedDate) : DateTime.now(),
                firstDate: DateTime(1931),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                //print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                formattedDate = DateFormat('dd.MM.yyyy').format(pickedDate);
                //print(formattedDate); //formatted date output using intl package =>  2021-03-16
                appStoreData.set(key, formattedDate);
                textController?.text = formattedDate;
              } else {
                textController?.text = "";
              }
            }
          : () {},
    );
  }

  static dynamic pInputDecoration(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return InputDecoration(
      icon: DynamicUI.def(parsedJson, 'icon', null, appStoreData, index, originKeyData),
      border: DynamicUI.def(parsedJson, 'border', null, appStoreData, index, originKeyData),
      labelText: DynamicUI.def(parsedJson, 'labelText', '', appStoreData, index, originKeyData),
    );
  }

  static dynamic pUnderlineInputBorder(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return UnderlineInputBorder(
      borderSide: DynamicUI.def(parsedJson, 'borderSide', const BorderSide(), appStoreData, index, originKeyData),
      borderRadius: DynamicUI.def(
          parsedJson,
          'borderRadius',
          const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
          appStoreData,
          index,
          originKeyData),
    );
  }

  static dynamic pBorderSize(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return BorderSide(
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', '#f5f5f5', appStoreData, index, originKeyData),
      )!,
      width: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'width', 1, appStoreData, index, originKeyData),
      )!,
      style: FlutterTypeConstant.parseBorderStyle(
        DynamicUI.def(parsedJson, 'style', BorderStyle.solid, appStoreData, index, originKeyData),
      )!,
    );
  }

  static dynamic pGridView(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return GridView.count(
      crossAxisCount: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'crossAxisCount', 0, appStoreData, index, originKeyData),
      )!,
      mainAxisSpacing: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'mainAxisSpacing', 0.0, appStoreData, index, originKeyData),
      )!,
      crossAxisSpacing: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'crossAxisSpacing', 0.0, appStoreData, index, originKeyData),
      )!,
      childAspectRatio: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'childAspectRatio', 1.0, appStoreData, index, originKeyData),
      )!,
      reverse: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'reverse', false, appStoreData, index, originKeyData),
      )!,
      scrollDirection: FlutterTypeConstant.parseAxis(
        DynamicUI.def(parsedJson, 'scrollDirection', 'vertical', appStoreData, index, originKeyData)!,
      )!,
      shrinkWrap: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'shrinkWrap', false, appStoreData, index, originKeyData),
      )!,
      padding: FlutterTypeConstant.parseEdgeInsets(
        DynamicUI.def(parsedJson, 'padding', null, appStoreData, index, originKeyData),
      )!,
      physics: pBouncingScrollPhysics(parsedJson, appStoreData, index, originKeyData),
      children: DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData),
    );
  }

  static dynamic pListView(parsedJson, AppStoreData appStoreData, int parentindex, originKeyData) {
    bool separated = FlutterTypeConstant.parseBool(
      DynamicUI.def(parsedJson, 'separated', false, appStoreData, parentindex, originKeyData),
    )!;
    if (separated) {
      return ListView.separated(
        scrollDirection: FlutterTypeConstant.parseAxis(
          DynamicUI.def(parsedJson, 'scrollDirection', 'vertical', appStoreData, parentindex, originKeyData)!,
        )!,
        padding: FlutterTypeConstant.parseEdgeInsets(
          DynamicUI.def(parsedJson, 'padding', null, appStoreData, parentindex, originKeyData),
        ),
        shrinkWrap: FlutterTypeConstant.parseBool(
          DynamicUI.def(parsedJson, 'shrinkWrap', false, appStoreData, parentindex, originKeyData),
        )!,
        reverse: FlutterTypeConstant.parseBool(
          DynamicUI.def(parsedJson, 'reverse', false, appStoreData, parentindex, originKeyData),
        )!,
        physics: pBouncingScrollPhysics(parsedJson, appStoreData, parentindex, originKeyData),
        itemCount: FlutterTypeConstant.parseInt(
          DynamicUI.def(parsedJson, 'itemCount', 0, appStoreData, parentindex, originKeyData),
        )!,
        itemBuilder: (BuildContext context, int index) {
          return DynamicUI.mainJson(parsedJson["children"][index], appStoreData, index, originKeyData);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 1,
        ),
      );
    } else {
      return ListView.builder(
        scrollDirection: FlutterTypeConstant.parseAxis(
          DynamicUI.def(parsedJson, 'scrollDirection', 'vertical', appStoreData, parentindex, originKeyData)!,
        )!,
        padding: FlutterTypeConstant.parseEdgeInsets(
          DynamicUI.def(parsedJson, 'padding', null, appStoreData, parentindex, originKeyData),
        ),
        shrinkWrap: FlutterTypeConstant.parseBool(
          DynamicUI.def(parsedJson, 'shrinkWrap', false, appStoreData, parentindex, originKeyData),
        )!,
        reverse: FlutterTypeConstant.parseBool(
          DynamicUI.def(parsedJson, 'reverse', false, appStoreData, parentindex, originKeyData),
        )!,
        physics: pBouncingScrollPhysics(parsedJson, appStoreData, parentindex, originKeyData),
        itemCount: FlutterTypeConstant.parseInt(
          DynamicUI.def(parsedJson, 'itemCount', 0, appStoreData, parentindex, originKeyData),
        )!,
        itemBuilder: (BuildContext context, int index) {
          return DynamicUI.mainJson(parsedJson["children"][index], appStoreData, index, originKeyData);
        },
      );
    }
  }

  static dynamic pBouncingScrollPhysics(parsedJson, AppStoreData appStoreData, int parentindex, originKeyData) {
    return const BouncingScrollPhysics(
      parent: AlwaysScrollableScrollPhysics(),
    );
  }

  static dynamic pPageView(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return PageView(
      scrollDirection: FlutterTypeConstant.parseAxis(
        DynamicUI.def(parsedJson, 'scrollDirection', 'vertical', appStoreData, index, originKeyData)!,
      )!,
      reverse: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'reverse', false, appStoreData, index, originKeyData),
      )!,
      physics: pBouncingScrollPhysics(parsedJson, appStoreData, index, originKeyData),
      pageSnapping: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'pageSnapping', true, appStoreData, index, originKeyData),
      )!,
      padEnds: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'padEnds', true, appStoreData, index, originKeyData),
      )!,
      allowImplicitScrolling: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'allowImplicitScrolling', false, appStoreData, index, originKeyData),
      )!,
      clipBehavior: FlutterTypeConstant.parseClip(
        DynamicUI.def(parsedJson, 'clipBehavior', 'none', appStoreData, index, originKeyData),
      )!,
      children: DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData),
    );
  }

  static dynamic pAlign(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Align(
      alignment: FlutterTypeConstant.parseAlignment(
        DynamicUI.def(parsedJson, 'alignment', 'center', appStoreData, index, originKeyData),
      )!,
      widthFactor: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'widthFactor', null, appStoreData, index, originKeyData),
      ),
      heightFactor: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'heightFactor', null, appStoreData, index, originKeyData),
      ),
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pAspectRatio(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return AspectRatio(
      aspectRatio: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'aspectRatio', 1.0, appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pFitBox(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return FittedBox(
      fit: FlutterTypeConstant.parseBoxFit(
        DynamicUI.def(parsedJson, 'fit', 'contain', appStoreData, index, originKeyData),
      )!,
      alignment: FlutterTypeConstant.parseAlignment(
        DynamicUI.def(parsedJson, 'alignment', 'center', appStoreData, index, originKeyData),
      )!,
      clipBehavior: FlutterTypeConstant.parseClip(
        DynamicUI.def(parsedJson, 'clipBehavior', 'none', appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pBaseline(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Baseline(
      baseline: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'baseline', null, appStoreData, index, originKeyData),
      )!,
      baselineType: FlutterTypeConstant.parseTextBaseline(
        DynamicUI.def(parsedJson, 'baselineType', null, appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pStack(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Stack(
      alignment: FlutterTypeConstant.parseAlignmentDirectional(
        DynamicUI.def(parsedJson, 'alignment', 'topStart', appStoreData, index, originKeyData),
      )!,
      textDirection: FlutterTypeConstant.parseTextDirection(
        DynamicUI.def(parsedJson, 'textDirection', null, appStoreData, index, originKeyData),
      ),
      fit: FlutterTypeConstant.parseStackFit(
        DynamicUI.def(parsedJson, 'fit', 'loose', appStoreData, index, originKeyData),
      )!,
      clipBehavior: FlutterTypeConstant.parseClip(
        DynamicUI.def(parsedJson, 'clipBehavior', 'hardEdge', appStoreData, index, originKeyData),
      )!,
      children: DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData),
    );
  }

  static dynamic pPositioned(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Positioned(
      height: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'height', null, appStoreData, index, originKeyData),
      ),
      width: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'width', null, appStoreData, index, originKeyData),
      ),
      left: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'left', null, appStoreData, index, originKeyData),
      ),
      right: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'right', null, appStoreData, index, originKeyData),
      ),
      top: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'top', null, appStoreData, index, originKeyData),
      ),
      bottom: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'bottom', null, appStoreData, index, originKeyData),
      ),
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pOpacity(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Opacity(
      opacity: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'opacity', 1.0, appStoreData, index, originKeyData),
      )!,
      alwaysIncludeSemantics: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'alwaysIncludeSemantics', false, appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pWrap(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Wrap(
      direction: FlutterTypeConstant.parseAxis(
        DynamicUI.def(parsedJson, 'direction', 1.0, appStoreData, index, originKeyData),
      )!,
      alignment: FlutterTypeConstant.parseWrapAlignment(
        DynamicUI.def(parsedJson, 'alignment', 'start', appStoreData, index, originKeyData),
      )!,
      spacing: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'spacing', 0.0, appStoreData, index, originKeyData),
      )!,
      runAlignment: FlutterTypeConstant.parseWrapAlignment(
        DynamicUI.def(parsedJson, 'runAlignment', 'start', appStoreData, index, originKeyData),
      )!,
      runSpacing: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'runSpacing', 0.0, appStoreData, index, originKeyData),
      )!,
      crossAxisAlignment: FlutterTypeConstant.parseWrapCrossAlignment(
        DynamicUI.def(parsedJson, 'crossAxisAlignment', 'start', appStoreData, index, originKeyData),
      )!,
      textDirection: FlutterTypeConstant.parseTextDirection(
        DynamicUI.def(parsedJson, 'textDirection', null, appStoreData, index, originKeyData),
      ),
      verticalDirection: FlutterTypeConstant.parseVerticalDirection(
        DynamicUI.def(parsedJson, 'verticalDirection', 'down', appStoreData, index, originKeyData),
      )!,
      clipBehavior: FlutterTypeConstant.parseClip(
        DynamicUI.def(parsedJson, 'clipBehavior', 'none', appStoreData, index, originKeyData),
      )!,
      children: DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData),
    );
  }

  static dynamic pClipRRect(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return ClipRRect(
      borderRadius: FlutterTypeConstant.parseBorderRadius(
        DynamicUI.def(parsedJson, 'borderRadius', null, appStoreData, index, originKeyData),
      ),
      clipBehavior: FlutterTypeConstant.parseClip(
        DynamicUI.def(parsedJson, 'clipBehavior', 'antiAlias', appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pLimitedBox(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return LimitedBox(
      maxWidth: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'maxWidth', 'infinity', appStoreData, index, originKeyData),
      )!,
      maxHeight: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'maxWidth', 'infinity', appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pOverflowBox(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return OverflowBox(
      alignment: FlutterTypeConstant.parseAlignment(
        DynamicUI.def(parsedJson, 'alignment', 'center', appStoreData, index, originKeyData),
      )!,
      minWidth: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'minWidth', null, appStoreData, index, originKeyData),
      ),
      maxWidth: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'maxWidth', null, appStoreData, index, originKeyData),
      ),
      minHeight: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'minHeight', null, appStoreData, index, originKeyData),
      ),
      maxHeight: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'maxHeight', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pDivider(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return Divider(
      height: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'height', null, appStoreData, index, originKeyData),
      ),
      thickness: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'thickness', null, appStoreData, index, originKeyData),
      ),
      endIndent: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'endIndent', null, appStoreData, index, originKeyData),
      ),
      indent: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'indent', null, appStoreData, index, originKeyData),
      ),
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pRotatedBox(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return RotatedBox(
      quarterTurns: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'quarterTurns', 0, appStoreData, index, originKeyData),
      )!,
      child: DynamicUI.def(parsedJson, 'child', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pIconButton(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return IconButton(
      icon: DynamicUI.def(parsedJson, 'icon', null, appStoreData, index, originKeyData),
      iconSize: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'iconSize', null, appStoreData, index, originKeyData),
      ),
      splashRadius: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'splashRadius', null, appStoreData, index, originKeyData),
      ),
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
      focusColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'focusColor', null, appStoreData, index, originKeyData),
      ),
      hoverColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'hoverColor', null, appStoreData, index, originKeyData),
      ),
      highlightColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'highlightColor', null, appStoreData, index, originKeyData),
      ),
      splashColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'splashColor', null, appStoreData, index, originKeyData),
      ),
      disabledColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'disabledColor', null, appStoreData, index, originKeyData),
      ),
      padding: FlutterTypeConstant.parseEdgeInsets(
        DynamicUI.def(parsedJson, 'padding', '8', appStoreData, index, originKeyData),
      )!,
      alignment: FlutterTypeConstant.parseAlignment(
        DynamicUI.def(parsedJson, 'alignment', 'center', appStoreData, index, originKeyData),
      )!,
      tooltip: DynamicUI.def(parsedJson, 'tooltip', null, appStoreData, index, originKeyData),
      autofocus: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'autofocus', false, appStoreData, index, originKeyData),
      )!,
      enableFeedback: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'enableFeedback', true, appStoreData, index, originKeyData),
      )!,
      onPressed: DynamicFn.evalTextFunction(parsedJson['onPressed'], parsedJson, appStoreData, index, originKeyData),
    );
  }

  static dynamic pCheckbox(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    //print("BUILD pCheckbox");
    var key = DynamicUI.def(parsedJson, 'name', '-', appStoreData, index, originKeyData);
    //appStoreData.set(key, defValue);
    return Checkbox(
      value: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'value', false, appStoreData, index, originKeyData),
      ),
      tristate: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'tristate', false, appStoreData, index, originKeyData),
      )!,
      activeColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'activeColor', null, appStoreData, index, originKeyData),
      ),
      focusColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'focusColor', null, appStoreData, index, originKeyData),
      ),
      hoverColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'hoverColor', null, appStoreData, index, originKeyData),
      ),
      checkColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'checkColor', null, appStoreData, index, originKeyData),
      ),
      autofocus: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'autofocus', false, appStoreData, index, originKeyData),
      )!,
      splashRadius: DynamicUI.def(parsedJson, 'splashRadius', null, appStoreData, index, originKeyData),
      onChanged: (bool? value) {
        appStoreData.set(key, value);
        //print("onChanged: ${value}; ${appStoreData.getStringStoreState()}");
        appStoreData.apply();
      },
    );
  }

  static dynamic pNetworkImage(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return NetworkImage(
      DynamicUI.def(parsedJson, 'src', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pCachedNetworkImageProvider(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return CachedNetworkImageProvider(
      DynamicUI.def(parsedJson, 'src', null, appStoreData, index, originKeyData),
      maxWidth: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'maxWidth', null, appStoreData, index, originKeyData),
      ),
      maxHeight: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'maxHeight', null, appStoreData, index, originKeyData),
      ),
      headers: AppStore.requestHeader,
      scale: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'scale', 1.0, appStoreData, index, originKeyData),
      )!,
      cacheKey: DynamicUI.def(parsedJson, 'cacheKey', null, appStoreData, index, originKeyData),
    );
  }

  static dynamic pCachedNetworkImage(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    //print(parsedJson);
    return CachedNetworkImage(
      color: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'color', null, appStoreData, index, originKeyData),
      ),
      httpHeaders: AppStore.requestHeader,
      imageUrl: DynamicUI.def(parsedJson, 'src', null, appStoreData, index, originKeyData),
      //placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: FlutterTypeConstant.parseBoxFit(
        DynamicUI.def(parsedJson, 'fit', null, appStoreData, index, originKeyData),
      ),
      width: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'width', null, appStoreData, index, originKeyData),
      ),
      height: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'height', null, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pNothing(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return const SizedBox(
      height: 0,
      width: 0,
    );
  }

  static dynamic pAppStore(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    return AppStore.connect(appStoreData, (def) {
      return DynamicUI.def(parsedJson, 'child', defaultWidget, appStoreData, index, originKeyData);
    }, defaultValue: 1);
  }

  static dynamic pSegmentControl(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    List<Widget> children = DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData);
    var key = DynamicUI.def(parsedJson, 'name', '-', appStoreData, index, originKeyData);
    Map<int, Widget> ch = {};
    int count = 0;
    for (Widget w in children) {
      ch[count++] = w;
    }
    return CupertinoSegmentedControl(
      children: ch,
      unselectedColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'unselectedColor', null, appStoreData, index, originKeyData),
      ),
      borderColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'borderColor', null, appStoreData, index, originKeyData),
      ),
      selectedColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'selectedColor', null, appStoreData, index, originKeyData),
      ),
      pressedColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'pressedColor', null, appStoreData, index, originKeyData),
      ),
      padding: FlutterTypeConstant.parseEdgeInsets(
        DynamicUI.def(parsedJson, 'padding', null, appStoreData, index, originKeyData),
      ),
      onValueChanged: (int index) {
        appStoreData.set(key, index);
        appStoreData.apply();
      },
      groupValue: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'value', 0, appStoreData, index, originKeyData),
      ),
    );
  }

  static dynamic pSegmentControl2(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    List<Widget> children = DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData);
    var key = DynamicUI.def(parsedJson, 'name', '-', appStoreData, index, originKeyData);
    Map<int, Widget> ch = {};
    int count = 0;
    for (Widget w in children) {
      ch[count++] = w;
    }
    return CustomSlidingSegmentedControl(
      children: ch,
      decoration: DynamicUI.def(parsedJson, 'decoration', null, appStoreData, index, originKeyData),
      thumbDecoration: DynamicUI.def(parsedJson, 'thumbDecoration', null, appStoreData, index, originKeyData),
      duration: Duration(
        milliseconds: FlutterTypeConstant.parseInt(
          DynamicUI.def(parsedJson, 'duration', 300, appStoreData, index, originKeyData),
        )!,
      ),
      fixedWidth: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'fixedWidth', null, appStoreData, index, originKeyData),
      ),
      height: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'height', null, appStoreData, index, originKeyData),
      ),
      padding: FlutterTypeConstant.parseDouble(
        DynamicUI.def(parsedJson, 'padding', 12, appStoreData, index, originKeyData),
      )!,
      splashColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'splashColor', null, appStoreData, index, originKeyData),
      ),
      highlightColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'highlightColor', null, appStoreData, index, originKeyData),
      ),
      fromMax: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'fromMax', false, appStoreData, index, originKeyData),
      )!,
      isStretch: FlutterTypeConstant.parseBool(
        DynamicUI.def(parsedJson, 'isStretch', true, appStoreData, index, originKeyData),
      )!,
      onValueChanged: (int index) {
        appStoreData.set(key, index);
        appStoreData.apply();
      },
      initialValue: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'value', 0, appStoreData, index, originKeyData),
      ),
      innerPadding: FlutterTypeConstant.parseEdgeInsets(
        DynamicUI.def(parsedJson, 'padding', 2.0, appStoreData, index, originKeyData),
      )!,
    );
  }

  static dynamic pSegmentControl3(parsedJson, AppStoreData appStoreData, int index, String originKeyData) {
    List<Widget> children = DynamicUI.defList(parsedJson, 'children', appStoreData, index, originKeyData);
    var key = DynamicUI.def(parsedJson, 'name', '-', appStoreData, index, originKeyData);
    Map<int, Widget> ch = {};
    int count = 0;
    for (Widget w in children) {
      ch[count++] = w;
    }
    return MaterialSegmentedControl(
      children: ch,
      unselectedColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'unselectedColor', null, appStoreData, index, originKeyData),
      ),
      borderColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'borderColor', null, appStoreData, index, originKeyData),
      ),
      selectedColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'selectedColor', "blue.600", appStoreData, index, originKeyData),
      )!,
      disabledColor: FlutterTypeConstant.parseColor(
        DynamicUI.def(parsedJson, 'disabledColor', "red", appStoreData, index, originKeyData),
      )!,
      onSegmentChosen: (int index) {
        appStoreData.set(key, index);
        appStoreData.apply();
      },
      selectionIndex: FlutterTypeConstant.parseInt(
        DynamicUI.def(parsedJson, 'value', 0, appStoreData, index, originKeyData),
      ),
    );
  }
}
