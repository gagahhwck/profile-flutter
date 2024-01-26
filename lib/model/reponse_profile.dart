class ResponseProfile {
  final bool success;
  final Data? data;

  ResponseProfile({
    required this.success,
    this.data,
  });

  factory ResponseProfile.fromJson(Map<String, dynamic> json) =>
      ResponseProfile(
        success: json["success"],
        data: json["data"] != null ? Data.fromJson(json["data"]) : null,
      );
}

class Data {
  final int id;
  final String name;
  final String username;
  final dynamic avatar;
  final String email;
  final dynamic emailVerifiedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String genderId;
  final String status;
  final dynamic nik;
  final String cookieDevice;
  final String placeOfBirth;
  final dynamic emailPersonal;
  final String address;
  final String phoneNumber;
  final dynamic birthDate;
  final String bank;
  final String bankAccountName;
  final String bankAccountNumber;
  final String nickName;
  final dynamic countryId;
  final dynamic nikFinance;
  final dynamic npwp;
  final dynamic housePhone;
  final dynamic nationality;
  final dynamic jalan;
  final dynamic dusun;
  final dynamic rt;
  final dynamic rw;
  final dynamic kelurahan;
  final dynamic kodePos;
  final dynamic transportationId;
  final dynamic residenceTypeId;
  final dynamic religionId;
  final dynamic frontTitle;
  final String backTitle;
  final dynamic maritalStatus;
  final dynamic bio;
  final dynamic regionId;
  final dynamic country;
  final dynamic marriageStatus;
  final dynamic region;
  final dynamic religion;
  final DataEmployee employee;
  final MappingEmployeeUser mappingEmployeeUser;
  final Gender gender;
  final dynamic student;
  final dynamic lecturer;
  final List<String> roleNames;
  final List<String> permissionNames;
  final List<String> userType;
  final dynamic age;
  final String statusDisplay;

  Data({
    required this.id,
    required this.name,
    required this.username,
    required this.avatar,
    required this.email,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.genderId,
    required this.status,
    required this.nik,
    required this.cookieDevice,
    required this.placeOfBirth,
    required this.emailPersonal,
    required this.address,
    required this.phoneNumber,
    required this.birthDate,
    required this.bank,
    required this.bankAccountName,
    required this.bankAccountNumber,
    required this.nickName,
    required this.countryId,
    required this.nikFinance,
    required this.npwp,
    required this.housePhone,
    required this.nationality,
    required this.jalan,
    required this.dusun,
    required this.rt,
    required this.rw,
    required this.kelurahan,
    required this.kodePos,
    required this.transportationId,
    required this.residenceTypeId,
    required this.religionId,
    required this.frontTitle,
    required this.backTitle,
    required this.maritalStatus,
    required this.bio,
    required this.regionId,
    required this.country,
    required this.marriageStatus,
    required this.region,
    required this.religion,
    required this.employee,
    required this.mappingEmployeeUser,
    required this.gender,
    required this.student,
    required this.lecturer,
    required this.roleNames,
    required this.permissionNames,
    required this.userType,
    required this.age,
    required this.statusDisplay,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        avatar: json["avatar"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        genderId: json["gender_id"],
        status: json["status"],
        nik: json["nik"],
        cookieDevice: json["cookie_device"],
        placeOfBirth: json["place_of_birth"],
        emailPersonal: json["email_personal"],
        address: json["address"],
        phoneNumber: json["phone_number"],
        birthDate: json["birth_date"],
        bank: json["bank"],
        bankAccountName: json["bank_account_name"],
        bankAccountNumber: json["bank_account_number"],
        nickName: json["nick_name"],
        countryId: json["country_id"],
        nikFinance: json["nik_finance"],
        npwp: json["npwp"],
        housePhone: json["house_phone"],
        nationality: json["nationality"],
        jalan: json["jalan"],
        dusun: json["dusun"],
        rt: json["rt"],
        rw: json["rw"],
        kelurahan: json["kelurahan"],
        kodePos: json["kode_pos"],
        transportationId: json["transportation_id"],
        residenceTypeId: json["residence_type_id"],
        religionId: json["religion_id"],
        frontTitle: json["front_title"],
        backTitle: json["back_title"],
        maritalStatus: json["marital_status"],
        bio: json["bio"],
        regionId: json["region_id"],
        country: json["country"],
        marriageStatus: json["marriage_status"],
        region: json["region"],
        religion: json["religion"],
        employee: DataEmployee.fromJson(json["employee"]),
        mappingEmployeeUser:
            MappingEmployeeUser.fromJson(json["mapping_employee_user"]),
        gender: Gender.fromJson(json["gender"]),
        student: json["student"],
        lecturer: json["lecturer"],
        roleNames: List<String>.from(json["role_names"].map((x) => x)),
        permissionNames:
            List<String>.from(json["permission_names"].map((x) => x)),
        userType: List<String>.from(json["user_type"].map((x) => x)),
        age: json["age"],
        statusDisplay: json["status_display"],
      );
}

class DataEmployee {
  final String userId;
  final String name;
  final String headId;
  final String nrp;
  final dynamic appointmentDate;
  final dynamic appointmentNumber;
  final dynamic entryDate;
  final dynamic avatar;
  final dynamic createdAt;
  final dynamic updatedAt;
  final int id;
  final String positionId;
  final dynamic slug;
  final dynamic profile;
  final EmployeePosition position;

  DataEmployee({
    required this.userId,
    required this.name,
    required this.headId,
    required this.nrp,
    required this.appointmentDate,
    required this.appointmentNumber,
    required this.entryDate,
    required this.avatar,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.positionId,
    required this.slug,
    required this.profile,
    required this.position,
  });

  factory DataEmployee.fromJson(Map<String, dynamic> json) => DataEmployee(
        userId: json["user_id"],
        name: json["name"],
        headId: json["head_id"],
        nrp: json["nrp"],
        appointmentDate: json["appointment_date"],
        appointmentNumber: json["appointment_number"],
        entryDate: json["entry_date"],
        avatar: json["avatar"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        id: json["id"],
        positionId: json["position_id"],
        slug: json["slug"],
        profile: json["profile"],
        position: EmployeePosition.fromJson(json["position"]),
      );
}

class EmployeePosition {
  final int id;
  final String headId;
  final String name;
  final dynamic code;
  final dynamic nameEnglish;
  final DateTime createdAt;
  final DateTime updatedAt;

  EmployeePosition({
    required this.id,
    required this.headId,
    required this.name,
    required this.code,
    required this.nameEnglish,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeePosition.fromJson(Map<String, dynamic> json) =>
      EmployeePosition(
        id: json["id"],
        headId: json["head_id"],
        name: json["name"],
        code: json["code"],
        nameEnglish: json["name_english"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class Gender {
  final int id;
  final String name;

  Gender({
    required this.id,
    required this.name,
  });

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
        id: json["id"],
        name: json["name"],
      );
}

class MappingEmployeeUser {
  final int id;
  final String employeeIdentityNumber;
  final String userId;
  final String activeStatus;
  final DateTime createdAt;
  final String createdBy;
  final DateTime updatedAt;
  final String updatedBy;
  final dynamic etlTime;
  final String trial293;
  final MappingEmployeeUserEmployee employee;
  final EmploymentStatusHistory employmentStatusHistory;

  MappingEmployeeUser({
    required this.id,
    required this.employeeIdentityNumber,
    required this.userId,
    required this.activeStatus,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
    required this.etlTime,
    required this.trial293,
    required this.employee,
    required this.employmentStatusHistory,
  });

  factory MappingEmployeeUser.fromJson(Map<String, dynamic> json) =>
      MappingEmployeeUser(
        id: json["id"],
        employeeIdentityNumber: json["employee_identity_number"],
        userId: json["user_id"],
        activeStatus: json["active_status"],
        createdAt: DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        updatedAt: DateTime.parse(json["updated_at"]),
        updatedBy: json["updated_by"],
        etlTime: json["etl_time"],
        trial293: json["TRIAL293"],
        employee: MappingEmployeeUserEmployee.fromJson(json["employee"]),
        employmentStatusHistory:
            EmploymentStatusHistory.fromJson(json["employment_status_history"]),
      );
}

class MappingEmployeeUserEmployee {
  final String identifyNumber;
  final String identityCardNumber;
  final String fullname;
  final DateTime birthDate;
  final String birthPlace;
  final String gender;
  final String religion;
  final String bloodType;
  final dynamic frontTitle;
  final String backTitle;
  final dynamic frontTitleShowStatus;
  final dynamic backTitleShowStatus;
  final String height;
  final String weight;
  final dynamic lecturerCode;
  final DateTime workStartDate;
  final dynamic workEndDate;
  final String taxIdNumber;
  final dynamic lecturerRegistrationNumber;
  final String healthInsuranceNumber;
  final dynamic familyCardNumber;
  final dynamic birthCertificateNumber;
  final String photoUrl;
  final DateTime createdAt;
  final String createdBy;
  final DateTime updatedAt;
  final String updatedBy;
  final dynamic etlTime;
  final dynamic telkomIdentifyNumber;
  final String bloodRhesusType;
  final dynamic employeeDischargeTypeId;
  final String activeStatus;
  final dynamic passportNumber;
  final dynamic kitasNumber;
  final String employmentInsuranceNumber;
  final String trial195;
  final PositionHistory positionHistory;

  MappingEmployeeUserEmployee({
    required this.identifyNumber,
    required this.identityCardNumber,
    required this.fullname,
    required this.birthDate,
    required this.birthPlace,
    required this.gender,
    required this.religion,
    required this.bloodType,
    required this.frontTitle,
    required this.backTitle,
    required this.frontTitleShowStatus,
    required this.backTitleShowStatus,
    required this.height,
    required this.weight,
    required this.lecturerCode,
    required this.workStartDate,
    required this.workEndDate,
    required this.taxIdNumber,
    required this.lecturerRegistrationNumber,
    required this.healthInsuranceNumber,
    required this.familyCardNumber,
    required this.birthCertificateNumber,
    required this.photoUrl,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
    required this.etlTime,
    required this.telkomIdentifyNumber,
    required this.bloodRhesusType,
    required this.employeeDischargeTypeId,
    required this.activeStatus,
    required this.passportNumber,
    required this.kitasNumber,
    required this.employmentInsuranceNumber,
    required this.trial195,
    required this.positionHistory,
  });

  factory MappingEmployeeUserEmployee.fromJson(Map<String, dynamic> json) =>
      MappingEmployeeUserEmployee(
        identifyNumber: json["identify_number"],
        identityCardNumber: json["identity_card_number"],
        fullname: json["fullname"],
        birthDate: DateTime.parse(json["birth_date"]),
        birthPlace: json["birth_place"],
        gender: json["gender"],
        religion: json["religion"],
        bloodType: json["blood_type"],
        frontTitle: json["front_title"],
        backTitle: json["back_title"],
        frontTitleShowStatus: json["front_title_show_status"],
        backTitleShowStatus: json["back_title_show_status"],
        height: json["height"],
        weight: json["weight"],
        lecturerCode: json["lecturer_code"],
        workStartDate: DateTime.parse(json["work_start_date"]),
        workEndDate: json["work_end_date"],
        taxIdNumber: json["tax_id_number"],
        lecturerRegistrationNumber: json["lecturer_registration_number"],
        healthInsuranceNumber: json["health_insurance_number"],
        familyCardNumber: json["family_card_number"],
        birthCertificateNumber: json["birth_certificate_number"],
        photoUrl: json["photo_url"],
        createdAt: DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        updatedAt: DateTime.parse(json["updated_at"]),
        updatedBy: json["updated_by"],
        etlTime: json["etl_time"],
        telkomIdentifyNumber: json["telkom_identify_number"],
        bloodRhesusType: json["blood_rhesus_type"],
        employeeDischargeTypeId: json["employee_discharge_type_id"],
        activeStatus: json["active_status"],
        passportNumber: json["passport_number"],
        kitasNumber: json["kitas_number"],
        employmentInsuranceNumber: json["employment_insurance_number"],
        trial195: json["TRIAL195"],
        positionHistory: PositionHistory.fromJson(json["position_history"]),
      );
}

class PositionHistory {
  final int id;
  final String positionId;
  final String employeeIdentityNumber;
  final DateTime startDate;
  final dynamic endDate;
  final DateTime createdAt;
  final String createdBy;
  final DateTime updatedAt;
  final dynamic updatedBy;
  final dynamic etlTime;
  final String activeStatus;
  final String homebaseStatus;
  final String trial349;
  final PositionHistoryPosition position;

  PositionHistory({
    required this.id,
    required this.positionId,
    required this.employeeIdentityNumber,
    required this.startDate,
    required this.endDate,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
    required this.etlTime,
    required this.activeStatus,
    required this.homebaseStatus,
    required this.trial349,
    required this.position,
  });

  factory PositionHistory.fromJson(Map<String, dynamic> json) =>
      PositionHistory(
        id: json["id"],
        positionId: json["position_id"],
        employeeIdentityNumber: json["employee_identity_number"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: json["end_date"],
        createdAt: DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        updatedAt: DateTime.parse(json["updated_at"]),
        updatedBy: json["updated_by"],
        etlTime: json["etl_time"],
        activeStatus: json["active_status"],
        homebaseStatus: json["homebase_status"],
        trial349: json["TRIAL349"],
        position: PositionHistoryPosition.fromJson(json["position"]),
      );
}

class PositionHistoryPosition {
  final int id;
  final String workLocationId;
  final String positionParentId;
  final String detailName;
  final String description;
  final String activeStatus;
  final DateTime createdAt;
  final String createdBy;
  final DateTime updatedAt;
  final String updatedBy;
  final dynamic etlTime;
  final DateTime startDate;
  final dynamic endDate;
  final String tier;
  final String mainPositionStatus;
  final dynamic positionPrevId;
  final String positionCategoryId;
  final String quota;
  final dynamic code;
  final dynamic nameEnglish;
  final String trial365;

  PositionHistoryPosition({
    required this.id,
    required this.workLocationId,
    required this.positionParentId,
    required this.detailName,
    required this.description,
    required this.activeStatus,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
    required this.etlTime,
    required this.startDate,
    required this.endDate,
    required this.tier,
    required this.mainPositionStatus,
    required this.positionPrevId,
    required this.positionCategoryId,
    required this.quota,
    required this.code,
    required this.nameEnglish,
    required this.trial365,
  });

  factory PositionHistoryPosition.fromJson(Map<String, dynamic> json) =>
      PositionHistoryPosition(
        id: json["id"],
        workLocationId: json["work_location_id"],
        positionParentId: json["position_parent_id"],
        detailName: json["detail_name"],
        description: json["description"],
        activeStatus: json["active_status"],
        createdAt: DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        updatedAt: DateTime.parse(json["updated_at"]),
        updatedBy: json["updated_by"],
        etlTime: json["etl_time"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: json["end_date"],
        tier: json["tier"],
        mainPositionStatus: json["main_position_status"],
        positionPrevId: json["position_prev_id"],
        positionCategoryId: json["position_category_id"],
        quota: json["quota"],
        code: json["code"],
        nameEnglish: json["name_english"],
        trial365: json["TRIAL365"],
      );
}

class EmploymentStatusHistory {
  final int id;
  final String employmentStatusId;
  final String employeeIdentifyNumber;
  final DateTime startDate;
  final dynamic endDate;
  final DateTime createdAt;
  final String createdBy;
  final DateTime updatedAt;
  final String updatedBy;
  final dynamic etlTime;
  final String employeeIdentityNumber;
  final dynamic instIdentityNumber;
  final String activeStatus;
  final String employmentCategoryId;
  final String approvalStatus;
  final String approvalBy;
  final DateTime approvalDate;
  final String approvalComment;
  final dynamic civilServantNumber;
  final String trial238;

  EmploymentStatusHistory({
    required this.id,
    required this.employmentStatusId,
    required this.employeeIdentifyNumber,
    required this.startDate,
    required this.endDate,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
    required this.etlTime,
    required this.employeeIdentityNumber,
    required this.instIdentityNumber,
    required this.activeStatus,
    required this.employmentCategoryId,
    required this.approvalStatus,
    required this.approvalBy,
    required this.approvalDate,
    required this.approvalComment,
    required this.civilServantNumber,
    required this.trial238,
  });

  factory EmploymentStatusHistory.fromJson(Map<String, dynamic> json) =>
      EmploymentStatusHistory(
        id: json["id"],
        employmentStatusId: json["employment_status_id"],
        employeeIdentifyNumber: json["employee_identify_number"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: json["end_date"],
        createdAt: DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        updatedAt: DateTime.parse(json["updated_at"]),
        updatedBy: json["updated_by"],
        etlTime: json["etl_time"],
        employeeIdentityNumber: json["employee_identity_number"],
        instIdentityNumber: json["inst_identity_number"],
        activeStatus: json["active_status"],
        employmentCategoryId: json["employment_category_id"],
        approvalStatus: json["approval_status"],
        approvalBy: json["approval_by"],
        approvalDate: DateTime.parse(json["approval_date"]),
        approvalComment: json["approval_comment"],
        civilServantNumber: json["civil_servant_number"],
        trial238: json["TRIAL238"],
      );
}
