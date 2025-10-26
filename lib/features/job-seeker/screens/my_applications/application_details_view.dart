import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../global_widget/global.dart';



class ApplicationDetailsPage extends ConsumerStatefulWidget {
  // final ProjectEntity projectDto;

  const ApplicationDetailsPage({super.key});

  @override
  ConsumerState<ApplicationDetailsPage> createState() => _ApplicationDetailsPageState();
}

class _ApplicationDetailsPageState extends ConsumerState<ApplicationDetailsPage>
    with SingleTickerProviderStateMixin {

  String status = "";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    status = "attente";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined, size: 24.sp),
          onPressed: () {
            context.pop(context);
          },
        ),
        title: const Text("Détails de la candidature"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- Avatar et infos de base ---
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 12),
            const Text(
              "Roberto Fokou",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "robertofokou@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              "Candidature soumise le 18.03.2025",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 12),

            // --- Statut ---
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: status == "attente" ? Colors.orange[100] : status == "retenue" ? Colors.green[100] : Colors.red[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "En attente de validation",
                style: TextStyle(color: status == "attente" ? Colors.orange : status == "retenue" ? Colors.green : Colors.red),
              ),
            ),

            if(status == "rejetée")
            const SizedBox(height: 20),

            if(status != "attente")
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.infinity,
              decoration: BoxDecoration(
                color: status == "retenue" ? Colors.blue[100] : Colors.red[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child:  status == "retenue" ?
              const Row(
                children: [
                  Icon(Icons.info, color: AppColors.primary),
                  SizedBox(width: 10),
                  Expanded(
                    child: const Text("Veuillez consulter votre boîte mail pour avoir plus d'information sur "
                        "ce poste pour lequel votre candidature à été retenue.",
                    ),
                  ),
                ],
              ) :
              const Row(
                children: [
                  Icon(Icons.info, color: Colors.red),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text( "Malheureusement, votre candidature a été rejetée. Vous êtes invité "
                        "à revoiir votre dossier de candidature correctement pour les prochaines offres.",
                    ),
                  ),
                ],
              )
            ),

            if(status == "rejetée")
            const SizedBox(height: 10),
            if(status == "rejetée")
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Relancer",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

            const SizedBox(height: 24),

            // --- Section Infos ---
            Container(
              width: width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blueAccent, width: 1),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoRow(title: "Poste", value: "Senior Developer"),
                  SizedBox(height: 8),
                  InfoRow(title: "Domaine d’expertise", value: "Informatique et Génie logiciel"),
                  SizedBox(height: 8),
                  InfoRow(title: "Dernier emploi", value: "Aucun"),
                  SizedBox(height: 8),
                  InfoRow(title: "Dernier diplôme", value: "Aucun"),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // --- Compétences ---
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Compétences :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 8),
            const Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                SkillChip("JavaScript"),
                SkillChip("UI/UX Design"),
                SkillChip("Frontend"),
                SkillChip("Angular"),
                SkillChip("Travail en équipe"),
              ],
            ),
            const SizedBox(height: 24),

            // --- Documents ---
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Documents :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 12),
            const DocumentTile(title: "CV", fileName: "cv.pdf"),
            const SizedBox(height: 8),
            const DocumentTile(title: "Lettre de motivation", fileName: "lettre_de_motivation.pdf"),

            const SizedBox(height: 40),

            // --- Bouton feedback ---
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Laisser un feedback",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}