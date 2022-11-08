import 'package:techie/exports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (crl) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('GetX testing'),
            actions: [
              IconButton(
                onPressed: () {
                  Get.to(const AboutPage());
                },
                icon: const Icon(
                  Icons.adb_outlined,
                  color: Colors.black,
                ),
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
              )
            ],
          ),
        );
      },
    );
  }
}
