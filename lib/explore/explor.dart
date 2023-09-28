import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width * 0.02,
          right: MediaQuery.sizeOf(context).width * 0.02,
          top: MediaQuery.sizeOf(context).height * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: textEditingController,
            onChanged: (value) {},
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.lightBlue,
                    width: 2.0,
                  ),
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.lightBlue),
                prefixIcon: const Icon(
                  Icons.search,
                ),
                suffixIcon: const Icon(Icons.close)),
          ),
         const SizedBox(height: 24,),
          Flexible(
            flex: 1,
            child: ListView.separated(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.asset("assets/images/red_sea.jpeg")),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Red Sea",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                separatorBuilder: (context, index) =>
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
                itemCount: 100),
          ),
          Flexible(
            flex: 3,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, listViewIndex) {
                return Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color(0x230F1113),
                          offset: Offset(0, 4),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/turtle.jpg',
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hawksbill Turtle',
                                style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Container(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.sizeOf(context).width * 2),
                                child: const Text(
                                  maxLines: 3,
                                  'Found in the tropical regions of all the world’s oceans, gulfs and seas, mostly in coral reefs, the Hawksbill Turtle’s population is estimated to have declined by 80% over the last century. The turtles are heavily trafficked for their colourful shells and eggs, even though the harvesting of eggs is banned. They are also threatened by the degradation of coral reef species on which they feed.',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
