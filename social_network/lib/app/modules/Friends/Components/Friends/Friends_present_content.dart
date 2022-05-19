import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/core/values/images.dart';
import 'package:social_network/app/modules/Friends/Components/Friends/Friends_present_dropdown/Friends_dropdown.dart';

class FriendsPresentContent extends StatefulWidget {
  const FriendsPresentContent({Key? key}) : super(key: key);

  @override
  _FriendsPresentContentState createState() => _FriendsPresentContentState();
}

class _FriendsPresentContentState extends State<FriendsPresentContent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(avatar),
      ),
      title: const Text(
        'Nguyễn Thị Như Quỳnh',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      trailing: FriendsDropdown(),
    );
  }
}
//     return Container(
//       padding: const EdgeInsets.only(
//         top: 5,
//         bottom: 5,
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           CircleAvatar(
//             radius: 50,
//             backgroundImage: AssetImage(avatar),
//           ),
//           const Text(
//             'Nguyễn Thị Như Quỳnh',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//               color: blackColor,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: const EdgeInsets.only(right: 5),
//             child: const FriendsDropdown(),
//           ),
//         ],
//       ),
//     );
//   }
// }
