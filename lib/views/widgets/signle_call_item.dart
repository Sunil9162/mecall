import 'package:flutter/material.dart';
import 'package:mecall/constants/spacer.dart';

class SingleCallItem extends StatefulWidget {
  final String id;
  const SingleCallItem({Key? key, required this.id}) : super(key: key);

  @override
  _SingleCallItemState createState() => _SingleCallItemState();
}

class _SingleCallItemState extends State<SingleCallItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: Row(
        children: [
          widthSpace(20),
          const Icon(Icons.call),
          widthSpace(20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '+977-9876543210',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '10:00 AM',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          widthSpace(0),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.grey.withOpacity(0.5),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// we have not added text theme for both theme lets add