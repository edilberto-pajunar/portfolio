import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/utils/button.dart';
import 'package:portfolio/utils/contact_card.dart';
import 'package:portfolio/utils/input_form.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _subjectController = TextEditingController();
    final TextEditingController _budgetController = TextEditingController();
    final TextEditingController _messageController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _nameController.dispose();
      _emailController.dispose();
      _subjectController.dispose();
      _budgetController.dispose();
      _messageController.dispose();
    }

    final Size size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(
              color: tSecondaryColor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RichText(
            text: TextSpan(
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: "Let's Discuss Your "),
                  TextSpan(
                    text: "Project",
                    style: TextStyle(
                      color: tSecondaryColor,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Let's make something new, different and more meaningful or make thing more visual or conceptual",
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Column(
                children: [
                  ContactCard(
                      title: "Call",
                      icon: Icons.call,
                      subtitle: "+639182923159"),
                  SizedBox(
                    height: 50,
                  ),
                  ContactCard(
                      title: "Gmail",
                      icon: FontAwesomeIcons.google,
                      subtitle: "pajunar0@gmail.com"),
                  SizedBox(
                    height: 50,
                  ),
                  ContactCard(
                      title: "Discord",
                      icon: FontAwesomeIcons.discord,
                      subtitle: "choi#3368"),
                ],
              ),
              SizedBox(
                width: 200,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InputForm(
                          text: "Name",
                          controller: _nameController,
                        ),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        InputForm(
                          text: "Email",
                          controller: _emailController,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InputForm(
                          text: "Subject",
                          controller: _subjectController,
                        ),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        InputForm(
                          text: "Subject",
                          controller: _budgetController,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputForm(
                      text: "Message",
                      controller: _messageController,
                      maxLines: 7,
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      widthFactor: 5.70,
                      alignment: Alignment.bottomRight,
                      child: Button(
                        text: "Submit Message",
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
