import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatec/core/common/widgets/templates/loader.dart';
import 'package:pruebatec/features/cat/presentation/provider/landing_provider.dart';
import 'package:pruebatec/features/cat/presentation/widgets/card_cat.dart';
import 'package:pruebatec/features/cat/presentation/widgets/search_cat.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onBuscar(LandingProvider landingProvider) {
      FocusScope.of(context).unfocus();
      landingProvider.fetchCats();
    }

    void onInputChanged(LandingProvider landingProvider, String value) {
      landingProvider.search = value;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreeds'),
        centerTitle: true,
      ),
      body: ChangeNotifierProvider(
        create: (_) => LandingProvider()..fetchCats(),
        child: Column(
          children: [
            Consumer<LandingProvider>(
              builder: (context, landingProv, _) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SearchCat(
                    value: landingProv.search,
                    onPressed: () => onBuscar(landingProv),
                    onChanged: (value) => onInputChanged(landingProv, value),
                  ),
                );
              },
            ),
            Expanded(
              child: SizedBox(
                child: Consumer<LandingProvider>(
                  builder: (BuildContext context, LandingProvider landigProv,_) {
                    final cats = landigProv.cats;
                    if(landigProv.isLoading){
                      return const Loader();
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: cats.length,
                      itemBuilder: (BuildContext context, int key) {
                        final cat = cats[key];
                        return CardCat(cat: cat);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
