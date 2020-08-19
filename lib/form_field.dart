import 'package:common_fields/form_output.dart';
import 'package:common_fields/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class FormWidget extends StatefulWidget {
  List<FieldData> data;
  var labelMargin;
  FormWidget({
    this.data,
    this.labelMargin,
  });
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  List<Map<String, dynamic>> users=[{}];

  @override
  void initState() {
    // TODO: implement initState
    for(int i=0;i<widget.data.length;i++){
      if (widget.data[i].isRadio){
        users[0][widget.data[i].FieldName]=widget.data[i].CustomRadioField.groupValue;
      }else if (widget.data[i].isCheckbox){
        users[0][widget.data[i].FieldName]=widget.data[i].CustomCheckBox.value;
      }else if(widget.data[i].isText){
        users[0][widget.data[i].FieldName]='';
      }else if(widget.data[i].isPaymentCard){
        users[0][widget.data[i].FieldName]='';
      }
    }
    print(users);
    //    users[0]['Checkbox 2']=false;
    //    print(users[0]['Email']);
    //    print(users);
    super.initState();
  }


  void AssignValuesOnChanged(value,int i){
    users[0][widget.data[i].FieldName]=value;
    print(users[0][widget.data[i].FieldName]);
  }
//Todo:Uncomment this for using for loop
  //  formSubmit() {
  //    if (_formKey.currentState.validate()) {
  //      _formKey.currentState.save();
  //      print('Successful');
  //      print(users);
  //
  //    } else {
  //      print('Not Successful');
  //    }
  //  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Todo:Uncomment this for using for loop instead of Switch case
            //Todo: Comment the Below for loop 'SwitchCondition' code when we want to use for loop
            //            for (int i = 0; i < widget.data.length; i++)
            //              if (widget.data[i].isText)
            //                Column(
            //                  crossAxisAlignment: CrossAxisAlignment.start,
            //                  children: <Widget>[
            //                    if (widget.data[i].label != '')
            //                      Container(
            //                        child: Text(
            //                          widget.data[i].label,
            //                          style: AppTheme.ptserif_font_14_white,
            //                        ),
            //                      ),
            //                    Container(
            //                      child: CommonInputField(
            //                        hintText: widget.data[i].CustomTextField.hintText,
            //                        isEmail: widget.data[i].CustomTextField.isEmail,
            //                        isNumber: widget.data[i].CustomTextField.isNumber,
            //                        isPassword: widget.data[i].CustomTextField.isPassword,
            //                        fillColor: widget.data[i].CustomTextField.fillColor,
            //                        validator: widget.data[i].CustomTextField.validator,
            ////                        onSaved: (value){
            ////                          AssignValuesOnSaved(value,i);
            ////                        },
            //                        onChanged: (value){
            //                          AssignValuesOnChanged(value,i);
            //                        },
            //                        maxLines: widget.data[i].CustomTextField.maxLines,
            //                      ),
            //                    )
            //                  ],
            //                )
            //              else if (widget.data[i].isRadio)
            //                Column(
            //                    crossAxisAlignment: CrossAxisAlignment.start,
            //                    children: <Widget>[
            //                      if (widget.data[i].label != '')
            //                        Container(
            //                          child: Text(
            //                            widget.data[i].label,
            //                            style: AppTheme.ptserif_font_14_white,
            //                          ),
            //                        ),
            //                      Container(
            //                        child: CommonRadioButton(
            //                            value1: widget.data[i].CustomRadioField.value1,
            //                            value2: widget.data[i].CustomRadioField.value2,
            //                            groupValue: widget.data[i].CustomRadioField.groupValue,
            //                            onChanged:(value) {
            //                              setState(() {
            //                                widget.data[i].CustomRadioField.groupValue = value;
            //                                print(widget.data[i].CustomRadioField.groupValue);
            //                                AssignValuesOnChanged(value, i);
            //                              });
            //                            }
            //                        ),
            //                      ),
            //                    ])
            //              else if (widget.data[i].isCheckbox)
            //                  Column(
            //                    crossAxisAlignment: CrossAxisAlignment.start,
            //                    children: <Widget>[
            //                      if (widget.data[i].label != '')
            //                        Container(
            //                          child: Text(
            //                            widget.data[i].label,
            //                            style: AppTheme.ptserif_font_14_white,
            //                          ),
            //                        ),
            //                      Container(
            //                        child: CommonCheckBox(
            //                          label: widget.data[i].CustomCheckBox.label,
            //                          CheckValue: widget.data[i].CustomCheckBox.value,
            //                          onChanged: (value){
            //                            setState(() {
            //                              widget.data[i].CustomCheckBox.value=value;
            //                              AssignValuesOnChanged(value, i);
            //                            });
            //                          },
            //                        ),
            //                      ),
            //                    ],
            //                  )
            //                else if(widget.data[i].isPaymentCard)
            //                    Container(
            //                      child: Center(
            //                        child: Wrap(
            //                          children: <Widget>[
            //                            for(int j=0;j<widget.data[i].CustomPaymentCard.labels.length;j++)
            //                              PayGatewayCard(
            //                                label: widget.data[i].CustomPaymentCard.labels[j],
            //                                callback: (){
            //                                  String PWay=widget.data[i].CustomPaymentCard.labels[j];
            //                                  print(PWay);
            //                                  AssignValuesOnChanged(PWay, i);
            //                                },
            //                              ),
            //                          ],
            //                        ),
            //                      ),
            //                    )
            //                  else if(widget.data[i].isSubmit)
            //                      SubmitButton(
            //                        fkey: _formKey,
            //                        mode: widget.data[i].SubmitButtonText,
            //                        submit: formSubmit,
            //                      )
            //                    else if(widget.data[i].isHeading)
            //                      Text(
            //                        widget.data[i].label,
            //                        style: AppTheme.ptserif_font_24_white,
            //                      ),
            for(int i=0;i<widget.data.length;i++)
              SwitchCondition(
                switchdata: widget.data[i],
                users: users,
                formkey: _formKey,
                labelMargin:widget.labelMargin,
                callback: (value){
                  users[0][widget.data[i].FieldName]=value;
                  print(users[0][widget.data[i].FieldName]);
                },
              ),
          ],
        ),
      ),
    );
  }
}

class SwitchCondition extends StatefulWidget {
  var users,switchdata,formkey,labelMargin;
  Function callback;
  SwitchCondition({
    this.switchdata,
    this.users,
    this.formkey,
    this.callback,
    this.labelMargin,
  });
  @override
  _SwitchConditionState createState() => _SwitchConditionState();
}

class _SwitchConditionState extends State<SwitchCondition> {

  formSubmit() {
    if (widget.formkey.currentState.validate()) {
      widget.formkey.currentState.save();
      print('Successful');
      print(widget.users);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FormOutput(
              data: widget.users,
            )),
      );
    } else {
      print('Not Successful');
    }
  }
  @override
  Widget build(BuildContext context) {
    switch (widget.switchdata.type.toString().toLowerCase()) {
      case 'text':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (widget.switchdata.label != '')
              Container(
                margin: widget.labelMargin,
                child: Text(
                  widget.switchdata.label,
                  style: AppTheme.font_14,
                ),
              ),
            Container(
              child: CommonInputField(
                initialValue: widget.switchdata.CustomTextField.initialValue,
                hintText: widget.switchdata.CustomTextField.hintText,
                isEmail: widget.switchdata.CustomTextField.isEmail,
                isNumber: widget.switchdata.CustomTextField.isNumber,
                isPassword: widget.switchdata.CustomTextField.isPassword,
                fillColor: widget.switchdata.CustomTextField.fillColor,
                validator: widget.switchdata.CustomTextField.validator,
                onSaved: (value){
                  widget.callback(value);
                },
                onChanged: (value){
                  widget.callback(value);
                },
                maxLines: widget.switchdata.CustomTextField.maxLines,
              ),
            )
          ],
        );
        break;
      case 'checkbox':
        return Container(
          margin: EdgeInsets.only(top: 27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (widget.switchdata.label != '')
                Container(
                  child: Text(
                    widget.switchdata.label,
                    style: AppTheme.font_14,
                  ),
                ),
              Container(
                child: CommonCheckBox(
                  label: widget.switchdata.CustomCheckBox.label,
                  CheckValue: widget.switchdata.CustomCheckBox.value,
                  onChanged: (value){
                    setState(() {
                      widget.switchdata.CustomCheckBox.value=value;
                      widget.callback(value);
                    });
                  },
                ),
              ),
            ],
          ),
        );
        break;
      case 'radio':
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (widget.switchdata.label != '')
                Container(
                  margin: widget.labelMargin,
                  child: Text(
                    widget.switchdata.label,
                    style: AppTheme.font_14,
                  ),
                ),
              Container(
                child: CommonRadioButton(
                    value1: widget.switchdata.CustomRadioField.value1,
                    value2: widget.switchdata.CustomRadioField.value2,
                    groupValue:widget.switchdata.CustomRadioField.groupValue,
                    onChanged:(value) {
                      setState(() {
                        widget.switchdata.CustomRadioField.groupValue = value;
                        print(widget.switchdata.CustomRadioField.groupValue);
                        widget.callback(value);
                      });
                    }
                ),
              ),
            ]);
        break;
      case 'paymentgateway':
        return Container(
          child: Center(
            child: Wrap(
              children: <Widget>[
                for(int j=0;j<widget.switchdata.CustomPaymentCard.labels.length;j++)
                  PayGatewayCard(
                    label: widget.switchdata.CustomPaymentCard.labels[j],
                    callback: (){
                      String PWay=widget.switchdata.CustomPaymentCard.labels[j];
                      print(PWay);
                      widget.callback(PWay);
                    },
                  ),
              ],
            ),
          ),
        );
        break;
      case 'submitbutton':
        return  Container(
          margin: EdgeInsets.only(top: 68.0),
          child: SubmitButton(
            fkey: widget.formkey,
            mode: widget.switchdata.SubmitButtonText,
            submit: formSubmit,
          ),
        );
        break;
      case 'heading':
        return Container(
          margin: EdgeInsets.only(top: 70),
          child: Text(
            widget.switchdata.label,
            style: AppTheme.font_24,
          ),
        );
        break;
      default:
        print('Invalid type: ${widget.switchdata.type}');
    }
  }
}




class FieldData {
  String label, FieldName, type, SubmitButtonText;
  bool isText, isRadio, isCheckbox, isPaymentCard,isSubmit,isHeading;
  InputField CustomTextField;
  RadioField CustomRadioField;
  CheckBoxField CustomCheckBox;
  PaymentCard CustomPaymentCard;
  FieldData({
    @required this.type,
    @required this.FieldName,
    this.label = '',
    this.isText = false,
    this.isRadio = false,
    this.isCheckbox = false,
    this.isPaymentCard=false,
    this.isSubmit=false,
    this.isHeading,
    this.CustomTextField,
    this.CustomRadioField,
    this.CustomCheckBox,
    this.CustomPaymentCard,
    this.SubmitButtonText = '',
  });
}

class InputField {
  String  hintText,initialValue;
  Color fillColor;
  Function validator;
  bool isEmail, isPassword, isNumber;
  int maxLines;
  InputField({
    this.initialValue,
    this.hintText,
    this.fillColor = const Color(0xFFEAEAEA),
    this.validator,
    this.isEmail = false,
    this.isNumber = false,
    this.isPassword = false,
    this.maxLines = 1,
  });
}

class RadioField {
  String value1, value2, groupValue;
  RadioField({
    this.value1,
    this.value2,
    this.groupValue,
  });
}

class CheckBoxField {
  String label;
  bool value;
  CheckBoxField({
    this.label,
    this.value,
  });
}

class PaymentCard{
  List labels;
  PaymentCard({
    this.labels,
  });
}

class SubmitButton extends StatefulWidget {
  GlobalKey<FormState> fkey;
  String mode;
  Function submit;
  SubmitButton({
    this.fkey,
    this.mode,
    this.submit,
  });
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: widget.submit,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 70),
            decoration: AppTheme.button_styles,
            child: Text(
              widget.mode,
              style: AppTheme.font_14,
            ),
          )),
    );
  }
}

class CommonInputField extends StatefulWidget {
  String hintText,initialValue;
  Color fillColor;
  Function validator;
  Function onSaved,onChanged;
  final bool isEmail, isPassword, isNumber;
  int maxLines;
  CommonInputField({
    this.hintText,
    this.initialValue,
    this.fillColor = const Color(0xFFEAEAEA),
    this.validator,
    this.onSaved,
    this.onChanged,
    this.isEmail = false,
    this.isPassword = false,
    this.isNumber = false,
    this.maxLines = 1,
  });
  @override
  _CommonInputFieldState createState() => _CommonInputFieldState();
}

class _CommonInputFieldState extends State<CommonInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppTheme.hint_style,
            contentPadding: EdgeInsets.all(15.0),
            fillColor: widget.fillColor,
            filled: true,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.red, width: 2.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.red, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xFFFAFAFA), width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xFFFAFAFA), width: 1.0),
            )),
        initialValue: widget.initialValue,
        obscureText: widget.isPassword ? true : false,
        cursorColor: Color(0xFF848484),
        validator: widget.validator,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        maxLines: widget.maxLines,
        inputFormatters: widget.isNumber? <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ]:[],
        keyboardType: widget.isEmail
            ? TextInputType.emailAddress
            : widget.isNumber ? TextInputType.phone : TextInputType.text,
      ),
    );
  }
}

class CommonRadioButton extends StatefulWidget {
  String value1, value2, groupValue;
  Function onChanged;
  CommonRadioButton({this.value1, this.value2, this.groupValue,this.onChanged});
  @override
  _CommonRadioButtonState createState() => _CommonRadioButtonState();
}

class _CommonRadioButtonState extends State<CommonRadioButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: SizedBox(
              height: 20,
              width: 20,
              child: Radio(
                value: widget.value1,
                groupValue: widget.groupValue,
                onChanged: widget.onChanged,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 0, 40.0, 0.0),
            child: Text(
              widget.value1,
              style: AppTheme.font_14,
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: Radio(
              value: widget.value2,
              groupValue: widget.groupValue,
              onChanged: widget.onChanged,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0),
            child: Text(
              widget.value2,
              style: AppTheme.font_14,
            ),
          )
        ],
      ),
    );
  }
}

class CommonCheckBox extends StatefulWidget {
  String label;
  bool CheckValue;
  Function onChanged;
  CommonCheckBox({
    this.label,
    this.CheckValue,
    this.onChanged,
  });
  @override
  _CommonCheckBoxState createState() => _CommonCheckBoxState();
}

class _CommonCheckBoxState extends State<CommonCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Checkbox(
            value: widget.CheckValue,
            onChanged: widget.onChanged,
          ),
          Container(
            child: Text(
              widget.label,
              style: AppTheme.font_14,
            ),
          )
        ],
      ),
    );
  }
}

class PayGatewayCard extends StatelessWidget {
  String label;
  Function callback;
  PayGatewayCard({this.label,this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 90,
      margin: EdgeInsets.only(top: 20.0),
      child: GestureDetector(
        onTap: callback,
        child: Card(
          child:  Center(
            //            child: Image.asset('assets/images/'+label.toLowerCase()+'.png',width:100.0,),
            child: Text(
              label,
            ),
          ),
        ),
      ),
    );
  }
}