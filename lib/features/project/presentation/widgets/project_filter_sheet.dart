import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectFilterSheet extends StatefulWidget {
  final String? selectedCategory;
  final String? selectedSector;
  final String? selectedSubSector;
  final String? selectedLocation;
  final String? selectedFundingType;
  final String? selectedStatus;
  final String? selectedVisibility;
  final String? selectedPriority;
  final String? selectedCollaborationType;
  final double? minFunding;
  final double? maxFunding;
  final String sortBy;
  final String sortOrder;
  final List<dynamic> categories;
  final Function(Map<String, dynamic>) onApplyFilters;

  const ProjectFilterSheet({
    super.key,
    this.selectedCategory,
    this.selectedSector,
    this.selectedSubSector,
    this.selectedLocation,
    this.selectedFundingType,
    this.selectedStatus,
    this.selectedVisibility,
    this.selectedPriority,
    this.selectedCollaborationType,
    this.minFunding,
    this.maxFunding,
    required this.sortBy,
    required this.sortOrder,
    required this.categories,
    required this.onApplyFilters,
  });

  @override
  State<ProjectFilterSheet> createState() => _ProjectFilterSheetState();
}

class _ProjectFilterSheetState extends State<ProjectFilterSheet> {
  String? _selectedCategory;
  String? _selectedSector;
  String? _selectedSubSector;
  String? _selectedLocation;
  String? _selectedFundingType;
  String? _selectedStatus;
  String? _selectedVisibility;
  String? _selectedPriority;
  String? _selectedCollaborationType;
  double? _minFunding;
  double? _maxFunding;
  String _sortBy = 'createdAt';
  String _sortOrder = 'desc';

  final List<String> _sectors = [
    'agriculture',
    'technology',
    'healthcare',
    'education',
    'finance',
    'retail',
    'manufacturing',
    'services',
    'energy',
    'transport',
    'other',
  ];

  final List<String> _subSectors = [
    'fintech',
    'edtech',
    'healthtech',
    'agritech',
    'cleantech',
    'biotech',
    'foodtech',
    'proptech',
    'insurtech',
    'regtech',
  ];

  final List<String> _locations = [
    'Yaoundé',
    'Douala',
    'Bafoussam',
    'Bamenda',
    'Garoua',
    'Maroua',
    'Ngaoundéré',
    'Bertoua',
    'Ebolowa',
    'Kribi',
  ];

  final List<String> _fundingTypes = [
    'donation',
    'investment',
    'loan',
    'equity',
    'revenue_share',
    'debt',
    'hybrid',
  ];

  final List<String> _statuses = [
    'draft',
    'submitted',
    'under_review',
    'approved',
    'active',
    'funded',
    'in_progress',
    'completed',
    'rejected',
    'cancelled',
    'suspended',
  ];

  final List<String> _visibilities = [
    'public',
    'private',
    'members_only',
  ];

  final List<String> _priorities = [
    'low',
    'medium',
    'high',
    'urgent',
  ];

  final List<String> _collaborationTypes = [
    'solo',
    'team',
    'group',
    'community',
  ];

  final List<Map<String, String>> _sortOptions = [
    {'key': 'createdAt', 'label': 'Date Created'},
    {'key': 'updatedAt', 'label': 'Last Updated'},
    {'key': 'title', 'label': 'Title'},
    {'key': 'fundingGoal', 'label': 'Funding Goal'},
    {'key': 'currentFunding', 'label': 'Current Funding'},
    {'key': 'views', 'label': 'Views'},
  ];

  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.selectedCategory;
    _selectedSector = widget.selectedSector;
    _selectedSubSector = widget.selectedSubSector;
    _selectedLocation = widget.selectedLocation;
    _selectedFundingType = widget.selectedFundingType;
    _selectedStatus = widget.selectedStatus;
    _selectedVisibility = widget.selectedVisibility;
    _selectedPriority = widget.selectedPriority;
    _selectedCollaborationType = widget.selectedCollaborationType;
    _minFunding = widget.minFunding;
    _maxFunding = widget.maxFunding;
    _sortBy = widget.sortBy;
    _sortOrder = widget.sortOrder;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            margin: EdgeInsets.only(top: 8.h),
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.gray200,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),

          // Header
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter Projects',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close, size: 24.sp),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category filter
                  _buildSectionTitle('Category'),
                  SizedBox(height: 8.h),
                  _buildCategoryFilter(),

                  SizedBox(height: 24.h),

                  // Sector filter
                  _buildSectionTitle('Sector'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Sector',
                    _selectedSector,
                    _sectors,
                    (value) => setState(() => _selectedSector = value),
                  ),

                  SizedBox(height: 16.h),

                  // Sub-sector filter
                  _buildSectionTitle('Sub-Sector'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Sub-Sector',
                    _selectedSubSector,
                    _subSectors,
                    (value) => setState(() => _selectedSubSector = value),
                  ),

                  SizedBox(height: 24.h),

                  // Location filter
                  _buildSectionTitle('Location'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Location',
                    _selectedLocation,
                    _locations,
                    (value) => setState(() => _selectedLocation = value),
                  ),

                  SizedBox(height: 24.h),

                  // Funding type filter
                  _buildSectionTitle('Funding Type'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Funding Type',
                    _selectedFundingType,
                    _fundingTypes,
                    (value) => setState(() => _selectedFundingType = value),
                  ),

                  SizedBox(height: 24.h),

                  // Status filter
                  _buildSectionTitle('Status'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Status',
                    _selectedStatus,
                    _statuses,
                    (value) => setState(() => _selectedStatus = value),
                  ),

                  SizedBox(height: 24.h),

                  // Visibility filter
                  _buildSectionTitle('Visibility'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Visibility',
                    _selectedVisibility,
                    _visibilities,
                    (value) => setState(() => _selectedVisibility = value),
                  ),

                  SizedBox(height: 24.h),

                  // Priority filter
                  _buildSectionTitle('Priority'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Priority',
                    _selectedPriority,
                    _priorities,
                    (value) => setState(() => _selectedPriority = value),
                  ),

                  SizedBox(height: 24.h),

                  // Collaboration type filter
                  _buildSectionTitle('Collaboration Type'),
                  SizedBox(height: 8.h),
                  _buildDropdownFilter(
                    'Select Collaboration Type',
                    _selectedCollaborationType,
                    _collaborationTypes,
                    (value) =>
                        setState(() => _selectedCollaborationType = value),
                  ),

                  SizedBox(height: 24.h),

                  // Funding range filter
                  _buildSectionTitle('Funding Range (XAF)'),
                  SizedBox(height: 8.h),
                  _buildFundingRangeFilter(),

                  SizedBox(height: 24.h),

                  // Sort options
                  _buildSectionTitle('Sort By'),
                  SizedBox(height: 8.h),
                  _buildSortOptions(),

                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),

          // Action buttons
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: const BoxDecoration(
              color: AppColors.cardBackground,
              border: Border(
                top: BorderSide(
                  color: AppColors.gray200,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Clear All',
                    onPressed: _clearAllFilters,
                    backgroundColor: AppColors.gray200,
                    textColor: AppColors.textPrimary,
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: CustomButton(
                    text: 'Apply Filters',
                    onPressed: _applyFilters,
                    backgroundColor: AppColors.primary,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: [
        _buildFilterChip(
          'All Categories',
          _selectedCategory == null,
          () => setState(() => _selectedCategory = null),
        ),
        ...widget.categories.map((category) => _buildFilterChip(
              category.name ?? category.toString(),
              _selectedCategory == (category.name ?? category.toString()),
              () => setState(() =>
                  _selectedCategory = category.name ?? category.toString()),
            )),
      ],
    );
  }

  Widget _buildDropdownFilter(
    String hint,
    String? value,
    List<String> items,
    ValueChanged<String?> onChanged,
  ) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      ),
      items: [
        DropdownMenuItem<String>(
          value: null,
          child: Text('All ${hint.split(' ').last}s'),
        ),
        ...items.map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item.replaceAll('_', ' ').toUpperCase()),
            )),
      ],
      onChanged: onChanged,
    );
  }

  Widget _buildFundingRangeFilter() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                initialValue: _minFunding?.toString() ?? '',
                decoration: InputDecoration(
                  labelText: 'Min Amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  prefixText: 'XAF ',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _minFunding = double.tryParse(value);
                },
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: TextFormField(
                initialValue: _maxFunding?.toString() ?? '',
                decoration: InputDecoration(
                  labelText: 'Max Amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  prefixText: 'XAF ',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _maxFunding = double.tryParse(value);
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: [
            _buildFilterChip(
              'Under 100K',
              _maxFunding == 100000,
              () => setState(() {
                _minFunding = null;
                _maxFunding = 100000;
              }),
            ),
            _buildFilterChip(
              '100K - 500K',
              _minFunding == 100000 && _maxFunding == 500000,
              () => setState(() {
                _minFunding = 100000;
                _maxFunding = 500000;
              }),
            ),
            _buildFilterChip(
              '500K - 1M',
              _minFunding == 500000 && _maxFunding == 1000000,
              () => setState(() {
                _minFunding = 500000;
                _maxFunding = 1000000;
              }),
            ),
            _buildFilterChip(
              'Over 1M',
              _minFunding == 1000000,
              () => setState(() {
                _minFunding = 1000000;
                _maxFunding = null;
              }),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSortOptions() {
    return Column(
      children: [
        ..._sortOptions.map((option) => RadioListTile<String>(
              title: Text(
                option['label']!,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textPrimary,
                ),
              ),
              value: option['key']!,
              groupValue: _sortBy,
              onChanged: (value) => setState(() => _sortBy = value!),
              activeColor: AppColors.primary,
            )),
        SizedBox(height: 16.h),
        Row(
          children: [
            Expanded(
              child: _buildFilterChip(
                'Ascending',
                _sortOrder == 'asc',
                () => setState(() => _sortOrder = 'asc'),
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: _buildFilterChip(
                'Descending',
                _sortOrder == 'desc',
                () => setState(() => _sortOrder = 'desc'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFilterChip(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.gray200,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.gray200,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.sp,
            color: isSelected ? Colors.white : AppColors.textPrimary,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  void _clearAllFilters() {
    setState(() {
      _selectedCategory = null;
      _selectedSector = null;
      _selectedSubSector = null;
      _selectedLocation = null;
      _selectedFundingType = null;
      _selectedStatus = null;
      _selectedVisibility = null;
      _selectedPriority = null;
      _selectedCollaborationType = null;
      _minFunding = null;
      _maxFunding = null;
      _sortBy = 'createdAt';
      _sortOrder = 'desc';
    });
  }

  void _applyFilters() {
    widget.onApplyFilters({
      'category': _selectedCategory,
      'sector': _selectedSector,
      'subSector': _selectedSubSector,
      'location': _selectedLocation,
      'fundingType': _selectedFundingType,
      'status': _selectedStatus,
      'visibility': _selectedVisibility,
      'priority': _selectedPriority,
      'collaborationType': _selectedCollaborationType,
      'minFunding': _minFunding,
      'maxFunding': _maxFunding,
      'sortBy': _sortBy,
      'sortOrder': _sortOrder,
    });
    Navigator.pop(context);
  }
}
