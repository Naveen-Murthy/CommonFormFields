import 'package:common_fields/form_field.dart';
import 'package:common_fields/utils/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CommonForm(),
    );
  }
}



class CommonForm extends StatefulWidget {
  @override
  _CommonFormState createState() => _CommonFormState();
}

class _CommonFormState extends State<CommonForm> {

  var data = <FieldData>[
    FieldData(
      isHeading: true,
      type: 'heading',
      label: '1.'+Strings.your_details,
    ),
    FieldData(
      label: 'Email',
      FieldName: 'Email',
      type: 'text',
      isText: true,
      CustomTextField: InputField(
        initialValue: 'murthy@divami.com',
        validator: (value){
          var regex = RegExp(r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$');
          var found = regex.hasMatch(value);
          return found ? null : "Enter valid mail address";
        },
        isEmail: true,
      ),
    ),
    FieldData(
      isText: true,
      type: 'text',
      label: 'Full Name',
      FieldName: 'Full Name',
      CustomTextField: InputField(
      ),
    ),
    FieldData(
      isText: true,
      type: 'text',
      label: 'Phone Number',
      FieldName: 'Phone Number',
      CustomTextField: InputField(
        isNumber: true,
        validator: (value){
          if(value.isEmpty)return 'Please enter valid number';
          return null;
        },
      ),
    ),
    FieldData(
      isRadio: true,
      type: 'radio',
      label: Strings.marital_status,
      FieldName: Strings.marital_status,
      CustomRadioField: RadioField(
        value1: Strings.single,
        value2: Strings.married,
        groupValue: Strings.single,
      ),
    ),
    FieldData(
        isText: true,
        type: 'text',
        label: Strings.notes_on_delivery,
        FieldName: Strings.notes_on_delivery,
        CustomTextField: InputField(
          maxLines: 5,
        )
    ),
//    FieldData(
//      isPaymentCard:true,
//      type: 'paymentgateway',
//      label: Strings.select_payment_gateway,
//      FieldName: Strings.select_payment_gateway,
//      CustomPaymentCard:PaymentCard(
//        labels: [Strings.amazonpay, Strings.phonepay, Strings.paytm],
//      ),
//    ),
    FieldData(
      isCheckbox: true,
      type: 'checkbox',
      FieldName: Strings.agree_t_and_c,
      CustomCheckBox: CheckBoxField(
        label: Strings.agree_t_and_c,
        value: false,
      ),
    ),
    FieldData(
      isSubmit:true,
      type: 'submitbutton',
      SubmitButtonText: Strings.submit,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Common Form'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
        child: Column(
          children: <Widget>[
            FormWidget(
              data: data,
              labelMargin: EdgeInsets.fromLTRB(0, 30, 0, 10),
            ),
          ],
        ),
      ),
    );
  }
}

