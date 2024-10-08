import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/profile/data/profile_repo.dart';
import 'package:ts_4_6_1_bildgalerie/shared/widgets/textboxes.dart';
//import 'package:ts_4_6_1_bildgalerie/features/profile/models/profile_item.dart';

class Profile extends StatelessWidget {
  final ProfileRepo profileRepo;
  Profile({super.key, required this.profileRepo});

  @override
  Widget build(BuildContext context) {
    final profileItem = profileRepo.getProfileItem();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(125),
                    image: DecorationImage(
                        image: AssetImage(profileItem.profileImagePath),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                profileItem.profileName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(profileItem.profileJob,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 16,
              ),
              TextRounded(text: profileItem.profileDescription),
            ],
          ),
        ),
      ),
    );
  }
}
