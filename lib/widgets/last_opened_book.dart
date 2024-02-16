import 'package:flutter/material.dart';
import 'package:lithabit/widgets/reading_book.dart';

import 'book_cover_3d.dart';

class LastOpenedBook extends StatelessWidget {
  const LastOpenedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Opened Lastly  ",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReadingBook(
                          pdfPath: "assets/book0.pdf",
                        )),
              );
            },
            child: BookCover3D(
              imageUrl:
                  "https://bookwindow.in/image/uploads/1513759505buy-bharati-bhawan-concepts-of-physics-part-2-h-c-verma-online.png",
            ),
          ),
        ),
      ],
    );
  }
}
