// To parse this JSON data, do
//
//     final about = aboutFromJson(jsonString);

import 'dart:convert';

About aboutFromJson(String str) => About.fromJson(json.decode(str));

String aboutToJson(About data) => json.encode(data.toJson());

class About {
  About({
    this.kind,
    this.data,
  });

  String kind;
  Data data;

  factory About.fromJson(Map<String, dynamic> json) => About(
    kind: json["kind"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.userFlairBackgroundColor,
    this.submitTextHtml,
    this.restrictPosting,
    this.userIsBanned,
    this.freeFormReports,
    this.wikiEnabled,
    this.userIsMuted,
    this.userCanFlairInSr,
    this.displayName,
    this.headerImg,
    this.title,
    this.allowGalleries,
    this.iconSize,
    this.primaryColor,
    this.activeUserCount,
    this.iconImg,
    this.displayNamePrefixed,
    this.accountsActive,
    this.publicTraffic,
    this.subscribers,
    this.userFlairRichtext,
    this.videostreamLinksCount,
    this.name,
    this.quarantine,
    this.hideAds,
    this.predictionLeaderboardEntryType,
    this.emojisEnabled,
    this.advertiserCategory,
    this.publicDescription,
    this.commentScoreHideMins,
    this.allowPredictions,
    this.userHasFavorited,
    this.userFlairTemplateId,
    this.communityIcon,
    this.bannerBackgroundImage,
    this.originalContentTagEnabled,
    this.communityReviewed,
    this.submitText,
    this.descriptionHtml,
    this.spoilersEnabled,
    this.headerTitle,
    this.headerSize,
    this.userFlairPosition,
    this.allOriginalContent,
    this.hasMenuWidget,
    this.isEnrolledInNewModmail,
    this.keyColor,
    this.canAssignUserFlair,
    this.created,
    this.wls,
    this.showMediaPreview,
    this.submissionType,
    this.userIsSubscriber,
    this.disableContributorRequests,
    this.allowVideogifs,
    this.userFlairType,
    this.allowPolls,
    this.collapseDeletedComments,
    this.emojisCustomSize,
    this.publicDescriptionHtml,
    this.allowVideos,
    this.isCrosspostableSubreddit,
    this.notificationLevel,
    this.canAssignLinkFlair,
    this.accountsActiveIsFuzzed,
    this.submitTextLabel,
    this.linkFlairPosition,
    this.userSrFlairEnabled,
    this.userFlairEnabledInSr,
    this.allowChatPostCreation,
    this.allowDiscovery,
    this.userSrThemeEnabled,
    this.linkFlairEnabled,
    this.subredditType,
    this.suggestedCommentSort,
    this.bannerImg,
    this.userFlairText,
    this.bannerBackgroundColor,
    this.showMedia,
    this.id,
    this.userIsModerator,
    this.over18,
    this.description,
    this.isChatPostFeatureEnabled,
    this.submitLinkLabel,
    this.userFlairTextColor,
    this.restrictCommenting,
    this.userFlairCssClass,
    this.allowImages,
    this.lang,
    this.whitelistStatus,
    this.url,
    this.createdUtc,
    this.bannerSize,
    this.mobileBannerImage,
    this.userIsContributor,
    this.allowPredictionsTournament,
  });

  dynamic userFlairBackgroundColor;
  String submitTextHtml;
  bool restrictPosting;
  dynamic userIsBanned;
  bool freeFormReports;
  bool wikiEnabled;
  dynamic userIsMuted;
  dynamic userCanFlairInSr;
  String displayName;
  String headerImg;
  String title;
  bool allowGalleries;
  List<int> iconSize;
  String primaryColor;
  int activeUserCount;
  String iconImg;
  String displayNamePrefixed;
  int accountsActive;
  bool publicTraffic;
  int subscribers;
  List<dynamic> userFlairRichtext;
  int videostreamLinksCount;
  String name;
  bool quarantine;
  bool hideAds;
  String predictionLeaderboardEntryType;
  bool emojisEnabled;
  String advertiserCategory;
  String publicDescription;
  int commentScoreHideMins;
  bool allowPredictions;
  dynamic userHasFavorited;
  dynamic userFlairTemplateId;
  String communityIcon;
  String bannerBackgroundImage;
  bool originalContentTagEnabled;
  bool communityReviewed;
  String submitText;
  String descriptionHtml;
  bool spoilersEnabled;
  String headerTitle;
  List<int> headerSize;
  String userFlairPosition;
  bool allOriginalContent;
  bool hasMenuWidget;
  dynamic isEnrolledInNewModmail;
  String keyColor;
  bool canAssignUserFlair;
  int created;
  int wls;
  bool showMediaPreview;
  String submissionType;
  dynamic userIsSubscriber;
  bool disableContributorRequests;
  bool allowVideogifs;
  String userFlairType;
  bool allowPolls;
  bool collapseDeletedComments;
  dynamic emojisCustomSize;
  String publicDescriptionHtml;
  bool allowVideos;
  bool isCrosspostableSubreddit;
  dynamic notificationLevel;
  bool canAssignLinkFlair;
  bool accountsActiveIsFuzzed;
  String submitTextLabel;
  String linkFlairPosition;
  dynamic userSrFlairEnabled;
  bool userFlairEnabledInSr;
  bool allowChatPostCreation;
  bool allowDiscovery;
  bool userSrThemeEnabled;
  bool linkFlairEnabled;
  String subredditType;
  dynamic suggestedCommentSort;
  String bannerImg;
  dynamic userFlairText;
  String bannerBackgroundColor;
  bool showMedia;
  String id;
  dynamic userIsModerator;
  bool over18;
  String description;
  bool isChatPostFeatureEnabled;
  String submitLinkLabel;
  dynamic userFlairTextColor;
  bool restrictCommenting;
  dynamic userFlairCssClass;
  bool allowImages;
  String lang;
  String whitelistStatus;
  String url;
  int createdUtc;
  List<int> bannerSize;
  String mobileBannerImage;
  dynamic userIsContributor;
  bool allowPredictionsTournament;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userFlairBackgroundColor: json["user_flair_background_color"],
    submitTextHtml: json["submit_text_html"],
    restrictPosting: json["restrict_posting"],
    userIsBanned: json["user_is_banned"],
    freeFormReports: json["free_form_reports"],
    wikiEnabled: json["wiki_enabled"],
    userIsMuted: json["user_is_muted"],
    userCanFlairInSr: json["user_can_flair_in_sr"],
    displayName: json["display_name"],
    headerImg: json["header_img"],
    title: json["title"],
    allowGalleries: json["allow_galleries"],
    iconSize: List<int>.from(json["icon_size"].map((x) => x)),
    primaryColor: json["primary_color"],
    activeUserCount: json["active_user_count"],
    iconImg: json["icon_img"],
    displayNamePrefixed: json["display_name_prefixed"],
    accountsActive: json["accounts_active"],
    publicTraffic: json["public_traffic"],
    subscribers: json["subscribers"],
    userFlairRichtext: List<dynamic>.from(json["user_flair_richtext"].map((x) => x)),
    videostreamLinksCount: json["videostream_links_count"],
    name: json["name"],
    quarantine: json["quarantine"],
    hideAds: json["hide_ads"],
    predictionLeaderboardEntryType: json["prediction_leaderboard_entry_type"],
    emojisEnabled: json["emojis_enabled"],
    advertiserCategory: json["advertiser_category"],
    publicDescription: json["public_description"],
    commentScoreHideMins: json["comment_score_hide_mins"],
    allowPredictions: json["allow_predictions"],
    userHasFavorited: json["user_has_favorited"],
    userFlairTemplateId: json["user_flair_template_id"],
    communityIcon: json["community_icon"],
    bannerBackgroundImage: json["banner_background_image"],
    originalContentTagEnabled: json["original_content_tag_enabled"],
    communityReviewed: json["community_reviewed"],
    submitText: json["submit_text"],
    descriptionHtml: json["description_html"],
    spoilersEnabled: json["spoilers_enabled"],
    headerTitle: json["header_title"],
    headerSize: List<int>.from(json["header_size"].map((x) => x)),
    userFlairPosition: json["user_flair_position"],
    allOriginalContent: json["all_original_content"],
    hasMenuWidget: json["has_menu_widget"],
    isEnrolledInNewModmail: json["is_enrolled_in_new_modmail"],
    keyColor: json["key_color"],
    canAssignUserFlair: json["can_assign_user_flair"],
    created: json["created"],
    wls: json["wls"],
    showMediaPreview: json["show_media_preview"],
    submissionType: json["submission_type"],
    userIsSubscriber: json["user_is_subscriber"],
    disableContributorRequests: json["disable_contributor_requests"],
    allowVideogifs: json["allow_videogifs"],
    userFlairType: json["user_flair_type"],
    allowPolls: json["allow_polls"],
    collapseDeletedComments: json["collapse_deleted_comments"],
    emojisCustomSize: json["emojis_custom_size"],
    publicDescriptionHtml: json["public_description_html"],
    allowVideos: json["allow_videos"],
    isCrosspostableSubreddit: json["is_crosspostable_subreddit"],
    notificationLevel: json["notification_level"],
    canAssignLinkFlair: json["can_assign_link_flair"],
    accountsActiveIsFuzzed: json["accounts_active_is_fuzzed"],
    submitTextLabel: json["submit_text_label"],
    linkFlairPosition: json["link_flair_position"],
    userSrFlairEnabled: json["user_sr_flair_enabled"],
    userFlairEnabledInSr: json["user_flair_enabled_in_sr"],
    allowChatPostCreation: json["allow_chat_post_creation"],
    allowDiscovery: json["allow_discovery"],
    userSrThemeEnabled: json["user_sr_theme_enabled"],
    linkFlairEnabled: json["link_flair_enabled"],
    subredditType: json["subreddit_type"],
    suggestedCommentSort: json["suggested_comment_sort"],
    bannerImg: json["banner_img"],
    userFlairText: json["user_flair_text"],
    bannerBackgroundColor: json["banner_background_color"],
    showMedia: json["show_media"],
    id: json["id"],
    userIsModerator: json["user_is_moderator"],
    over18: json["over18"],
    description: json["description"],
    isChatPostFeatureEnabled: json["is_chat_post_feature_enabled"],
    submitLinkLabel: json["submit_link_label"],
    userFlairTextColor: json["user_flair_text_color"],
    restrictCommenting: json["restrict_commenting"],
    userFlairCssClass: json["user_flair_css_class"],
    allowImages: json["allow_images"],
    lang: json["lang"],
    whitelistStatus: json["whitelist_status"],
    url: json["url"],
    createdUtc: json["created_utc"],
    bannerSize: List<int>.from(json["banner_size"].map((x) => x)),
    mobileBannerImage: json["mobile_banner_image"],
    userIsContributor: json["user_is_contributor"],
    allowPredictionsTournament: json["allow_predictions_tournament"],
  );

  Map<String, dynamic> toJson() => {
    "user_flair_background_color": userFlairBackgroundColor,
    "submit_text_html": submitTextHtml,
    "restrict_posting": restrictPosting,
    "user_is_banned": userIsBanned,
    "free_form_reports": freeFormReports,
    "wiki_enabled": wikiEnabled,
    "user_is_muted": userIsMuted,
    "user_can_flair_in_sr": userCanFlairInSr,
    "display_name": displayName,
    "header_img": headerImg,
    "title": title,
    "allow_galleries": allowGalleries,
    "icon_size": List<dynamic>.from(iconSize.map((x) => x)),
    "primary_color": primaryColor,
    "active_user_count": activeUserCount,
    "icon_img": iconImg,
    "display_name_prefixed": displayNamePrefixed,
    "accounts_active": accountsActive,
    "public_traffic": publicTraffic,
    "subscribers": subscribers,
    "user_flair_richtext": List<dynamic>.from(userFlairRichtext.map((x) => x)),
    "videostream_links_count": videostreamLinksCount,
    "name": name,
    "quarantine": quarantine,
    "hide_ads": hideAds,
    "prediction_leaderboard_entry_type": predictionLeaderboardEntryType,
    "emojis_enabled": emojisEnabled,
    "advertiser_category": advertiserCategory,
    "public_description": publicDescription,
    "comment_score_hide_mins": commentScoreHideMins,
    "allow_predictions": allowPredictions,
    "user_has_favorited": userHasFavorited,
    "user_flair_template_id": userFlairTemplateId,
    "community_icon": communityIcon,
    "banner_background_image": bannerBackgroundImage,
    "original_content_tag_enabled": originalContentTagEnabled,
    "community_reviewed": communityReviewed,
    "submit_text": submitText,
    "description_html": descriptionHtml,
    "spoilers_enabled": spoilersEnabled,
    "header_title": headerTitle,
    "header_size": List<dynamic>.from(headerSize.map((x) => x)),
    "user_flair_position": userFlairPosition,
    "all_original_content": allOriginalContent,
    "has_menu_widget": hasMenuWidget,
    "is_enrolled_in_new_modmail": isEnrolledInNewModmail,
    "key_color": keyColor,
    "can_assign_user_flair": canAssignUserFlair,
    "created": created,
    "wls": wls,
    "show_media_preview": showMediaPreview,
    "submission_type": submissionType,
    "user_is_subscriber": userIsSubscriber,
    "disable_contributor_requests": disableContributorRequests,
    "allow_videogifs": allowVideogifs,
    "user_flair_type": userFlairType,
    "allow_polls": allowPolls,
    "collapse_deleted_comments": collapseDeletedComments,
    "emojis_custom_size": emojisCustomSize,
    "public_description_html": publicDescriptionHtml,
    "allow_videos": allowVideos,
    "is_crosspostable_subreddit": isCrosspostableSubreddit,
    "notification_level": notificationLevel,
    "can_assign_link_flair": canAssignLinkFlair,
    "accounts_active_is_fuzzed": accountsActiveIsFuzzed,
    "submit_text_label": submitTextLabel,
    "link_flair_position": linkFlairPosition,
    "user_sr_flair_enabled": userSrFlairEnabled,
    "user_flair_enabled_in_sr": userFlairEnabledInSr,
    "allow_chat_post_creation": allowChatPostCreation,
    "allow_discovery": allowDiscovery,
    "user_sr_theme_enabled": userSrThemeEnabled,
    "link_flair_enabled": linkFlairEnabled,
    "subreddit_type": subredditType,
    "suggested_comment_sort": suggestedCommentSort,
    "banner_img": bannerImg,
    "user_flair_text": userFlairText,
    "banner_background_color": bannerBackgroundColor,
    "show_media": showMedia,
    "id": id,
    "user_is_moderator": userIsModerator,
    "over18": over18,
    "description": description,
    "is_chat_post_feature_enabled": isChatPostFeatureEnabled,
    "submit_link_label": submitLinkLabel,
    "user_flair_text_color": userFlairTextColor,
    "restrict_commenting": restrictCommenting,
    "user_flair_css_class": userFlairCssClass,
    "allow_images": allowImages,
    "lang": lang,
    "whitelist_status": whitelistStatus,
    "url": url,
    "created_utc": createdUtc,
    "banner_size": List<dynamic>.from(bannerSize.map((x) => x)),
    "mobile_banner_image": mobileBannerImage,
    "user_is_contributor": userIsContributor,
    "allow_predictions_tournament": allowPredictionsTournament,
  };
}
