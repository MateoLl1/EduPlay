import 'package:flutter/material.dart';
import 'package:games/domain/domain.dart';

class CursoScreen extends StatelessWidget {
  final String id;
  const CursoScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final curso = appSoftwareItem.firstWhere((element) => element.id == int.parse(id));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSoftwareAppbar(title: curso.name,image: curso.image),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: curso.temas.length,
              (context, index) {
                final tema = curso.temas[index];
                return _CursoListView(tema);
              },              
            )
          )

        ],
      ),
    );
  }
}

class _CursoListView extends StatelessWidget {
  final SoftwareTema tema;
  const _CursoListView(this.tema);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SizedBox(height: 20,),
        
        ListTile(
          leading: 
          CircleAvatar(
            backgroundImage: NetworkImage(tema.image)
          ),
          title:  Text(tema.title),
          subtitle:  Text(tema.caption),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: (){},
        ),
      ],
    );
  }
}

class CustomSoftwareAppbar extends StatelessWidget {
  final String title;
  final String image;
  const CustomSoftwareAppbar({
    super.key, 
    required this.title, 
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      expandedHeight: size.height*.25,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [

            Image.network(
              image,
              width: double.infinity,
              height: size.height*.25,
              fit: BoxFit.cover,
            ),

            Container(color: Colors.black26,),

            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Desarrollo de software',style: textStyle.bodyLarge,),
                    Text(title,style: textStyle.titleLarge,)
                  ],
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
}