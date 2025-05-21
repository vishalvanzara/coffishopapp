import 'package:coffishopapp/presentation/communwidget/product_rating.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatefulWidget {
  const ProductTile(
      {super.key, this.originalPrice, required this.productDescription});
  final double? originalPrice;
  final String productDescription;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isTwoLines = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asserts/images/home/item1.png'),
                        ),
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    ProductRating(rating: 4.8)
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: ColoredBox(
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coffee Milk',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff555555),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          child: LayoutBuilder(builder: (context, constraints) {
                            final span = TextSpan(
                              text: widget.productDescription,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff555555),
                              ),
                            );
                            final tp = TextPainter(
                              text: span,
                              maxLines: 2,
                              textDirection: TextDirection.ltr,
                            );
                            tp.layout(maxWidth: constraints.maxWidth - 10);
                            final numLines = tp.computeLineMetrics().length;
                            if (numLines != (isTwoLines ? 2 : 1)) {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                setState(() {
                                  isTwoLines = numLines > 1;
                                });
                              });
                            }
                            return Text(
                              widget.productDescription,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff555555),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ColoredBox(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rp25.000',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff555555),
                  ),
                ),
                SizedBox(height: widget.originalPrice != null ? 8 : 4),
                isTwoLines
                    ? Text(
                        widget.originalPrice != null ? 'Rp25.000\n' : ' \n ',
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff555555),
                        ),
                      )
                    : const SizedBox(),
                !isTwoLines
                    ? Text(
                        widget.originalPrice != null ? 'Rp25.000' : '',
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff555555),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
