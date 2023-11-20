import 'package:flutter/material.dart';

class messenger extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
           return Scaffold(
          backgroundColor: Colors.white,
            appBar: AppBar(
              titleSpacing: 20,
              backgroundColor: Colors.white,
              elevation: 0.0,
              title: Row(children: [
                CircleAvatar(radius: 15,),
                SizedBox(width: 10,),
                Text('Chats' ,style: TextStyle(
                  color: Colors.black,                  
                ),),
                
              ]),
              actions: [
                IconButton(onPressed: (){}, 
                icon:
                CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 16,
                    color: Colors.white,
                    
                    ))),
                 IconButton(onPressed: (){}, 
                icon:
                CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    size: 16,
                    color: Colors.white,
                    
                    ))),
                ],

            ),
           body: Padding(
             padding: const EdgeInsets.all(20.0),
             child: SingleChildScrollView(
               child: Column(children: [
                Container(              
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[300],
                  ),
                  child: Row(children: [
                    IconButton(onPressed: (){}, 
                    icon: Icon(Icons.search),
                    ),
                    Text('search')
                  ],),
                ),
                SizedBox(height: 20,),
             
                Container( height: 100,
                  child: ListView.separated(
                     shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=> buildChatItem(),
                   separatorBuilder: (context,index)=>SizedBox(width: 15,), 
                   itemCount: 5),
                ),
                 SizedBox(height: 30,), 
               ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
               itemBuilder:  (context,index)=>buildStoryItem(), 
               separatorBuilder: (context,index)=>SizedBox(height: 15,), 
               itemCount: 10),
               ]),
             ),
           ),
           ) ;
  }

Widget buildChatItem ()=>  Container( width: 50,
                    child: Column(children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(radius: 25,),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 3,
                              end: 3,
                            ),
                            child: CircleAvatar(radius: 5,
                            backgroundColor: Colors.red,
                            
                            ),
                          ),
                        ],
                      ),
                      Text('Elsayed elhoseny omer',
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,),
                    ],),
              );    

Widget buildStoryItem ()=>  Row(children: [
                       Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(radius: 25,),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(radius: 5,
                                backgroundColor: Colors.red,
                                
                                ),
                              ),
                            ],
                          ),
                         SizedBox(width: 10,),
                          Expanded(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('elsayedelhoseny',
                              style: TextStyle(fontWeight: FontWeight.bold,),),
                              Row(children: [
                                Expanded(
                                  child: Text('hi elsayedelhoseny omer  how are you hi elsayedelhoseny how are you',
                                  maxLines:2,
                                                       overflow: TextOverflow.ellipsis,),
                                ),
                           
                             Padding(
                               padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                               ),
                               child: Container(
                                width: 5,
                               height: 5,
                               decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                               ),
                               ),
                             ),
                              
                                Text('5:10'),
                              ],)
                            ],),
                          )
                    ],);
}