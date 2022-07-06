import 'package:flutter/material.dart';

import 'grid_container.dart';

class ClientsGridView extends StatelessWidget {

  const ClientsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) => InkWell(
          onTap: ()
          {
//            MagicRouter.navigateTo(homeGridList[index].page!);
          },
          child: ClientsContainer(),
        ),
      ),
    );
  }
}
