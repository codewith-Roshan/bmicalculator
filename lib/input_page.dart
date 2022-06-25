import 'dart:ffi';

import 'package:bmicalculator/enum_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enum_file.dart';
import 'result_page.dart';
import 'package:bmicalculator/result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard = Gender.unselected;
  
   int height =150 ;
   int weight = 50;
   int age = 30;



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',
        
       
         
        ),
        centerTitle: true,
        elevation: 20.0,
        
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )
          ),
        ),
        leading:  Icon(Icons.menu),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.heart_broken),
        ],
          
      ),
      body: Column(
        children: [
              Expanded(
              child:
              Row(
                children: [
                 Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                        selectedCard = Gender.male;
                      });
                      },
                      
  
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              color: Colors.white,
                              size: 95,
                            
                            ),
                             SizedBox(
                              height: 10,
                            ),
                            Text('Male',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                    
                            ),)
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard == Gender.male? Colors.cyan:Colors.blueAccent,

                        ),
                      ),
                    ),
                  ), 
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                        selectedCard = Gender.female;
                      });
                      },

                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              color: Colors.white,
                              size: 95,
                            
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Female',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                    
                            ),),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: selectedCard == Gender.female? Colors.pink:Colors.blueAccent,
                        ),
                      ),
                    ),
                  ), 
                  
                  
                ],
              ),
              ),
              Expanded(
              child:
              Row(
                children: [
                 Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          Text(
                            'HEIGHT',
                            
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                          ),
                          ),
                          Row(
                            
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline:TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('cm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                              ),
                              ),
                              
                            ],
                          ),
                         Slider(
                          value: height.toDouble(),
  min: 120.0,
  max: 220.0,
  activeColor: Colors.purple,
  inactiveColor: Colors.purple.shade100,
  thumbColor: Colors.pink,
  
  onChanged: (double newValue) {
    setState(() {
      height = newValue.round();
    });
  },
)
                                

                          
                        ],
                      ),

                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                    ),
                  ), 
                
                  
                  
                ],
              ),
              ),
              Expanded(
              child:
              Row(
                children: [
                 Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                          ),

                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap:() {
                                  setState(() {
                                    weight++;
                                  });
          
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                               GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });


                                },
                                 child: CircleAvatar(
                                                           backgroundColor: Colors.white,
                                                           radius: 30,
                                                           child: Icon(
                                                             FontAwesomeIcons.minus,
                                                             color: Colors.lightBlue,
                                                           ),
                                                         ),
                               ),
                            ],
                          ),
                            
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                    ),
                  ), 
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            
                          ),
                          ),
                          Text('$age',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                 onTap:() {
                                  setState(() {
                                    age++;
                                  });
                                  
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                               GestureDetector(
                                 onTap:() {
                                  setState(() {
                                    
                                    age--;
                                  });
                                 
                                },
                                 child: CircleAvatar(
                                                           backgroundColor: Colors.white,
                                                           radius: 30,
                                                           child: Icon(
                                                             FontAwesomeIcons.minus,
                                                             color: Colors.lightBlue,
                                                           ),
                                                         ),
                               ),
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                    ),
                  ), 
                  
                  
                ],
              ),
              ),
              GestureDetector(
                onTap: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(
                   
                  ),
                  )
                  );
              
                },
                child: Center(
                  
                  child: Container(
                    color: Color.fromARGB(255, 190, 90, 32),
                    width: double.infinity,
                    height: 80,
                    child: Center(
                      child: Text(
                        'ENTER',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          
                          fontSize: 30,
                          color: Colors.white,
              
                        ),
                      ),
                    ),
                  ),
                ),
              )
        ],
      
    
    ));
}
}

         
      
      
      
    
  
