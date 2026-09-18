import 'package:bmi_app/widgets/gender_widget.dart';
import 'package:bmi_app/widgets/info_user_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchBtn = false;
  bool ismale = true;
  int hight = 150 ;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        elevation: 100,
        backgroundColor: Color(0xff1C2135),
        centerTitle: true,
        leading: Switch(
          value: switchBtn,
          onChanged: (value) {
            switchBtn = value;
            setState(() {});
          },
          activeColor: Color(0xff3D81E8),
          inactiveThumbColor: Colors.grey,
        ),
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 25,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  GenderWidget(
                   
                    isSelected: ismale,
                     onTap: (){
                      ismale = true;
                      setState(() {
                        
                      });
                     },
                    image: 'assets/images/male-icon.png',
                    title: 'Male',
                  ),
                  GenderWidget(
                
                    isSelected: !ismale,
                     onTap: (){
                      ismale = false;
                      setState(() {
                        
                      });
                     },
                    image: 'assets/images/female-icon.png',
                    title: 'Female',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8B8C9E),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          hight.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      min: 50,
                      max: 250,
                      activeColor: Color(0xffE83D67),
                      value: hight.toDouble(),
                      onChanged: (value) {
                        hight = value.toInt();
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  InfoUserWidget(
                    title: 'Weight',
                    value: weight,
                    add: () {
                     if( weight <= 100) {
                       weight++;
                      setState(() {
                        
                      });
                     } 
                      
                    },
                    remove: () {
                     if(weight >= 2){
                       weight--;
                      setState(() {
                        
                      });
                     }
                    },
                  ),
                  InfoUserWidget(
                    title: 'Age',
                    value: age,
                    add: () {
                      if (age <= 50){
                        age++;
                        setState(() {
                          
                        });
                      }
                    },
                    remove: () {
                      if(age >=1){
                        age--;
                        setState(() {
                          
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {},
        color: Color(0xffE83D67),
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Text(
          'Calculate',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}



