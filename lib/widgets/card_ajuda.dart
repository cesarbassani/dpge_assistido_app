import 'package:dpge_assistido_app/utils/ui/colors_app.dart';
import 'package:dpge_assistido_app/utils/ui/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class CardAjuda extends StatelessWidget {
  final String? image;
  final String title;
  final String? subtitle;
  final Icon? iconChecked;
  final Icon? iconUnchecked;
  final Color? colorChecked;
  final Color? colorUnchecked;
  final Color? colorBorderUnchecked;
  final bool isChecking;

  const CardAjuda({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.iconChecked,
    this.colorChecked,
    this.colorUnchecked,
    this.iconUnchecked,
    this.colorBorderUnchecked,
    this.isChecking = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: ListTile(
          trailing: isChecking
              ? RoundCheckBox(
                  uncheckedColor: colorUnchecked ?? Colors.grey[200],
                  uncheckedWidget: iconUnchecked,
                  checkedWidget: iconChecked,
                  checkedColor: colorChecked,
                  borderColor: colorBorderUnchecked ?? Colors.grey[300],
                  size: 30,
                  onTap: (bool? value) {},
                )
              : null,
          leading: image != null
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorsApp.i.primary,
                  ),
                  width: 45,
                  height: 45,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: FittedBox(
                      fit: BoxFit.values[1],
                      child: Image.asset(image!),
                    ),
                  ),
                )
              : null,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 5),
            child: Text(
              title,
              style: subtitle != null
                  ? TextStyles.i.textBold.copyWith(fontSize: 14)
                  : TextStyles.i.textRegular.copyWith(fontSize: 14),
            ),
          ),
          subtitle: subtitle != null
              ? Text(
                  subtitle!,
                  style: TextStyles.i.textRegular.copyWith(fontSize: 14),
                )
              : null,
        ),
      ),
    );
  }
}
