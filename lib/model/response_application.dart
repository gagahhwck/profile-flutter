class ResponseApplications {
  final int currentPage;
  final List<Datum>? data;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final List<Link> links;
  final String nextPageUrl;
  final String path;
  final int perPage;
  final dynamic prevPageUrl;
  final int to;
  final int total;
  final bool success;

  ResponseApplications({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
    required this.success,
  });

  factory ResponseApplications.fromJson(Map<String, dynamic> json) =>
      ResponseApplications(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
        success: json["success"],
      );
}

class Datum {
  final int id;
  final String applicationGroupId;
  final String name;
  final String? image;
  final String feUrl;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? description;
  final String? isLogin;
  final dynamic order;
  final String code;
  final String beUrl;
  final String? roles;
  final StatusDisplay statusDisplay;

  Datum({
    required this.id,
    required this.applicationGroupId,
    required this.name,
    required this.image,
    required this.feUrl,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.description,
    required this.isLogin,
    required this.order,
    required this.code,
    required this.beUrl,
    required this.roles,
    required this.statusDisplay,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        applicationGroupId: json["application_group_id"],
        name: json["name"],
        image: json["image"],
        feUrl: json["fe_url"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        description: json["description"],
        isLogin: json["is_login"],
        order: json["order"],
        code: json["code"],
        beUrl: json["be_url"],
        roles: json["roles"],
        statusDisplay: statusDisplayValues.map[json["status_display"]]!,
      );
}

enum StatusDisplay { ACTIVE }

final statusDisplayValues = EnumValues({"Active": StatusDisplay.ACTIVE});

class Link {
  final String? url;
  final String label;
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
