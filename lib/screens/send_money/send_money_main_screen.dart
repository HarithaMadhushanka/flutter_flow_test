import 'package:flutter/material.dart';
import 'package:flutter_flow_test/common_components/checkbox_component/checkbox_component.dart';
import 'package:flutter_flow_test/common_components/custom_nav_bar/custom_navigation_bar.dart';
import 'package:flutter_flow_test/common_components/custom_textformfield/custom_textformfield.dart';
import 'package:flutter_flow_test/common_components/options_component/options_component.dart';
import 'package:flutter_flow_test/common_components/provider_select_component/provider_select_component.dart';

class SendMoneyMainScreen extends StatefulWidget {
  const SendMoneyMainScreen({super.key});

  @override
  State<SendMoneyMainScreen> createState() => _SendMoneyMainScreenState();
}

class _SendMoneyMainScreenState extends State<SendMoneyMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              /// Background color
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      const Color(0xFF726da3),
                      const Color(0xFF726da3).withOpacity(0.6),
                      const Color(0xFF726da3).withOpacity(0.2),
                    ],
                    stops: const [
                      0.1,
                      0.9,
                      1,
                    ],
                  ),
                ),
              ),

              /// Options - Mobile Money / Wallet Transfer
              const Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OptionsComponent(
                      text: "Mobile Money",
                      isActive: false,
                      iconData: Icons.phone_android_rounded,
                    ),
                    OptionsComponent(
                      text: "Wallet Transfer",
                      isActive: true,
                      iconData: Icons.people,
                    ),
                  ],
                ),
              ),

              /// Contents
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Color(0xFFe4edf0),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: [
                        /// Provider select component
                        ProviderSelectComponent(),

                        /// Checkbox Components
                        const Column(
                          children: [
                            Row(
                              children: <CheckBoxComponent>[
                                CheckBoxComponent(
                                  isSelected: true,
                                  title: 'My Mobile Number',
                                ),
                                CheckBoxComponent(
                                  isSelected: false,
                                  title: 'Other Number',
                                ),
                              ],
                            ),
                            CheckBoxComponent(
                              isSelected: false,
                              title: 'Save Beneficiary',
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        /// Mobile Number TextFormField
                        const CustomTextFormField(
                          isIconNeeded: true,
                          hintText: 'Mobile Number',
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        /// Divider
                        const Divider(
                          height: 1,
                          thickness: 1,
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        /// Name Component
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Andrew Cabanan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        /// Divider
                        const Divider(
                          height: 1,
                          thickness: 1,
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        /// Amount TextFormField
                        const CustomTextFormField(
                          isIconNeeded: false,
                          hintText: 'Enter Amount',
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        /// Remarks TextFormField
                        const CustomTextFormField(
                          isIconNeeded: false,
                          hintText: 'Remarks',
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "Send Money",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomNavigationBar(
        currentIndex: 2,
      ),
    );
  }
}
