// To parse this JSON data, do
//
//     final listing = listingFromJson(jsonString);

import 'dart:convert';

Listing listingFromJson(String str) => Listing.fromJson(json.decode(str));

String listingToJson(Listing data) => json.encode(data.toJson());

class Listing {
  Listing({
    this.kind,
    this.data,
  });

  String kind;
  ListingData data;

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
    kind: json["kind"],
    data: ListingData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "data": data.toJson(),
  };
}

class ListingData {
  ListingData({
    this.modhash,
    this.dist,
    this.children,
    this.after,
    this.before,
  });

  String modhash;
  int dist;
  List<Child> children;
  String after;
  dynamic before;

  factory ListingData.fromJson(Map<String, dynamic> json) => ListingData(
    modhash: json["modhash"],
    dist: json["dist"],
    children: List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
    after: json["after"],
    before: json["before"],
  );

  Map<String, dynamic> toJson() => {
    "modhash": modhash,
    "dist": dist,
    "children": List<dynamic>.from(children.map((x) => x.toJson())),
    "after": after,
    "before": before,
  };
}

class Child {
  Child({
    this.kind,
    this.data,
  });

  Kind kind;
  ChildData data;

  factory Child.fromJson(Map<String, dynamic> json) => Child(
    kind: kindValues.map[json["kind"]],
    data: ChildData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kindValues.reverse[kind],
    "data": data.toJson(),
  };
}

class ChildData {
  ChildData({
    this.approvedAtUtc,
    this.subreddit,
    this.selftext,
    this.authorFullname,
    this.saved,
    this.modReasonTitle,
    this.gilded,
    this.clicked,
    this.title,
    this.linkFlairRichtext,
    this.subredditNamePrefixed,
    this.hidden,
    this.pwls,
    this.linkFlairCssClass,
    this.downs,
    this.thumbnailHeight,
    this.topAwardedType,
    this.hideScore,
    this.name,
    this.quarantine,
    this.linkFlairTextColor,
    this.upvoteRatio,
    this.authorFlairBackgroundColor,
    this.subredditType,
    this.ups,
    this.totalAwardsReceived,
    this.mediaEmbed,
    this.thumbnailWidth,
    this.authorFlairTemplateId,
    this.isOriginalContent,
    this.userReports,
    this.secureMedia,
    this.isRedditMediaDomain,
    this.isMeta,
    this.category,
    this.secureMediaEmbed,
    this.linkFlairText,
    this.canModPost,
    this.score,
    this.approvedBy,
    this.authorPremium,
    this.thumbnail,
    this.edited,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.gildings,
    this.postHint,
    this.contentCategories,
    this.isSelf,
    this.modNote,
    this.created,
    this.linkFlairType,
    this.wls,
    this.removedByCategory,
    this.bannedBy,
    this.authorFlairType,
    this.domain,
    this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.urlOverriddenByDest,
    this.viewCount,
    this.archived,
    this.noFollow,
    this.isCrosspostable,
    this.pinned,
    this.over18,
    this.preview,
    this.allAwardings,
    this.awarders,
    this.mediaOnly,
    this.canGild,
    this.spoiler,
    this.locked,
    this.authorFlairText,
    this.treatmentTags,
    this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    this.subredditId,
    this.modReasonBy,
    this.removalReason,
    this.linkFlairBackgroundColor,
    this.id,
    this.isRobotIndexable,
    this.reportReasons,
    this.author,
    this.discussionType,
    this.numComments,
    this.sendReplies,
    this.whitelistStatus,
    this.contestMode,
    this.modReports,
    this.authorPatreonFlair,
    this.authorFlairTextColor,
    this.permalink,
    this.parentWhitelistStatus,
    this.stickied,
    this.url,
    this.subredditSubscribers,
    this.createdUtc,
    this.numCrossposts,
    this.media,
    this.isVideo,
    this.linkFlairTemplateId,
    this.isGallery,
    this.mediaMetadata,
    this.galleryData,
  });

  dynamic approvedAtUtc;
  String subreddit;
  String selftext;
  String authorFullname;
  bool saved;
  dynamic modReasonTitle;
  int gilded;
  bool clicked;
  String title;
  List<FlairRichtext> linkFlairRichtext;
  String subredditNamePrefixed;
  bool hidden;
  int pwls;
  String linkFlairCssClass;
  int downs;
  int thumbnailHeight;
  String topAwardedType;
  bool hideScore;
  String name;
  bool quarantine;
  FlairTextColor linkFlairTextColor;
  double upvoteRatio;
  String authorFlairBackgroundColor;
  SubredditType subredditType;
  int ups;
  int totalAwardsReceived;
  MediaEmbed mediaEmbed;
  int thumbnailWidth;
  String authorFlairTemplateId;
  bool isOriginalContent;
  List<dynamic> userReports;
  Media secureMedia;
  bool isRedditMediaDomain;
  bool isMeta;
  dynamic category;
  MediaEmbed secureMediaEmbed;
  String linkFlairText;
  bool canModPost;
  int score;
  dynamic approvedBy;
  bool authorPremium;
  String thumbnail;
  dynamic edited;
  String authorFlairCssClass;
  List<FlairRichtext> authorFlairRichtext;
  Gildings gildings;
  String postHint;
  List<String> contentCategories;
  bool isSelf;
  dynamic modNote;
  double created;
  FlairType linkFlairType;
  int wls;
  dynamic removedByCategory;
  dynamic bannedBy;
  FlairType authorFlairType;
  String domain;
  bool allowLiveComments;
  String selftextHtml;
  dynamic likes;
  String suggestedSort;
  dynamic bannedAtUtc;
  String urlOverriddenByDest;
  dynamic viewCount;
  bool archived;
  bool noFollow;
  bool isCrosspostable;
  bool pinned;
  bool over18;
  Preview preview;
  List<AllAwarding> allAwardings;
  List<dynamic> awarders;
  bool mediaOnly;
  bool canGild;
  bool spoiler;
  bool locked;
  String authorFlairText;
  List<dynamic> treatmentTags;
  bool visited;
  dynamic removedBy;
  dynamic numReports;
  dynamic distinguished;
  String subredditId;
  dynamic modReasonBy;
  dynamic removalReason;
  LinkFlairBackgroundColor linkFlairBackgroundColor;
  String id;
  bool isRobotIndexable;
  dynamic reportReasons;
  String author;
  dynamic discussionType;
  int numComments;
  bool sendReplies;
  WhitelistStatus whitelistStatus;
  bool contestMode;
  List<dynamic> modReports;
  bool authorPatreonFlair;
  FlairTextColor authorFlairTextColor;
  String permalink;
  WhitelistStatus parentWhitelistStatus;
  bool stickied;
  String url;
  int subredditSubscribers;
  double createdUtc;
  int numCrossposts;
  Media media;
  bool isVideo;
  String linkFlairTemplateId;
  bool isGallery;
  Map<String, MediaMetadatum> mediaMetadata;
  GalleryData galleryData;

  factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
    approvedAtUtc: json["approved_at_utc"],
    subreddit: json["subreddit"],
    selftext: json["selftext"],
    authorFullname: json["author_fullname"],
    saved: json["saved"],
    modReasonTitle: json["mod_reason_title"],
    gilded: json["gilded"],
    clicked: json["clicked"],
    title: json["title"],
    linkFlairRichtext: List<FlairRichtext>.from(json["link_flair_richtext"].map((x) => FlairRichtext.fromJson(x))),
    subredditNamePrefixed: json["subreddit_name_prefixed"],
    hidden: json["hidden"],
    pwls: json["pwls"],
    linkFlairCssClass: json["link_flair_css_class"] == null ? null : json["link_flair_css_class"],
    downs: json["downs"],
    thumbnailHeight: json["thumbnail_height"] == null ? null : json["thumbnail_height"],
    topAwardedType: json["top_awarded_type"] == null ? null : json["top_awarded_type"],
    hideScore: json["hide_score"],
    name: json["name"],
    quarantine: json["quarantine"],
    linkFlairTextColor: flairTextColorValues.map[json["link_flair_text_color"]],
    upvoteRatio: json["upvote_ratio"].toDouble(),
    authorFlairBackgroundColor: json["author_flair_background_color"] == null ? null : json["author_flair_background_color"],
    subredditType: subredditTypeValues.map[json["subreddit_type"]],
    ups: json["ups"],
    totalAwardsReceived: json["total_awards_received"],
    mediaEmbed: MediaEmbed.fromJson(json["media_embed"]),
    thumbnailWidth: json["thumbnail_width"] == null ? null : json["thumbnail_width"],
    authorFlairTemplateId: json["author_flair_template_id"] == null ? null : json["author_flair_template_id"],
    isOriginalContent: json["is_original_content"],
    userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
    secureMedia: json["secure_media"] == null ? null : Media.fromJson(json["secure_media"]),
    isRedditMediaDomain: json["is_reddit_media_domain"],
    isMeta: json["is_meta"],
    category: json["category"],
    secureMediaEmbed: MediaEmbed.fromJson(json["secure_media_embed"]),
    linkFlairText: json["link_flair_text"] == null ? null : json["link_flair_text"],
    canModPost: json["can_mod_post"],
    score: json["score"],
    approvedBy: json["approved_by"],
    authorPremium: json["author_premium"],
    thumbnail: json["thumbnail"],
    edited: json["edited"],
    authorFlairCssClass: json["author_flair_css_class"] == null ? null : json["author_flair_css_class"],
    authorFlairRichtext: List<FlairRichtext>.from(json["author_flair_richtext"].map((x) => FlairRichtext.fromJson(x))),
    gildings: Gildings.fromJson(json["gildings"]),
    postHint: json["post_hint"] == null ? null : json["post_hint"],
    contentCategories: json["content_categories"] == null ? null : List<String>.from(json["content_categories"].map((x) => x)),
    isSelf: json["is_self"],
    modNote: json["mod_note"],
    created: json["created"],
    linkFlairType: flairTypeValues.map[json["link_flair_type"]],
    wls: json["wls"],
    removedByCategory: json["removed_by_category"],
    bannedBy: json["banned_by"],
    authorFlairType: flairTypeValues.map[json["author_flair_type"]],
    domain: json["domain"],
    allowLiveComments: json["allow_live_comments"],
    selftextHtml: json["selftext_html"] == null ? null : json["selftext_html"],
    likes: json["likes"],
    suggestedSort: json["suggested_sort"] == null ? null : json["suggested_sort"],
    bannedAtUtc: json["banned_at_utc"],
    urlOverriddenByDest: json["url_overridden_by_dest"] == null ? null : json["url_overridden_by_dest"],
    viewCount: json["view_count"],
    archived: json["archived"],
    noFollow: json["no_follow"],
    isCrosspostable: json["is_crosspostable"],
    pinned: json["pinned"],
    over18: json["over_18"],
    preview: json["preview"] == null ? null : Preview.fromJson(json["preview"]),
    allAwardings: List<AllAwarding>.from(json["all_awardings"].map((x) => AllAwarding.fromJson(x))),
    awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
    mediaOnly: json["media_only"],
    canGild: json["can_gild"],
    spoiler: json["spoiler"],
    locked: json["locked"],
    authorFlairText: json["author_flair_text"] == null ? null : json["author_flair_text"],
    treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
    visited: json["visited"],
    removedBy: json["removed_by"],
    numReports: json["num_reports"],
    distinguished: json["distinguished"],
    subredditId: json["subreddit_id"],
    modReasonBy: json["mod_reason_by"],
    removalReason: json["removal_reason"],
    linkFlairBackgroundColor: linkFlairBackgroundColorValues.map[json["link_flair_background_color"]],
    id: json["id"],
    isRobotIndexable: json["is_robot_indexable"],
    reportReasons: json["report_reasons"],
    author: json["author"],
    discussionType: json["discussion_type"],
    numComments: json["num_comments"],
    sendReplies: json["send_replies"],
    whitelistStatus: whitelistStatusValues.map[json["whitelist_status"]],
    contestMode: json["contest_mode"],
    modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
    authorPatreonFlair: json["author_patreon_flair"],
    authorFlairTextColor: json["author_flair_text_color"] == null ? null : flairTextColorValues.map[json["author_flair_text_color"]],
    permalink: json["permalink"],
    parentWhitelistStatus: whitelistStatusValues.map[json["parent_whitelist_status"]],
    stickied: json["stickied"],
    url: json["url"],
    subredditSubscribers: json["subreddit_subscribers"],
    createdUtc: json["created_utc"],
    numCrossposts: json["num_crossposts"],
    media: json["media"] == null ? null : Media.fromJson(json["media"]),
    isVideo: json["is_video"],
    linkFlairTemplateId: json["link_flair_template_id"] == null ? null : json["link_flair_template_id"],
    isGallery: json["is_gallery"] == null ? null : json["is_gallery"],
    mediaMetadata: json["media_metadata"] == null ? null : Map.from(json["media_metadata"]).map((k, v) => MapEntry<String, MediaMetadatum>(k, MediaMetadatum.fromJson(v))),
    galleryData: json["gallery_data"] == null ? null : GalleryData.fromJson(json["gallery_data"]),
  );

  Map<String, dynamic> toJson() => {
    "approved_at_utc": approvedAtUtc,
    "subreddit": subreddit,
    "selftext": selftext,
    "author_fullname": authorFullname,
    "saved": saved,
    "mod_reason_title": modReasonTitle,
    "gilded": gilded,
    "clicked": clicked,
    "title": title,
    "link_flair_richtext": List<dynamic>.from(linkFlairRichtext.map((x) => x.toJson())),
    "subreddit_name_prefixed": subredditNamePrefixed,
    "hidden": hidden,
    "pwls": pwls,
    "link_flair_css_class": linkFlairCssClass == null ? null : linkFlairCssClass,
    "downs": downs,
    "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
    "top_awarded_type": topAwardedType == null ? null : topAwardedType,
    "hide_score": hideScore,
    "name": name,
    "quarantine": quarantine,
    "link_flair_text_color": flairTextColorValues.reverse[linkFlairTextColor],
    "upvote_ratio": upvoteRatio,
    "author_flair_background_color": authorFlairBackgroundColor == null ? null : authorFlairBackgroundColor,
    "subreddit_type": subredditTypeValues.reverse[subredditType],
    "ups": ups,
    "total_awards_received": totalAwardsReceived,
    "media_embed": mediaEmbed.toJson(),
    "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
    "author_flair_template_id": authorFlairTemplateId == null ? null : authorFlairTemplateId,
    "is_original_content": isOriginalContent,
    "user_reports": List<dynamic>.from(userReports.map((x) => x)),
    "secure_media": secureMedia == null ? null : secureMedia.toJson(),
    "is_reddit_media_domain": isRedditMediaDomain,
    "is_meta": isMeta,
    "category": category,
    "secure_media_embed": secureMediaEmbed.toJson(),
    "link_flair_text": linkFlairText == null ? null : linkFlairText,
    "can_mod_post": canModPost,
    "score": score,
    "approved_by": approvedBy,
    "author_premium": authorPremium,
    "thumbnail": thumbnail,
    "edited": edited,
    "author_flair_css_class": authorFlairCssClass == null ? null : authorFlairCssClass,
    "author_flair_richtext": List<dynamic>.from(authorFlairRichtext.map((x) => x.toJson())),
    "gildings": gildings.toJson(),
    "post_hint": postHint == null ? null : postHint,
    "content_categories": contentCategories == null ? null : List<dynamic>.from(contentCategories.map((x) => x)),
    "is_self": isSelf,
    "mod_note": modNote,
    "created": created,
    "link_flair_type": flairTypeValues.reverse[linkFlairType],
    "wls": wls,
    "removed_by_category": removedByCategory,
    "banned_by": bannedBy,
    "author_flair_type": flairTypeValues.reverse[authorFlairType],
    "domain": domain,
    "allow_live_comments": allowLiveComments,
    "selftext_html": selftextHtml == null ? null : selftextHtml,
    "likes": likes,
    "suggested_sort": suggestedSort == null ? null : suggestedSort,
    "banned_at_utc": bannedAtUtc,
    "url_overridden_by_dest": urlOverriddenByDest == null ? null : urlOverriddenByDest,
    "view_count": viewCount,
    "archived": archived,
    "no_follow": noFollow,
    "is_crosspostable": isCrosspostable,
    "pinned": pinned,
    "over_18": over18,
    "preview": preview == null ? null : preview.toJson(),
    "all_awardings": List<dynamic>.from(allAwardings.map((x) => x.toJson())),
    "awarders": List<dynamic>.from(awarders.map((x) => x)),
    "media_only": mediaOnly,
    "can_gild": canGild,
    "spoiler": spoiler,
    "locked": locked,
    "author_flair_text": authorFlairText == null ? null : authorFlairText,
    "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
    "visited": visited,
    "removed_by": removedBy,
    "num_reports": numReports,
    "distinguished": distinguished,
    "subreddit_id": subredditId,
    "mod_reason_by": modReasonBy,
    "removal_reason": removalReason,
    "link_flair_background_color": linkFlairBackgroundColorValues.reverse[linkFlairBackgroundColor],
    "id": id,
    "is_robot_indexable": isRobotIndexable,
    "report_reasons": reportReasons,
    "author": author,
    "discussion_type": discussionType,
    "num_comments": numComments,
    "send_replies": sendReplies,
    "whitelist_status": whitelistStatusValues.reverse[whitelistStatus],
    "contest_mode": contestMode,
    "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
    "author_patreon_flair": authorPatreonFlair,
    "author_flair_text_color": authorFlairTextColor == null ? null : flairTextColorValues.reverse[authorFlairTextColor],
    "permalink": permalink,
    "parent_whitelist_status": whitelistStatusValues.reverse[parentWhitelistStatus],
    "stickied": stickied,
    "url": url,
    "subreddit_subscribers": subredditSubscribers,
    "created_utc": createdUtc,
    "num_crossposts": numCrossposts,
    "media": media == null ? null : media.toJson(),
    "is_video": isVideo,
    "link_flair_template_id": linkFlairTemplateId == null ? null : linkFlairTemplateId,
    "is_gallery": isGallery == null ? null : isGallery,
    "media_metadata": mediaMetadata == null ? null : Map.from(mediaMetadata).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "gallery_data": galleryData == null ? null : galleryData.toJson(),
  };
}

class AllAwarding {
  AllAwarding({
    this.giverCoinReward,
    this.subredditId,
    this.isNew,
    this.daysOfDripExtension,
    this.coinPrice,
    this.id,
    this.pennyDonate,
    this.awardSubType,
    this.coinReward,
    this.iconUrl,
    this.daysOfPremium,
    this.tiersByRequiredAwardings,
    this.resizedIcons,
    this.iconWidth,
    this.staticIconWidth,
    this.startDate,
    this.isEnabled,
    this.awardingsRequiredToGrantBenefits,
    this.description,
    this.endDate,
    this.subredditCoinReward,
    this.count,
    this.staticIconHeight,
    this.name,
    this.resizedStaticIcons,
    this.iconFormat,
    this.iconHeight,
    this.pennyPrice,
    this.awardType,
    this.staticIconUrl,
  });

  int giverCoinReward;
  dynamic subredditId;
  bool isNew;
  int daysOfDripExtension;
  int coinPrice;
  String id;
  int pennyDonate;
  AwardSubType awardSubType;
  int coinReward;
  String iconUrl;
  int daysOfPremium;
  Map<String, TiersByRequiredAwarding> tiersByRequiredAwardings;
  List<ResizedIcon> resizedIcons;
  int iconWidth;
  int staticIconWidth;
  dynamic startDate;
  bool isEnabled;
  int awardingsRequiredToGrantBenefits;
  String description;
  dynamic endDate;
  int subredditCoinReward;
  int count;
  int staticIconHeight;
  String name;
  List<ResizedIcon> resizedStaticIcons;
  Format iconFormat;
  int iconHeight;
  int pennyPrice;
  AwardType awardType;
  String staticIconUrl;

  factory AllAwarding.fromJson(Map<String, dynamic> json) => AllAwarding(
    giverCoinReward: json["giver_coin_reward"] == null ? null : json["giver_coin_reward"],
    subredditId: json["subreddit_id"],
    isNew: json["is_new"],
    daysOfDripExtension: json["days_of_drip_extension"],
    coinPrice: json["coin_price"],
    id: json["id"],
    pennyDonate: json["penny_donate"] == null ? null : json["penny_donate"],
    awardSubType: awardSubTypeValues.map[json["award_sub_type"]],
    coinReward: json["coin_reward"],
    iconUrl: json["icon_url"],
    daysOfPremium: json["days_of_premium"],
    tiersByRequiredAwardings: json["tiers_by_required_awardings"] == null ? null : Map.from(json["tiers_by_required_awardings"]).map((k, v) => MapEntry<String, TiersByRequiredAwarding>(k, TiersByRequiredAwarding.fromJson(v))),
    resizedIcons: List<ResizedIcon>.from(json["resized_icons"].map((x) => ResizedIcon.fromJson(x))),
    iconWidth: json["icon_width"],
    staticIconWidth: json["static_icon_width"],
    startDate: json["start_date"],
    isEnabled: json["is_enabled"],
    awardingsRequiredToGrantBenefits: json["awardings_required_to_grant_benefits"] == null ? null : json["awardings_required_to_grant_benefits"],
    description: json["description"],
    endDate: json["end_date"],
    subredditCoinReward: json["subreddit_coin_reward"],
    count: json["count"],
    staticIconHeight: json["static_icon_height"],
    name: json["name"],
    resizedStaticIcons: List<ResizedIcon>.from(json["resized_static_icons"].map((x) => ResizedIcon.fromJson(x))),
    iconFormat: json["icon_format"] == null ? null : formatValues.map[json["icon_format"]],
    iconHeight: json["icon_height"],
    pennyPrice: json["penny_price"] == null ? null : json["penny_price"],
    awardType: awardTypeValues.map[json["award_type"]],
    staticIconUrl: json["static_icon_url"],
  );

  Map<String, dynamic> toJson() => {
    "giver_coin_reward": giverCoinReward == null ? null : giverCoinReward,
    "subreddit_id": subredditId,
    "is_new": isNew,
    "days_of_drip_extension": daysOfDripExtension,
    "coin_price": coinPrice,
    "id": id,
    "penny_donate": pennyDonate == null ? null : pennyDonate,
    "award_sub_type": awardSubTypeValues.reverse[awardSubType],
    "coin_reward": coinReward,
    "icon_url": iconUrl,
    "days_of_premium": daysOfPremium,
    "tiers_by_required_awardings": tiersByRequiredAwardings == null ? null : Map.from(tiersByRequiredAwardings).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "resized_icons": List<dynamic>.from(resizedIcons.map((x) => x.toJson())),
    "icon_width": iconWidth,
    "static_icon_width": staticIconWidth,
    "start_date": startDate,
    "is_enabled": isEnabled,
    "awardings_required_to_grant_benefits": awardingsRequiredToGrantBenefits == null ? null : awardingsRequiredToGrantBenefits,
    "description": description,
    "end_date": endDate,
    "subreddit_coin_reward": subredditCoinReward,
    "count": count,
    "static_icon_height": staticIconHeight,
    "name": name,
    "resized_static_icons": List<dynamic>.from(resizedStaticIcons.map((x) => x.toJson())),
    "icon_format": iconFormat == null ? null : formatValues.reverse[iconFormat],
    "icon_height": iconHeight,
    "penny_price": pennyPrice == null ? null : pennyPrice,
    "award_type": awardTypeValues.reverse[awardType],
    "static_icon_url": staticIconUrl,
  };
}

enum AwardSubType { PREMIUM, GLOBAL, APPRECIATION, GROUP }

final awardSubTypeValues = EnumValues({
  "APPRECIATION": AwardSubType.APPRECIATION,
  "GLOBAL": AwardSubType.GLOBAL,
  "GROUP": AwardSubType.GROUP,
  "PREMIUM": AwardSubType.PREMIUM
});

enum AwardType { GLOBAL }

final awardTypeValues = EnumValues({
  "global": AwardType.GLOBAL
});

enum Format { APNG, PNG }

final formatValues = EnumValues({
  "APNG": Format.APNG,
  "PNG": Format.PNG
});

class ResizedIcon {
  ResizedIcon({
    this.url,
    this.width,
    this.height,
    this.format,
  });

  String url;
  int width;
  int height;
  Format format;

  factory ResizedIcon.fromJson(Map<String, dynamic> json) => ResizedIcon(
    url: json["url"],
    width: json["width"],
    height: json["height"],
    format: json["format"] == null ? null : formatValues.map[json["format"]],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "width": width,
    "height": height,
    "format": format == null ? null : formatValues.reverse[format],
  };
}

class TiersByRequiredAwarding {
  TiersByRequiredAwarding({
    this.resizedIcons,
    this.awardingsRequired,
    this.staticIcon,
    this.resizedStaticIcons,
    this.icon,
  });

  List<ResizedIcon> resizedIcons;
  int awardingsRequired;
  ResizedIcon staticIcon;
  List<ResizedIcon> resizedStaticIcons;
  ResizedIcon icon;

  factory TiersByRequiredAwarding.fromJson(Map<String, dynamic> json) => TiersByRequiredAwarding(
    resizedIcons: List<ResizedIcon>.from(json["resized_icons"].map((x) => ResizedIcon.fromJson(x))),
    awardingsRequired: json["awardings_required"],
    staticIcon: ResizedIcon.fromJson(json["static_icon"]),
    resizedStaticIcons: List<ResizedIcon>.from(json["resized_static_icons"].map((x) => ResizedIcon.fromJson(x))),
    icon: ResizedIcon.fromJson(json["icon"]),
  );

  Map<String, dynamic> toJson() => {
    "resized_icons": List<dynamic>.from(resizedIcons.map((x) => x.toJson())),
    "awardings_required": awardingsRequired,
    "static_icon": staticIcon.toJson(),
    "resized_static_icons": List<dynamic>.from(resizedStaticIcons.map((x) => x.toJson())),
    "icon": icon.toJson(),
  };
}

class FlairRichtext {
  FlairRichtext({
    this.a,
    this.e,
    this.u,
    this.t,
  });

  String a;
  String e;
  String u;
  String t;

  factory FlairRichtext.fromJson(Map<String, dynamic> json) => FlairRichtext(
    a: json["a"] == null ? null : json["a"],
    e: json["e"],
    u: json["u"] == null ? null : json["u"],
    t: json["t"] == null ? null : json["t"],
  );

  Map<String, dynamic> toJson() => {
    "a": a == null ? null : a,
    "e": e,
    "u": u == null ? null : u,
    "t": t == null ? null : t,
  };
}

enum FlairTextColor { DARK, LIGHT }

final flairTextColorValues = EnumValues({
  "dark": FlairTextColor.DARK,
  "light": FlairTextColor.LIGHT
});

enum FlairType { TEXT, RICHTEXT }

final flairTypeValues = EnumValues({
  "richtext": FlairType.RICHTEXT,
  "text": FlairType.TEXT
});

class GalleryData {
  GalleryData({
    this.items,
  });

  List<Item> items;

  factory GalleryData.fromJson(Map<String, dynamic> json) => GalleryData(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    this.mediaId,
    this.id,
  });

  String mediaId;
  int id;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    mediaId: json["media_id"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "media_id": mediaId,
    "id": id,
  };
}

class Gildings {
  Gildings({
    this.gid1,
    this.gid2,
    this.gid3,
  });

  int gid1;
  int gid2;
  int gid3;

  factory Gildings.fromJson(Map<String, dynamic> json) => Gildings(
    gid1: json["gid_1"] == null ? null : json["gid_1"],
    gid2: json["gid_2"] == null ? null : json["gid_2"],
    gid3: json["gid_3"] == null ? null : json["gid_3"],
  );

  Map<String, dynamic> toJson() => {
    "gid_1": gid1 == null ? null : gid1,
    "gid_2": gid2 == null ? null : gid2,
    "gid_3": gid3 == null ? null : gid3,
  };
}

enum LinkFlairBackgroundColor { EMPTY, THE_55_ADEE, THE_1_EFF00, THE_349_E48 }

final linkFlairBackgroundColorValues = EnumValues({
  "": LinkFlairBackgroundColor.EMPTY,
  "#1eff00": LinkFlairBackgroundColor.THE_1_EFF00,
  "#349e48": LinkFlairBackgroundColor.THE_349_E48,
  "#55adee": LinkFlairBackgroundColor.THE_55_ADEE
});

class Media {
  Media({
    this.redditVideo,
    this.oembed,
    this.type,
  });

  RedditVideo redditVideo;
  Oembed oembed;
  String type;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    redditVideo: json["reddit_video"] == null ? null : RedditVideo.fromJson(json["reddit_video"]),
    oembed: json["oembed"] == null ? null : Oembed.fromJson(json["oembed"]),
    type: json["type"] == null ? null : json["type"],
  );

  Map<String, dynamic> toJson() => {
    "reddit_video": redditVideo == null ? null : redditVideo.toJson(),
    "oembed": oembed == null ? null : oembed.toJson(),
    "type": type == null ? null : type,
  };
}

class Oembed {
  Oembed({
    this.providerUrl,
    this.url,
    this.html,
    this.authorName,
    this.height,
    this.width,
    this.version,
    this.authorUrl,
    this.providerName,
    this.cacheAge,
    this.type,
    this.title,
    this.thumbnailWidth,
    this.thumbnailUrl,
    this.thumbnailHeight,
  });

  String providerUrl;
  String url;
  String html;
  String authorName;
  int height;
  int width;
  String version;
  String authorUrl;
  String providerName;
  int cacheAge;
  String type;
  String title;
  int thumbnailWidth;
  String thumbnailUrl;
  int thumbnailHeight;

  factory Oembed.fromJson(Map<String, dynamic> json) => Oembed(
    providerUrl: json["provider_url"],
    url: json["url"] == null ? null : json["url"],
    html: json["html"],
    authorName: json["author_name"],
    height: json["height"] == null ? null : json["height"],
    width: json["width"],
    version: json["version"],
    authorUrl: json["author_url"],
    providerName: json["provider_name"],
    cacheAge: json["cache_age"] == null ? null : json["cache_age"],
    type: json["type"],
    title: json["title"] == null ? null : json["title"],
    thumbnailWidth: json["thumbnail_width"] == null ? null : json["thumbnail_width"],
    thumbnailUrl: json["thumbnail_url"] == null ? null : json["thumbnail_url"],
    thumbnailHeight: json["thumbnail_height"] == null ? null : json["thumbnail_height"],
  );

  Map<String, dynamic> toJson() => {
    "provider_url": providerUrl,
    "url": url == null ? null : url,
    "html": html,
    "author_name": authorName,
    "height": height == null ? null : height,
    "width": width,
    "version": version,
    "author_url": authorUrl,
    "provider_name": providerName,
    "cache_age": cacheAge == null ? null : cacheAge,
    "type": type,
    "title": title == null ? null : title,
    "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
    "thumbnail_url": thumbnailUrl == null ? null : thumbnailUrl,
    "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
  };
}

class RedditVideo {
  RedditVideo({
    this.bitrateKbps,
    this.fallbackUrl,
    this.height,
    this.width,
    this.scrubberMediaUrl,
    this.dashUrl,
    this.duration,
    this.hlsUrl,
    this.isGif,
    this.transcodingStatus,
  });

  int bitrateKbps;
  String fallbackUrl;
  int height;
  int width;
  String scrubberMediaUrl;
  String dashUrl;
  int duration;
  String hlsUrl;
  bool isGif;
  TranscodingStatus transcodingStatus;

  factory RedditVideo.fromJson(Map<String, dynamic> json) => RedditVideo(
    bitrateKbps: json["bitrate_kbps"],
    fallbackUrl: json["fallback_url"],
    height: json["height"],
    width: json["width"],
    scrubberMediaUrl: json["scrubber_media_url"],
    dashUrl: json["dash_url"],
    duration: json["duration"],
    hlsUrl: json["hls_url"],
    isGif: json["is_gif"],
    transcodingStatus: transcodingStatusValues.map[json["transcoding_status"]],
  );

  Map<String, dynamic> toJson() => {
    "bitrate_kbps": bitrateKbps,
    "fallback_url": fallbackUrl,
    "height": height,
    "width": width,
    "scrubber_media_url": scrubberMediaUrl,
    "dash_url": dashUrl,
    "duration": duration,
    "hls_url": hlsUrl,
    "is_gif": isGif,
    "transcoding_status": transcodingStatusValues.reverse[transcodingStatus],
  };
}

enum TranscodingStatus { COMPLETED }

final transcodingStatusValues = EnumValues({
  "completed": TranscodingStatus.COMPLETED
});

class MediaEmbed {
  MediaEmbed({
    this.content,
    this.width,
    this.scrolling,
    this.height,
    this.mediaDomainUrl,
  });

  String content;
  int width;
  bool scrolling;
  int height;
  String mediaDomainUrl;

  factory MediaEmbed.fromJson(Map<String, dynamic> json) => MediaEmbed(
    content: json["content"] == null ? null : json["content"],
    width: json["width"] == null ? null : json["width"],
    scrolling: json["scrolling"] == null ? null : json["scrolling"],
    height: json["height"] == null ? null : json["height"],
    mediaDomainUrl: json["media_domain_url"] == null ? null : json["media_domain_url"],
  );

  Map<String, dynamic> toJson() => {
    "content": content == null ? null : content,
    "width": width == null ? null : width,
    "scrolling": scrolling == null ? null : scrolling,
    "height": height == null ? null : height,
    "media_domain_url": mediaDomainUrl == null ? null : mediaDomainUrl,
  };
}

class MediaMetadatum {
  MediaMetadatum({
    this.status,
    this.e,
    this.m,
    this.p,
    this.s,
    this.id,
  });

  String status;
  String e;
  String m;
  List<S> p;
  S s;
  String id;

  factory MediaMetadatum.fromJson(Map<String, dynamic> json) => MediaMetadatum(
    status: json["status"],
    e: json["e"],
    m: json["m"],
    p: List<S>.from(json["p"].map((x) => S.fromJson(x))),
    s: S.fromJson(json["s"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "e": e,
    "m": m,
    "p": List<dynamic>.from(p.map((x) => x.toJson())),
    "s": s.toJson(),
    "id": id,
  };
}

class S {
  S({
    this.y,
    this.x,
    this.u,
  });

  int y;
  int x;
  String u;

  factory S.fromJson(Map<String, dynamic> json) => S(
    y: json["y"],
    x: json["x"],
    u: json["u"],
  );

  Map<String, dynamic> toJson() => {
    "y": y,
    "x": x,
    "u": u,
  };
}

enum WhitelistStatus { ALL_ADS, NO_ADS, SOME_ADS }

final whitelistStatusValues = EnumValues({
  "all_ads": WhitelistStatus.ALL_ADS,
  "no_ads": WhitelistStatus.NO_ADS,
  "some_ads": WhitelistStatus.SOME_ADS
});

class Preview {
  Preview({
    this.images,
    this.enabled,
  });

  List<Image> images;
  bool enabled;

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    enabled: json["enabled"],
  );

  Map<String, dynamic> toJson() => {
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "enabled": enabled,
  };
}

class Image {
  Image({
    this.source,
    this.resolutions,
    this.variants,
    this.id,
  });

  ResizedIcon source;
  List<ResizedIcon> resolutions;
  Variants variants;
  String id;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    source: ResizedIcon.fromJson(json["source"]),
    resolutions: List<ResizedIcon>.from(json["resolutions"].map((x) => ResizedIcon.fromJson(x))),
    variants: Variants.fromJson(json["variants"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "source": source.toJson(),
    "resolutions": List<dynamic>.from(resolutions.map((x) => x.toJson())),
    "variants": variants.toJson(),
    "id": id,
  };
}

class Variants {
  Variants();

  factory Variants.fromJson(Map<String, dynamic> json) => Variants(
  );

  Map<String, dynamic> toJson() => {
  };
}

enum SubredditType { PUBLIC, RESTRICTED }

final subredditTypeValues = EnumValues({
  "public": SubredditType.PUBLIC,
  "restricted": SubredditType.RESTRICTED
});

enum Kind { T3 }

final kindValues = EnumValues({
  "t3": Kind.T3
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
