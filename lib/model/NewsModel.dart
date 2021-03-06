class Autogenerated {
  String showapiResError;
  String showapiResId;
  int showapiResCode;
  ShowapiResBody showapiResBody;

  Autogenerated(
      {this.showapiResError,
      this.showapiResId,
      this.showapiResCode,
      this.showapiResBody});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    showapiResError = json['showapi_res_error'];
    showapiResId = json['showapi_res_id'];
    showapiResCode = json['showapi_res_code'];
    showapiResBody = json['showapi_res_body'] != null
        ? new ShowapiResBody.fromJson(json['showapi_res_body'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['showapi_res_error'] = this.showapiResError;
    data['showapi_res_id'] = this.showapiResId;
    data['showapi_res_code'] = this.showapiResCode;
    if (this.showapiResBody != null) {
      data['showapi_res_body'] = this.showapiResBody.toJson();
    }
    return data;
  }
}

class ShowapiResBody {
  int retCode;
  Pagebean pagebean;

  ShowapiResBody({this.retCode, this.pagebean});

  ShowapiResBody.fromJson(Map<String, dynamic> json) {
    retCode = json['ret_code'];
    pagebean = json['pagebean'] != null
        ? new Pagebean.fromJson(json['pagebean'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ret_code'] = this.retCode;
    if (this.pagebean != null) {
      data['pagebean'] = this.pagebean.toJson();
    }
    return data;
  }
}

class Pagebean {
  int allPages;
  List<Contentlist> contentlist;
  int currentPage;
  int allNum;
  int maxResult;

  Pagebean(
      {this.allPages,
      this.contentlist,
      this.currentPage,
      this.allNum,
      this.maxResult});

  Pagebean.fromJson(Map<String, dynamic> json) {
    allPages = json['allPages'];
    if (json['contentlist'] != null) {
      contentlist = new List<Contentlist>();
      json['contentlist'].forEach((v) {
        contentlist.add(new Contentlist.fromJson(v));
      });
    }
    currentPage = json['currentPage'];
    allNum = json['allNum'];
    maxResult = json['maxResult'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['allPages'] = this.allPages;
    if (this.contentlist != null) {
      data['contentlist'] = this.contentlist.map((v) => v.toJson()).toList();
    }
    data['currentPage'] = this.currentPage;
    data['allNum'] = this.allNum;
    data['maxResult'] = this.maxResult;
    return data;
  }
}

class Contentlist {
  String pubDate;
  String channelName;
  String channelId;
  String link;
  List<String> allList;
  String id;
  bool havePic;
  String title;
  List<Imageurls> imageurls;
  String source;

  Contentlist(
      {this.pubDate,
      this.channelName,
      this.channelId,
      this.link,
      this.allList,
      this.id,
      this.havePic,
      this.title,
      this.imageurls,
      this.source});

  Contentlist.fromJson(Map<String, dynamic> json) {
    pubDate = json['pubDate'];
    channelName = json['channelName'];
    channelId = json['channelId'];
    link = json['link'];
    allList = json['allList'].cast<String>();
    id = json['id'];
    havePic = json['havePic'];
    title = json['title'];
    imageurls = new List<Imageurls>();
    if (json['imageurls'] != null) {
      json['imageurls'].forEach((v) {
        imageurls.add(new Imageurls.fromJson(v));
      });
    }
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pubDate'] = this.pubDate;
    data['channelName'] = this.channelName;
    data['channelId'] = this.channelId;
    data['link'] = this.link;
    data['allList'] = this.allList;
    data['id'] = this.id;
    data['havePic'] = this.havePic;
    data['title'] = this.title;
    data['imageurls'] = this.imageurls.map((v) => v).toList();
    data['source'] = this.source;
    return data;
  }
}

class Imageurls {
  int height;
  int width;
  String url;

  Imageurls({this.height, this.width, this.url});

  Imageurls.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['url'] = this.url;
    return data;
  }
}
