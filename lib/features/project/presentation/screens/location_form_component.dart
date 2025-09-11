import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_text_field.dart';

class LocationFormComponent extends ConsumerStatefulWidget {
  final String projectId;
  final VoidCallback onUpdate;

  const LocationFormComponent({
    super.key,
    required this.projectId,
    required this.onUpdate,
  });

  @override
  ConsumerState<LocationFormComponent> createState() =>
      _LocationFormComponentState();
}

class _LocationFormComponentState extends ConsumerState<LocationFormComponent> {
  final _formKey = GlobalKey<FormState>();
  final _countryController = TextEditingController();
  final _regionController = TextEditingController();
  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final project = ref.read(projectProvider).selectedProject;
    if (project != null && project.location != null) {
      _countryController.text = project.location!.country;
      _regionController.text = project.location!.region ?? '';
      _cityController.text = project.location!.city ?? '';
      _addressController.text = project.location!.address ?? '';
      if (project.location!.coordinates != null &&
          project.location!.coordinates!.length == 2) {
        _latitudeController.text = project.location!.coordinates![1].toString();
        _longitudeController.text =
            project.location!.coordinates![0].toString();
      }
    }
  }

  @override
  void dispose() {
    _countryController.dispose();
    _regionController.dispose();
    _cityController.dispose();
    _addressController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: _countryController,
              label: 'Pays',
              hintText: 'Max 100 caractères',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Le pays est requis';
                if (value.length > 100) return 'Max 100 caractères';
                return null;
              },
            ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            CustomTextField(
              controller: _regionController,
              label: 'Région',
              hintText: 'Max 100 caractères',
              validator: (value) => value != null && value.length > 100
                  ? 'Max 100 caractères'
                  : null,
            ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            CustomTextField(
              controller: _cityController,
              label: 'Ville',
              hintText: 'Max 100 caractères',
              validator: (value) => value != null && value.length > 100
                  ? 'Max 100 caractères'
                  : null,
            ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            CustomTextField(
              controller: _addressController,
              label: 'Adresse',
              hintText: 'Max 200 caractères',
              validator: (value) => value != null && value.length > 200
                  ? 'Max 200 caractères'
                  : null,
            ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _latitudeController,
                    label: 'Latitude',
                    hintText: 'Ex: 3.874',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        final lat = double.tryParse(value);
                        if (lat == null || lat < -90 || lat > 90)
                          return 'Doit être entre -90 et 90';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: CustomTextField(
                    controller: _longitudeController,
                    label: 'Longitude',
                    hintText: 'Ex: 11.521',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        final lon = double.tryParse(value);
                        if (lon == null || lon < -180 || lon > 180)
                          return 'Doit être entre -180 et 180';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ).animate(delay: 500.ms).fadeIn().slideX(begin: -0.3),
          ],
        ),
      ),
    );
  }

  void validateAndUpdate() {
    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veuillez remplir tous les champs obligatoires.'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    final data = {
      'location': {
        'country': _countryController.text.trim(),
        'region': _regionController.text.trim(),
        'city': _cityController.text.trim(),
        'address': _addressController.text.trim(),
        'coordinates': _latitudeController.text.isNotEmpty &&
                _longitudeController.text.isNotEmpty
            ? [
                double.tryParse(_longitudeController.text) ?? 0.0,
                double.tryParse(_latitudeController.text) ?? 0.0,
              ]
            : null,
      },
    }..removeWhere(
        (key, value) => value == null || (value is String && value.isEmpty));
    data['location']?.removeWhere(
        (key, value) => value == null || (value is String && value.isEmpty));

    ref
        .read(projectProvider.notifier)
        .updateProject(widget.projectId, data)
        .then((_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Localisation mise à jour avec succès'),
            backgroundColor: AppColors.success,
          ),
        );
        widget.onUpdate();
      }
    }).catchError((e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    });
  }
}
