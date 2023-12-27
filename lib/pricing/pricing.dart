import 'package:flutter/material.dart';

class PricingModule extends StatelessWidget {
  const PricingModule({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 600) {
      // UI for larger screens
      return Scaffold(
        appBar: AppBar(
          title: const Text('Pricing'),
        ),
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.75,
            
            child:const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Expanded(
                  child: Column(
                    children: [
                      PricingContainer(
                        tierText: 'Free',
                        descriptionText: 'This is the free tier',
                        tierLogo: FlutterLogo(
                          size: 50,
                        ),
                        pricingText: 'Free',
                      ),
                      PricingContainer(
                        tierText: 'Basic',
                        descriptionText: 'This is the basic tier',
                        tierLogo: FlutterLogo(
                          size: 50,
                        ),
                        pricingText: 'Free',
                      ),
                      PricingContainer(
                        tierText: 'Premium',
                        descriptionText: 'This is the premium tier',
                        tierLogo: FlutterLogo(
                          size: 50,
                        ),
                        pricingText: 'Free',
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ),
      );
    } else {
      // UI for smaller screens
      return const Placeholder();
    }
    
  }
}

class PricingContainer extends StatelessWidget {
    final String tierText;
    final String descriptionText;
    final Widget tierLogo;
    final String pricingText;

    const PricingContainer({super.key, 
      required this.tierText,
      required this.descriptionText,
      required this.tierLogo,
      required this.pricingText,
    });

    @override
    Widget build(BuildContext context) {
      List<String> descriptionList = descriptionText.split('\n');

      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: AboutDialog(
                applicationName: tierText,
                applicationIcon: tierLogo,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: descriptionList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Text('•'),
                    title: Text(descriptionList[index]),
                  );
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(pricingText),
                onPressed: () {
                  // Implement your code here
                },
              ),
            ),
          ],
        ),
      );
    }
  }
  
