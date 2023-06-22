part of 'Widgets_Imports.dart';
class CustomInputFormField extends StatefulWidget {
  const CustomInputFormField({
    Key? key,
    this.prefix,
    this.isNumber = false,
    this.controller,
    this.maxLines = 1,
    this.onSave,
    this.secure = false,
    this.hint = '',
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.onTap,
    this.isNext = true,
    this.maxLength,
    this.upperText,
    this.hasLabel = false,
    this.isRTL = false,
    this.icon,
    this.hintColor = Colors.grey,
    this.horizontalMargin = 0,
    this.verticalMargin = 7,
    this.multiLine = false,
    this.fillColor,
    this.textColor = Colors.black,
    this.labelColor,
    this.radius = 15,
    this.iconColor = Colors.white,
    this.enabledBorderColor,
    this.initialValue,
    this.enabled,
    this.isRequired,
    this.readOnly = false,
    this.focusedBorder = const Color(0xFF818181),
    this.autofillHints,
    this.labeltxt,
    this.onFieldSubmitted,
    this.image,
    this.isPassword, this.label,
  }) : super(key: key);

  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final VoidCallback? onTap;
  final String? labeltxt;
  final Function(String)? onSave, onChanged;
  final int? maxLines, maxLength;
  final IconData? icon;
  final Widget? image;
  final Widget? suffixIcon, prefix;
  final TextEditingController? controller;
  final String? upperText, initialValue, hint,label;
  final bool? hasLabel,
      isNext,
      isRTL,
      isPassword,
      multiLine,
      isRequired,
      secure,
      isNumber,
      enabled,
      readOnly;
  final double? horizontalMargin, radius, verticalMargin;
  final Color? enabledBorderColor,
      fillColor,
      iconColor,
      labelColor,
      textColor,
      hintColor,
      focusedBorder;
  final Iterable<String>? autofillHints;

  @override
  State<CustomInputFormField> createState() => _CustomInputFormFieldState();
}

class _CustomInputFormFieldState extends State<CustomInputFormField> {
  late bool _showPassword;

  @override
  void initState() {
    _showPassword = widget.secure!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(widget.radius!);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.verticalMargin!,
          horizontal: widget.horizontalMargin!),
      child: GestureDetector(
        child: TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          // onFieldSubmitted: widget.onFieldSubmitted??(value){
          //   print(value);
          // },
          // keyboardType: widget.multiLine!
          //     ? TextInputType.multiline
          //     : widget.isNumber!
          //     ? TextInputType.number
          //     : TextInputType.emailAddress,
          // autofillHints:  widget.autofillHints,
          //initialValue: widget.initialValue,
          onTap: widget.onTap,
          // readOnly:widget.readOnly! ,
          obscureText: _showPassword,
          onChanged: widget.onChanged,
          maxLength: widget.maxLength,
          textInputAction: widget.multiLine!
              ? TextInputAction.newline
              : widget.isNext!
                  ? TextInputAction.next
                  : TextInputAction.done,
          //enabled: widget.enabled,
          // buildCounter: (context,
          //     { required currentLength,
          //       required isFocused,
          //       maxLength}) =>
          // null,
          style: TextStyle(
              color: widget.textColor,
              fontSize: 20.r,
              ),
          decoration: InputDecoration(
            // label:widget.label ,
            fillColor: widget.fillColor ?? AppColors.white,
            // filled: true,
            hintStyle: TextStyle(color: widget.hintColor??AppColors.primary, fontSize: 18.r),
            // labelStyle: TextStyle(color: widget.labelColor??AppColors.primary),
            counterStyle:
                const TextStyle(fontSize: 10, color: Colors.transparent),
            // prefix: widget.prefix,
            prefixIcon: widget.image,
            suffixIcon: widget.isPassword == true
                ? IconButton(
                    padding: const EdgeInsets.all(0),
                    icon:
                       Image.asset(
                         _showPassword ? Res.showPass:Res.hidePass,
                      width: 25.w,
                      height: 25.h,
                         color: AppColors.labelTextField,
                          ),
                    onPressed: () => setState(() {
                      _showPassword = !_showPassword;
                    }),
                    style: ButtonStyle(),
                  )
                : null,
            labelStyle: TextStyle(color: AppColors.labelTextField),

            labelText: widget.labeltxt,
            hintText: widget.hint,
            contentPadding: EdgeInsets.symmetric(
                horizontal: 15, vertical: widget.maxLines == 1 ? 10 : 15),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: borderRadius,
            //   borderSide:  BorderSide(color: AppColors.secondary),
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: borderRadius,
            //   borderSide:  BorderSide(color:AppColors.secondary ),
            // ),
            errorBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: const BorderSide(color: Colors.red),
            ),
            // focusedErrorBorder: OutlineInputBorder(
            //   borderRadius: borderRadius,
            //   borderSide: const BorderSide(color: Colors.grey),
            // ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: borderRadius,
            //   borderSide: const BorderSide(color: Colors.grey),
            // )
          ),
        ),
      ),
    );
  }
}
