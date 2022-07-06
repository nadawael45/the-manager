part of '../view.dart';

class HomeGridView extends StatelessWidget {

  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: homeGridList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: ()
          {
            MagicRouter.navigateTo(homeGridList[index].page!);
          },
          child: Center(
              child: GridContainer(
                image: homeGridList[index].image!,
                text: homeGridList[index].name!,

          )),
        ),
      ),
    );
  }
}
