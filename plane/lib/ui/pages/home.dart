import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plane/cubit/auth_cubit.dart';
import 'package:plane/ui/widgets/des_card.dart';
import 'package:plane/ui/widgets/des_tile.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {

          if (state is AuthSuccess){
            return Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                              fontSize: 24, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where to fly today?',
                          style: greyTextStyle.copyWith(
                              fontWeight: light, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/profile.png'
                        )
                      )
                    ),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }

        },
      );
    }

    Widget Popular() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/b3.png',
                rating: 4.5,
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/b2.png',
                rating: 4.9,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/b10.png',
                rating: 4.2,
              ),
              DestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/b11.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/b12.png',
                rating: 3.3,
              ),
            ],
          ),
        ),
      );
    }

    Widget NewDes() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style:
                  blackTextStyle.copyWith(fontWeight: semibold, fontSize: 18),
            ),
            DestinationTile(
              name: 'Danau Beratan',
              place: 'Singaraja',
              imageUrl: 'assets/b5.png',
              rating: 4.0,
            ),
            DestinationTile(
              name: 'Sydney Opera',
              place: 'Australia',
              imageUrl: 'assets/b4.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Roma',
              place: 'Italy',
              imageUrl: 'assets/b7.png',
              rating: 4.2,
            ),
            DestinationTile(
              name: 'Payung Teduh',
              place: 'Singapure',
              imageUrl: 'assets/b12.png',
              rating: 4.0,
            ),
            DestinationTile(
              name: 'Hill Hey',
              place: 'Monaco',
              imageUrl: 'assets/b10.png',
              rating: 4.4,
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        Header(),
        Popular(),
        NewDes(),
      ],
    );
  }
}
