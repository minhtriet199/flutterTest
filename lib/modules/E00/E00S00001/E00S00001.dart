import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_app/core/const/AppColors.dart';
import 'package:my_new_app/core/widgets/social_icon.dart';

class E00S00001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              Positioned(
                  left: -60,
                  top: -60,
                  child: SvgPicture.asset('assets/images/oval.svg')),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 75)),
                      Container(
                        width: 700,
                        constraints:
                            BoxConstraints(minHeight: 100, maxHeight: 567),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 75),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: appcolor.primaryColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 60),
                            Text(
                              'ĐĂNG NHẬP',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 50),
                            _buildPasswordField('Tên đăng nhập'),
                            SizedBox(height: 10),
                            _buildPasswordField('Mật khẩu'),
                            SizedBox(height: 75),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff03acf2),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 100),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text('ĐỔI MẬT KHẨU',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 100),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(children: [
                              SvgPicture.asset('assets/images/group.svg'),
                            ]),
                            SizedBox(height: 50),
                            _buildSocialMediaIcons(),
                            SizedBox(height: 10),
                            _buildCountrySelector(),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Widget _buildPasswordField(String label) {
    bool _isObscured = true;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return TextField(
          obscureText: _isObscured,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscured ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff03acf2),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff03acf2),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSocialMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        social_icon(svgLink: 'assets/images/social-facebook.svg'),
        social_icon(svgLink: 'assets/images/social-linkedin.svg'),
        social_icon(svgLink: 'assets/images/social-twitter.svg'),
        social_icon(svgLink: 'assets/images/social-instagram.svg'),
      ]
          .expand((widget) => [
                widget,
                const SizedBox(width: 15),
              ])
          .toList(),
    );
  }

  Widget _buildCountrySelector() {
    return Container(
      child: DropdownButton<String>(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        value: 'Việt Nam',
        icon: Icon(Icons.arrow_downward),
        iconSize: 17,
        style: TextStyle(color: Colors.black),
        underline: Container(),
        onChanged: (String? newValue) {},
        items: <String>['Việt Nam', 'USA', 'Japan']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: <Widget>[
                Icon(Icons.language),
                SizedBox(width: 10),
                Text(value),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
