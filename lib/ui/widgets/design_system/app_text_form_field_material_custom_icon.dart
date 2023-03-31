import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppTextFormFieldMaterialCustomIcon extends FormField<String> {
  final TextEditingController? controller;

  AppTextFormFieldMaterialCustomIcon({
    this.controller,
    Key? key,
    String? labelText,
    String? hintText,
    String? initialValue,
    FocusNode? focusNode,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    bool autoValidate = false,
    bool enabled = true,
    int maxLength = 1000,
    int minLength = 1,
    int? maxLines = 1,
    bool selected = false,
    Widget? trailingIcon,
    Widget? leadingIcon,
    Widget? prefix,
    double? borderRadius,
    Color? fillColor,
    double? elevation,
    TextInputType keyboardType = TextInputType.text,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    AutovalidateMode? autoValidateMode,
    bool obscureText = true,
    bool isPassword = false,
    bool inputRequired = false,
    Color lablelColor = Colors.black45,
    onchange,
    onTapWidget,
    onSubmitWidget,
  }) : super(
            key: key,
            validator: validator,
            onSaved: onSaved,
            initialValue: initialValue,
            autovalidateMode: autoValidateMode,
            builder: (FormFieldState stateOld) {
              AppTextFormFieldMaterialCustomIconState state =
                  stateOld as AppTextFormFieldMaterialCustomIconState;

              return Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: onTapWidget,
                      child: Stack(
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: elevation ?? 0,
                            child: TextField(
                              keyboardType: keyboardType,
                              controller: state.controller,
                              obscureText: isPassword ? obscureText : false,
                              style: state.context.textTheme.titleSmall!
                                  .copyWith(color: Colors.black, height: 1.5),
                              onChanged: (text) {
                                state.didChange(text);
                                if (onchange != null) onchange(text);
                              },
                              onSubmitted: (value) {
                                if (onSubmitWidget != null) {
                                  onSubmitWidget(value);
                                }
                              },
                              cursorColor: Colors.black38,
                              maxLength: maxLength,
                              maxLines: maxLines,
                              decoration: const InputDecoration()
                                  .applyDefaults(Theme.of(state.context)
                                      .inputDecorationTheme)
                                  .copyWith(
                                    hintText: hintText ?? "",
                                    filled: true,
                                    labelText: labelText,
                                    counterText: "",
                                    hintStyle: state
                                        .context.textTheme.bodyMedium!
                                        .copyWith(
                                            color: const Color(0xffC4C4C4)),
                                    labelStyle: state
                                        .context.textTheme.subtitle2!
                                        .copyWith(color: Colors.black),
                                    floatingLabelBehavior:
                                        floatingLabelBehavior,
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1)),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black54, width: 1)),
                                    errorBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red, width: 1)),
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black54, width: 1)),
                                    disabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffF5F5F5),
                                            width: 1)),
                                    fillColor: fillColor ?? Colors.transparent,
                                    contentPadding: const EdgeInsets.only(
                                      top: 8.0,
                                      bottom: 4.0,
                                    ),
                                    suffixIcon: trailingIcon != null
                                        ? Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12),
                                            child: InkResponse(
                                                onTap: () {
                                                  obscureText = !obscureText;
                                                  state.setState(() {});
                                                },
                                                child: isPassword && obscureText
                                                    ? SvgPicture.asset(Assets
                                                        .icons.icHidePassword)
                                                    : isPassword && !obscureText
                                                        ? SvgPicture.asset(
                                                            Assets.icons.icEye)
                                                        : trailingIcon),
                                          )
                                        : null,
                                    prefixIcon: leadingIcon != null
                                        ? Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 12),
                                            child: leadingIcon)
                                        : null,
                                    errorText: state.errorText,
                                    // errorText: "state.errorText",
                                    enabled: enabled,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            });

  @override
  FormFieldState<String> createState() =>
      AppTextFormFieldMaterialCustomIconState();
}

class AppTextFormFieldMaterialCustomIconState extends FormFieldState<String> {
  @override
  AppTextFormFieldMaterialCustomIcon get widget =>
      super.widget as AppTextFormFieldMaterialCustomIcon;

  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      controller = widget.controller!;
    } else {
      controller = TextEditingController();
    }
    controller.addListener(() {
      if (mounted) {
        didChange(controller.text);
        validate();
      }
    });
  }
}
