class MyFile {
    MyFile({
       required this.id,
        this.orderId,
        this.fileType,
        this.visitLocation,
        this.applicantUserFullName,
        this.applicantUserPhoneNumber,
        this.creatorUserType,
        this.healthCertificateUpload,
        this.visitDate,
        this.visitTime,
        this.status,
    });

    int id;
    String? orderId;
    String? fileType;
    String? visitLocation;
    String? applicantUserFullName;
    String? applicantUserPhoneNumber;
    String? creatorUserType;
    bool? healthCertificateUpload;
    DateTime? visitDate;
    String? visitTime;
    String? status;

    factory MyFile.fromJson(Map<String, dynamic> json) => MyFile(
        id: json["id"],
        orderId: json["order_id"],
        fileType: json["file_type"],
        visitLocation: json["visit_location"],
        applicantUserFullName: json["applicant_user_full_name"],
        applicantUserPhoneNumber: json["applicant_user_phone_number"],
        creatorUserType: json["creator_user_type"],
        healthCertificateUpload: json["health_certificate_upload"],
        visitDate: DateTime.parse(json["visit_date"]),
        visitTime: json["visit_time"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": orderId,
        "file_type": fileType,
        "visit_location": visitLocation,
        "applicant_user_full_name": applicantUserFullName,
        "applicant_user_phone_number": applicantUserPhoneNumber,
        "creator_user_type": creatorUserType,
        "health_certificate_upload": healthCertificateUpload,
        "visit_date": "${visitDate?.year.toString().padLeft(4, '0')}-${visitDate?.month.toString().padLeft(2, '0')}-${visitDate?.day.toString().padLeft(2, '0')}",
        "visit_time": visitTime,
        "status": status,
    };
}
