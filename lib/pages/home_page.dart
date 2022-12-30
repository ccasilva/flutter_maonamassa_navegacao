import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'Parametro X');
              },
              child: const Text('Ir para Detalhe'),
            ),
            TextButton(
              onPressed: () {
                // Nao sera chamado pelo onGenerateRoute"
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/detalhe',
                      //arguments: 'Parametro pelo page route',
                    ),
                    builder: (_) => const DetalhePage(
                        parametro: 'Parametro pelo page Route'),
                  ),
                );
              },
              child: const Text('Ir para Detalhe PageRoute'),
            ),
            TextButton(
              onPressed: () async {
                print('Antes de navegar para a pagina detalhe 2');

                //final retorno = await Navigator.of(context)
                //    .pushNamed('/detalhe2');
                final message =
                    await Navigator.of(context).pushNamed('/detalhe2');

                print('Depois de navegar para a pagina detalhe 2');
                print('O retorno da detalhe 2 é $message');
              },
              child: const Text('Ir para Detalhe2 e aguardar'),
            )
          ],
        ),
      ),
    );
  }
}
