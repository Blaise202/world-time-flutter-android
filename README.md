# world_time

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




to connect the flutter project to the backend api
1. import a http flutter package in your project "flutter pub add http"
2. create a laravel project 
3. start a laravel server "php artisan serve --host=0.0.0.0 --port=8000" 
   - we use --host=0.0.0.0 to change the local host because flutter also uses 127.0.0.1
4. run "ipconfig" in CMD to get the computer ip address
5. import http package in the file "import 'package:http/http.dart';"
6. assign the Url to the variable
    - final response = await get(Uri.parse("http://313.14.1.245:8000/api"));
    - import a converter package to use jsonDecode() "import 'dart:convert';"
    - assign the response to a map variable "Map data = jsonDecode(response.body);"
7. the access the objects of your data (ex: print(data['message']);)
   

to import the spinkit package
 - use command  "$ flutter pub add flutter_spinkit"
 - to import the spinner "import 'package:flutter_spinkit/flutter_spinkit.dart';"