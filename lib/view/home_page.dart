import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/viewModel/pokemon.viewModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: ListView(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/Pokeball.svg',
                  height: 32,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 24),
                const Text(
                  "Pokédex",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                ),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                  bottom: Radius.circular(24),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search,
                    color: Color(0xff666666),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      PokemonViewModel.listPokemon();
                    },
                    child: const Text(
                      "Procurar",
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                PokemonDisplay(),
                SizedBox(width: 24),
                PokemonDisplay(),
                SizedBox(width: 24),
                PokemonDisplay(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PokemonDisplay extends StatelessWidget {
  const PokemonDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8),
            ),
          ),
          height: 100,
          width: 100,
          child: Image.network(
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.green,
            ),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
          height: 30,
          width: 100,
          child: const Center(
            child: Text(
              "Bulbasaur",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
