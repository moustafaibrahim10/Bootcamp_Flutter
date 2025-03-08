import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined)),
        title: Text(
          'Flutter Project',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: 
        [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                validator: (value)
                {
                  if(value == null ||  value.isEmpty)
                    return 'PlZ enter ur email';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: ()
                  {
                    if(formKey.currentState!.validate())
                      {
                      print("The email is correct");
                      }
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                  child:Text(
                      'login',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: (){},
                  child: Text('Register From here'))
              
            ],
          ),
        ),
      ),
    );
  }
}
