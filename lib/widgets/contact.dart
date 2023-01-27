import 'package:flutter/material.dart';
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
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _budgetController = TextEditingController();
    final TextEditingController _messageController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _nameController.dispose();
      _emailController.dispose();
      _phoneController.dispose();
      _budgetController.dispose();
      _messageController.dispose();
    }

    return Center(
      child: Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(color: Colors.green),
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
                    style: TextStyle(color: Colors.green),
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
                      subtitle: "_639182923159"),
                  SizedBox(
                    height: 50,
                  ),
                  ContactCard(
                      title: "Call",
                      icon: Icons.call,
                      subtitle: "_639182923159"),
                  SizedBox(
                    height: 50,
                  ),
                  ContactCard(
                      title: "Call",
                      icon: Icons.call,
                      subtitle: "_639182923159"),
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
                      children: [
                        InputForm(
                          text: "Name",
                          controller: _nameController,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InputForm(
                          text: "Name",
                          controller: _nameController,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        InputForm(
                          text: "Name",
                          controller: _nameController,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InputForm(
                          text: "Name",
                          controller: _nameController,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputForm(
                      text: "Message",
                      controller: _messageController,
                      width: 880,
                      maxLines: 7,
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
