import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../Domain/models/InfiniteModel.dart';
import '../../widgets/uihelper.dart';

class DairybreadmilkScreen extends StatefulWidget {
  const DairybreadmilkScreen({super.key});

  @override
  State<DairybreadmilkScreen> createState() => _DairybreadmilkScreenState();
}

class _DairybreadmilkScreenState extends State<DairybreadmilkScreen> {
  List tempList = [];
  List<Users> newData = [];

  static const _pageSize = 20;

  final PagingController<int, Users> _pagingController = PagingController(firstPageKey: 0);

  Future _getList(int offset) async {
    Uri urlLink = Uri.parse(
        "https://api.slingacademy.com/v1/sample-data/users?offset=0&limit=20");
    http.Response response;
    response = await http.get(urlLink);

    var decodedJson = jsonDecode(response.body);
    tempList = decodedJson['users'] as List;
    newData = tempList.map((dynamic item) => Users.fromJson(item)).toList();

    final isLastPage = newData.length < _pageSize;
    if (isLastPage == true) {
      _pagingController.appendLastPage(newData);
    } else {
      _pagingController.appendPage(newData, _pageSize);
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pagingController
        .addPageRequestListener((int pageNumber) => _getList(pageNumber));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.black,)),
        title: Uihelper.CustomText(text: "Dairy, Bread & Milk",
            color: Colors.black,
            fontweight: FontWeight.w600,
            fontSize: 13,
            fontFamily: "regular"),
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black,))
        ],
        backgroundColor: Colors.white,
      ),
      body: PagedListView<int, Users > (
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Users>(
          itemBuilder: (BuildContext context, Users item, int index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(item.profilePicture ?? ""),
                      radius: 100,
                    ),
                    Text("First Name: ${item.firstName}"),
                    Text("Last Name: ${item.lastName}"),
                    Text("Email: ${item.email}"),
                  ],
                ),
              ),
            );
          },
          newPageProgressIndicatorBuilder: (BuildContext context) =>
          const Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            ),
          ),
          firstPageProgressIndicatorBuilder: (BuildContext context) =>
          const Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

