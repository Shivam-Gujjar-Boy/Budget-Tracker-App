import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(this.name);
  final String name;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var items_AA = [];
  var amount_AA = [];

  void showItemtoAA(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          String newItem = '';
          String newAmount = '';
          return AlertDialog(
            title: Text('Enter new Item'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {
                    newItem = value;
                  },
                  decoration: InputDecoration(labelText: 'Enter title'),
                ),
                TextField(
                  onChanged: (value) {
                    newAmount = value;
                  },
                  decoration: InputDecoration(labelText: 'Amount'),
                )
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              ElevatedButton(
                  onPressed: () {
                    AddItemAA(newItem, newAmount);
                  },
                  child: Text('Save'))
            ],
          );
        });
  }

  void AddItemAA(String a, String b) {
    setState(() {
      items_AA.add(a);
      amount_AA.add(b);
    });
    Navigator.pop(context);
  }

  void RemoveAA(int i) {
    setState(() {
      items_AA.removeAt(i);
      amount_AA.removeAt(i);
    });
  }

  var items_W = [];
  var amount_W = [];

  void showItemtoW(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          String newItem = '';
          String newAmount = '';
          return AlertDialog(
            title: Text('Enter new Item'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {
                    newItem = value;
                  },
                  decoration: InputDecoration(labelText: 'Enter title'),
                ),
                TextField(
                  onChanged: (value) {
                    newAmount = value;
                  },
                  decoration: InputDecoration(labelText: 'Amount'),
                )
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              ElevatedButton(
                  onPressed: () {
                    AddItemW(newItem, newAmount);
                  },
                  child: Text('Save'))
            ],
          );
        });
  }

  void AddItemW(String a, String b) {
    setState(() {
      items_W.add(a);
      amount_W.add(b);
    });
    Navigator.pop(context);
  }

  void RemoveW(int i) {
    setState(() {
      items_W.removeAt(i);
      amount_W.removeAt(i);
    });
  }

  var User_Data = ['User_Name', 'Email_ID', 'Pass_Word'];

  void SaveChanges(String a, String b, String c) {
    setState(() {
      User_Data[0] = a;
      User_Data[1] = b;
      User_Data[2] = c;
    });
    Navigator.pop(context);
  }

  void editUserData(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          String newName = '';
          String newEmail = '';
          String newPassword = '';

          return AlertDialog(
            title: Text('Edit User Information'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {
                    newName = value;
                  },
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  onChanged: (value) {
                    newEmail = value;
                  },
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  onChanged: (value) {
                    newPassword = value;
                  },
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  obscuringCharacter: '*',
                )
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    SaveChanges(newName, newEmail, newPassword);
                  },
                  child: Text('Save')),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
            ],
          );
        });
  }

  void currentUserInfo(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Current User Info'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Name: ${User_Data[0]}'),
                Text('Email: ${User_Data[1]}'),
                Text('Password: ${User_Data[2]}')
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 188, 216, 216),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Color.fromARGB(255, 114, 196, 229),
            ),
            Card(
              elevation: 5,
              shadowColor: Color.fromARGB(255, 4, 34, 45),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 114, 196, 229),
                ),
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {
                        currentUserInfo(context);
                      },
                      icon: Icon(
                        Icons.account_circle,
                        size: 30,
                      )),
                  title: Text(
                    '          Budget Tracker',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 188, 216, 216),
                  child: Column(
                    children: [
                      Container(
                        child: Center(
                            child: IconButton(
                          onPressed: () => editUserData(context),
                          icon: Icon(
                            Icons.person,
                            size: 80,
                          ),
                        )),
                      ),
                      Container(
                        child: Text(
                          'Hi!',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(10),
                        height: 750,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 89, 212, 216),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [BoxShadow(blurRadius: 10)]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 75,
                              child: Center(
                                child: Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Amount Added: ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showItemtoAA(context);
                                      },
                                      icon: Icon(Icons.add))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 157, 217, 221),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [BoxShadow(blurRadius: 10)]),
                              child: ListView.builder(
                                itemCount: items_AA.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(items_AA[index]),
                                    subtitle: Text(amount_AA[index]),
                                    trailing: IconButton(
                                        onPressed: () {
                                          RemoveAA(index);
                                        },
                                        icon: Icon(Icons.delete_outline)),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Withdrawn:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showItemtoW(context);
                                      },
                                      icon: Icon(Icons.add))
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 157, 217, 221),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [BoxShadow(blurRadius: 10)]),
                                child: Center(
                                  child: ListView.builder(
                                    itemCount: items_W.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text(items_W[index]),
                                        subtitle: Text(amount_W[index]),
                                        trailing: IconButton(
                                            onPressed: () {
                                              RemoveW(index);
                                            },
                                            icon: Icon(Icons.delete_outline)),
                                      );
                                    },
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _nameController = TextEditingController();

  void function() {
    // String name = _nameController.text;
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return currency();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 135, 202, 219),
        child: Center(
            child: Container(
          width: 300,
          height: 290,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 94, 170, 217),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [BoxShadow(blurRadius: 10)]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Email ID'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'PassWord'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Login'),
                    onPressed: () {
                      function();
                    },
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class currency extends StatefulWidget {
  const currency({super.key});

  @override
  State<currency> createState() => _currencyState();
}

class _currencyState extends State<currency> {
  TextEditingController _nameController = TextEditingController();

  void f() {
    String name = _nameController.text;
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MyHomePage(name);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade100,
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 300,
          ),
          Container(
            width: double.infinity,
            child: Center(
              child: Text(
                'Select Currency',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      f();
                    },
                    icon: Icon(
                      Icons.currency_rupee_outlined,
                      size: 40,
                    )),
                IconButton(
                    onPressed: () {
                      f();
                    },
                    icon: Icon(
                      Icons.currency_exchange,
                      size: 40,
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
