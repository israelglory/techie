import 'package:techie/exports.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      init: AboutController(),
      builder: (crl) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.backspace_rounded),
            ),
            title: const Text('GetX test'),
            actions: [
              IconButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'Welcome to GetX',
                      middleText: 'This is my favourite State management',
                      radius: 5,
                      actions: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Cancel'),
                          ),
                        ),
                      ]);
                },
                icon: const Icon(Icons.adb_outlined),
              ),
            ],
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                crl.count.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  crl.increment();
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.black,
                    child: const Text(
                      'Increase Count',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
