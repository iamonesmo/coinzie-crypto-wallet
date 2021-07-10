import 'package:coinzie/walletCard.dart';
import 'package:flutter/material.dart';

class Wallets extends StatefulWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  _WalletsState createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 15,
            // height: 300,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 15.0),
                    child: Text(
                      'No Wallets Added Yet',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 17,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Image.network(
                    'https://coingate.com/_next/static/images/buy-crypto-f3dad06ca5c7e714af9222a455aa63a5.png',
                    width: MediaQuery.of(context).size.width - 15,
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          // width: MediaQuery.of(context).size.width - 12,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.tealAccent.shade400),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => SimpleDialog(
                    children: [
                      SimpleDialogOption(
                        child: WalletCard(
                          'assets/images/metamask.png',
                          'Metamask',
                        ),
                      ),
                      SimpleDialogOption(
                        child: WalletCard(
                          'assets/images/coinbase.png',
                          'Coinbase',
                        ),
                      ),
                      SimpleDialogOption(
                        child: WalletCard(
                          'assets/images/exodus.png',
                          'Exodus',
                        ),
                      ),
                      SimpleDialogOption(
                        child: WalletCard(
                          'assets/images/TWT.png',
                          'Trust Wallet',
                        ),
                      ),
                      SimpleDialogOption(
                        child: WalletCard(
                          'assets/images/myehter.png',
                          'MyEtherWallet',
                        ),
                      ),
                      SimpleDialogOption(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.tealAccent.shade400),
                          ),
                          child: Text("import your own"),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                );
              },
              child: Text('Add Wallets')),
        ),
      ],
    );
  }
}
