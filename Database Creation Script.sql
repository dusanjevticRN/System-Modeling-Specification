create table ADVERTISEMENTS
(
   AD_ID                int not null  comment '',
   VIDEO_ID             int  comment '',
   USERNAME             varchar(20)  comment '',
   ADVERTISER_ID        int not null  comment '',
   BUDGET               int not null  comment '',
   primary key (AD_ID)
);

create table BOOKMARKS
(
   BOOKMARK_ID          int not null  comment '',
   USERNAME             varchar(20)  comment '',
   BOOKMARK_DATE        date not null  comment '',
   BOOKMARK_TITLE       varchar(30)  comment '',
   BOOKMARK_DESCRIPTION varchar(150)  comment '',
   BOOKMARK_TYPE        char(10)  comment '',
   primary key (BOOKMARK_ID)
);

create table COMMENTS
(
   COMMENT_ID           int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   VIDEO_ID             int not null  comment '',
   VID_USERNAME         varchar(20) not null  comment '',
   NOTIFICATION_ID      int  comment '',
   CONTENT              varchar(150) not null  comment '',
   COMMENT_DATE         date not null  comment '',
   primary key (COMMENT_ID, USERNAME, VIDEO_ID, VID_USERNAME)
);

create table COMMENTS_CGS
(
   COMMENT_ID           int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   VIDEO_ID             int not null  comment '',
   VID_USERNAME         varchar(20) not null  comment '',
   GUIDELINE_ID         int not null  comment '',
   primary key (COMMENT_ID, USERNAME, VIDEO_ID, VID_USERNAME, GUIDELINE_ID)
);

create table COMMUNITY_GUIDELINES
(
   GUIDELINE_ID         int not null  comment '',
   GUIDELINE_TITLE      varchar(20) not null  comment '',
   DESCRIPTION          varchar(150) not null  comment '',
   primary key (GUIDELINE_ID)
);

create table EVENT
(
   EVENT_ID             int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   LOCATION_ID          int  comment '',
   EVENT_NAME           varchar(20) not null  comment '',
   ORGANIZER_ID         int not null  comment '',
   START_DATE           date not null  comment '',
   END_DATE             date not null  comment '',
   primary key (EVENT_ID, USERNAME)
);

create table FILTERS
(
   FILTER_ID            int not null  comment '',
   FILTER_NAME          varchar(20)  comment '',
   DESCRIPTION          varchar(50)  comment '',
   primary key (FILTER_ID)
);

create table FILTERS_TRENDS
(
   FILTER_ID            int not null  comment '',
   TREND_NAME           varchar(60) not null  comment '',
   primary key (FILTER_ID, TREND_NAME)
);

create table FILTESR_BOOKMARKS
(
   FILTER_ID            int not null  comment '',
   BOOKMARK_ID          int not null  comment '',
   primary key (FILTER_ID, BOOKMARK_ID)
);

create table FOLLOWS
(
   FOLLOW_ID            int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   HASHTAG_NAME         varchar(20)  comment '',
   FOLLOWER_ID          varchar(20) not null  comment '',
   FOLLOWED_ID          varchar(20) not null  comment '',
   primary key (FOLLOW_ID, USERNAME)
);

create table GIFTS
(
   GIFT_ID              int not null  comment '',
   USERNAME             varchar(20)  comment '',
   LIVESTREAM_ID        int  comment '',
   SENDER_ID            int not null  comment '',
   RECEIVER_ID          int not null  comment '',
   GIFT_TYPE            char(10) not null  comment '',
   GIFT_MESSAGE         varchar(100)  comment '',
   primary key (GIFT_ID)
);

create table HASHTAGS
(
   HASHTAG_NAME         varchar(20) not null  comment '',
   FOLLOWER_COUNT       int  comment '',
   POPULARITY_COUNT     int  comment '',
   primary key (HASHTAG_NAME)
);

create table HASHTAGS_CGS
(
   HASHTAG_NAME         varchar(20) not null  comment '',
   GUIDELINE_ID         int not null  comment '',
   primary key (HASHTAG_NAME, GUIDELINE_ID)
);

create table LIKES
(
   LIKE_ID              int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   VIDEO_ID             int not null  comment '',
   VID_USERNAME         varchar(20) not null  comment '',
   NOTIFICATION_ID      int  comment '',
   LIKE_DATE            date not null  comment '',
   LIKE_REACTION        char(10)  comment '',
   primary key (LIKE_ID, USERNAME, VIDEO_ID, VID_USERNAME)
);

create table LIVESTREAMS
(
   LIVESTREAM_ID        int not null  comment '',
   START_TIME           datetime not null  comment '',
   STATUS               varchar(30)  comment '',
   primary key (LIVESTREAM_ID)
);

create table LIVESTREAMS_CGS
(
   GUIDELINE_ID         int not null  comment '',
   LIVESTREAM_ID        int not null  comment '',
   primary key (GUIDELINE_ID, LIVESTREAM_ID)
);

create table LOCATIONS
(
   LOCATION_ID          int not null  comment '',
   LOCATION_NAME        varchar(30) not null  comment '',
   LATITUDE             float  comment '',
   LONGITUDE            float  comment '',
   primary key (LOCATION_ID)
);

create table MESSAGES
(
   MESSAGE_ID           int not null  comment '',
   REPORT_ID            int  comment '',
   USERNAME             varchar(20)  comment '',
   SENDER_ID            int not null  comment '',
   RECEIVER_ID          int not null  comment '',
   MESSAGE_CONTENT      varchar(150) not null  comment '',
   IS_READ_MESSAGE      char(10)  comment '',
   MESSAGE_DATE         datetime not null  comment '',
   primary key (MESSAGE_ID)
);

create table NOTIFICATIONS
(
   NOTIFICATION_ID      int not null  comment '',
   LIKE_ID              int  comment '',
   LIK_USERNAME         varchar(20)  comment '',
   LIK_VIDEO_ID         int  comment '',
   LIK_VID_USERNAME     varchar(20)  comment '',
   COMMENT_ID           int  comment '',
   COM_USERNAME         varchar(20)  comment '',
   VIDEO_ID             int  comment '',
   VID_USERNAME         varchar(20)  comment '',
   SHARE_ID             int  comment '',
   USERNAME             varchar(20)  comment '',
   CONTENT              varchar(150) not null  comment '',
   NOTIFICATION_DATE    datetime not null  comment '',
   IS_READ_NOTIF        char(10)  comment '',
   primary key (NOTIFICATION_ID)
);

create table PLAYLISTS
(
   PLAYLIST_ID          int not null  comment '',
   USERNAME             varchar(20)  comment '',
   PLAYLIST_NAME        varchar(20)  comment '',
   PLAYLIST_DESCRIPTION varchar(100)  comment '',
   primary key (PLAYLIST_ID)
);

create table PRIVACY_SETTINGS
(
   SETTING_ID           int not null  comment '',
   USERNAME             varchar(20)  comment '',
   VISIBILITY           char(10) not null  comment '',
   ALLOW_MESSAGES       char(10) not null  comment '',
   ALLOW_DOWNLOAD       char(10) not null  comment '',
   ALLOW_COMMENTS       char(10) not null  comment '',
   primary key (SETTING_ID)
);

create table REPORTS
(
   REPORT_ID            int not null  comment '',
   USERNAME             varchar(20)  comment '',
   COMMENT_ID           int  comment '',
   COM_USERNAME         varchar(20)  comment '',
   COM_VIDEO_ID         int  comment '',
   COM_VID_USERNAME     varchar(20)  comment '',
   VIDEO_ID             int  comment '',
   VID_USERNAME         varchar(20)  comment '',
   MESSAGE_ID           int  comment '',
   REPORT_REASON        char(10) not null  comment '',
   REPORT_DATE          date not null  comment '',
   primary key (REPORT_ID)
);

create table SHARES
(
   SHARE_ID             int not null  comment '',
   USERNAME             varchar(20)  comment '',
   NOTIFICATION_ID      int  comment '',
   VIDEO_ID             int  comment '',
   VID_USERNAME         varchar(20)  comment '',
   SHARE_DATE           date  comment '',
   SHARE_PLATFORM       char(10) not null  comment '',
   SHARE_COUNT          int  comment '',
   primary key (SHARE_ID)
);

create table TRENDS
(
   TREND_NAME           varchar(60) not null  comment '',
   DESCRIPTION          varchar(150) not null  comment '',
   START_DATE           date  comment '',
   END_DATE             date  comment '',
   primary key (TREND_NAME)
);

create table USERS
(
   USERNAME             varchar(20) not null  comment '',
   LIVESTREAM_ID        int  comment '',
   SETTING_ID           int  comment '',
   FIRST_NAME           varchar(30) not null  comment '',
   LAST_NAME            varchar(20) not null  comment '',
   GENDER               varchar(20) not null  comment '',
   DATE_OF_BIRTH        date not null  comment '',
   PASSWORD             varchar(20) not null  comment '',
   primary key (USERNAME)
);

create table VIDEOS
(
   VIDEO_ID             int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   LOCATION_ID          int  comment '',
   TITLE                varchar(20) not null  comment '',
   DESCRIPTION          varchar(150) not null  comment '',
   DURATION             time not null  comment '',
   VIEWS                int not null  comment '',
   LIKES_COUNT          int not null  comment '',
   UPLOAD_DATE          date not null  comment '',
   COMMENTS_COUNT       int not null  comment '',
   SHARE_COUNT          int not null  comment '',
   primary key (VIDEO_ID, USERNAME)
);

create table VIDEOS_BOOKMARKS
(
   VIDEO_ID             int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   BOOKMARK_ID          int not null  comment '',
   primary key (VIDEO_ID, USERNAME, BOOKMARK_ID)
);

create table VIDEOS_CGS
(
   GUIDELINE_ID         int not null  comment '',
   VIDEO_ID             int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   primary key (GUIDELINE_ID, VIDEO_ID, USERNAME)
);

create table VIDEOS_FILTERS
(
   FILTER_ID            int not null  comment '',
   VIDEO_ID             int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   primary key (FILTER_ID, VIDEO_ID, USERNAME)
);


create table VIDEOS_PLAYLISTS
(
   VIDEO_ID             int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   PLAYLIST_ID          int not null  comment '',
   primary key (VIDEO_ID, USERNAME, PLAYLIST_ID)
);

create table VIDEOS_TRENDS
(
   TREND_NAME           varchar(60) not null  comment '',
   VIDEO_ID             int not null  comment '',
   USERNAME             varchar(20) not null  comment '',
   primary key (TREND_NAME, VIDEO_ID, USERNAME)
);

alter table ADVERTISEMENTS add constraint FK_ADVERTIS_REFERENCE_VIDEOS foreign key (VIDEO_ID, USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table BOOKMARKS add constraint FK_BOOKMARK_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table COMMENTS add constraint FK_COMMENTS_REFERENCE_VIDEOS foreign key (VIDEO_ID, VID_USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table COMMENTS add constraint FK_COMMENTS_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table COMMENTS add constraint FK_COMMENTS_REFERENCE_NOTIFICA foreign key (NOTIFICATION_ID)
      references NOTIFICATIONS (NOTIFICATION_ID) on delete restrict on update restrict;

alter table COMMENTS_CGS add constraint FK_COMMENTS_REFERENCE_COMMENTS foreign key (COMMENT_ID, USERNAME, VIDEO_ID, VID_USERNAME)
      references COMMENTS (COMMENT_ID, USERNAME, VIDEO_ID, VID_USERNAME) on delete restrict on update restrict;

alter table COMMENTS_CGS add constraint FK_COMMENTS_REFERENCE_COMMUNIT foreign key (GUIDELINE_ID)
      references COMMUNITY_GUIDELINES (GUIDELINE_ID) on delete restrict on update restrict;

alter table EVENT add constraint FK_EVENT_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table EVENT add constraint FK_EVENT_REFERENCE_LOCATION foreign key (LOCATION_ID)
      references LOCATIONS (LOCATION_ID) on delete restrict on update restrict;

alter table FILTERS_TRENDS add constraint FK_FILTERS__REFERENCE_FILTERS foreign key (FILTER_ID)
      references FILTERS (FILTER_ID) on delete restrict on update restrict;

alter table FILTERS_TRENDS add constraint FK_FILTERS__REFERENCE_TRENDS foreign key (TREND_NAME)
      references TRENDS (TREND_NAME) on delete restrict on update restrict;

alter table FILTESR_BOOKMARKS add constraint FK_FILTESR__REFERENCE_FILTERS foreign key (FILTER_ID)
      references FILTERS (FILTER_ID) on delete restrict on update restrict;

alter table FILTESR_BOOKMARKS add constraint FK_FILTESR__REFERENCE_BOOKMARK foreign key (BOOKMARK_ID)
      references BOOKMARKS (BOOKMARK_ID) on delete restrict on update restrict;

alter table FOLLOWS add constraint FK_FOLLOWS_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table FOLLOWS add constraint FK_FOLLOWS_REFERENCE_HASHTAGS foreign key (HASHTAG_NAME)
      references HASHTAGS (HASHTAG_NAME) on delete restrict on update restrict;

alter table GIFTS add constraint FK_GIFTS_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table GIFTS add constraint FK_GIFTS_REFERENCE_LIVESTRE foreign key (LIVESTREAM_ID)
      references LIVESTREAMS (LIVESTREAM_ID) on delete restrict on update restrict;

alter table HASHTAGS_CGS add constraint FK_HASHTAGS_REFERENCE_HASHTAGS foreign key (HASHTAG_NAME)
      references HASHTAGS (HASHTAG_NAME) on delete restrict on update restrict;

alter table HASHTAGS_CGS add constraint FK_HASHTAGS_REFERENCE_COMMUNIT foreign key (GUIDELINE_ID)
      references COMMUNITY_GUIDELINES (GUIDELINE_ID) on delete restrict on update restrict;

alter table LIKES add constraint FK_LIKES_REFERENCE_VIDEOS foreign key (VIDEO_ID, VID_USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table LIKES add constraint FK_LIKES_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table LIKES add constraint FK_LIKES_REFERENCE_NOTIFICA foreign key (NOTIFICATION_ID)
      references NOTIFICATIONS (NOTIFICATION_ID) on delete restrict on update restrict;

alter table LIVESTREAMS_CGS add constraint FK_LIVESTRE_REFERENCE_COMMUNIT foreign key (GUIDELINE_ID)
      references COMMUNITY_GUIDELINES (GUIDELINE_ID) on delete restrict on update restrict;

alter table LIVESTREAMS_CGS add constraint FK_LIVESTRE_REFERENCE_LIVESTRE foreign key (LIVESTREAM_ID)
      references LIVESTREAMS (LIVESTREAM_ID) on delete restrict on update restrict;

alter table MESSAGES add constraint FK_MESSAGES_REFERENCE_REPORTS foreign key (REPORT_ID)
      references REPORTS (REPORT_ID) on delete restrict on update restrict;

alter table MESSAGES add constraint FK_MESSAGES_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table NOTIFICATIONS add constraint FK_NOTIFICA_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table NOTIFICATIONS add constraint FK_NOTIFICA_REFERENCE_LIKES foreign key (LIKE_ID, LIK_USERNAME, LIK_VIDEO_ID, LIK_VID_USERNAME)
      references LIKES (LIKE_ID, USERNAME, VIDEO_ID, VID_USERNAME) on delete restrict on update restrict;

alter table NOTIFICATIONS add constraint FK_NOTIFICA_REFERENCE_COMMENTS foreign key (COMMENT_ID, COM_USERNAME, VIDEO_ID, VID_USERNAME)
      references COMMENTS (COMMENT_ID, USERNAME, VIDEO_ID, VID_USERNAME) on delete restrict on update restrict;

alter table NOTIFICATIONS add constraint FK_NOTIFICA_REFERENCE_SHARES foreign key (SHARE_ID)
      references SHARES (SHARE_ID) on delete restrict on update restrict;

alter table PLAYLISTS add constraint FK_PLAYLIST_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table PRIVACY_SETTINGS add constraint FK_PRIVACY__REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table REPORTS add constraint FK_REPORTS_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table REPORTS add constraint FK_REPORTS_REFERENCE_COMMENTS foreign key (COMMENT_ID, COM_USERNAME, COM_VIDEO_ID, COM_VID_USERNAME)
      references COMMENTS (COMMENT_ID, USERNAME, VIDEO_ID, VID_USERNAME) on delete restrict on update restrict;

alter table REPORTS add constraint FK_REPORTS_REFERENCE_VIDEOS foreign key (VIDEO_ID, VID_USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table REPORTS add constraint FK_REPORTS_REFERENCE_MESSAGES foreign key (MESSAGE_ID)
      references MESSAGES (MESSAGE_ID) on delete restrict on update restrict;

alter table SHARES add constraint FK_SHARES_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table SHARES add constraint FK_SHARES_REFERENCE_NOTIFICA foreign key (NOTIFICATION_ID)
      references NOTIFICATIONS (NOTIFICATION_ID) on delete restrict on update restrict;

alter table SHARES add constraint FK_SHARES_REFERENCE_VIDEOS foreign key (VIDEO_ID, VID_USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table USERS add constraint FK_USERS_REFERENCE_LIVESTRE foreign key (LIVESTREAM_ID)
      references LIVESTREAMS (LIVESTREAM_ID) on delete restrict on update restrict;

alter table USERS add constraint FK_USERS_REFERENCE_PRIVACY_ foreign key (SETTING_ID)
      references PRIVACY_SETTINGS (SETTING_ID) on delete restrict on update restrict;

alter table VIDEOS add constraint FK_VIDEOS_REFERENCE_USERS foreign key (USERNAME)
      references USERS (USERNAME) on delete restrict on update restrict;

alter table VIDEOS add constraint FK_VIDEOS_REFERENCE_LOCATION foreign key (LOCATION_ID)
      references LOCATIONS (LOCATION_ID) on delete restrict on update restrict;

alter table VIDEOS_BOOKMARKS add constraint FK_VIDEOS_B_REFERENCE_VIDEOS foreign key (VIDEO_ID, USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table VIDEOS_BOOKMARKS add constraint FK_VIDEOS_B_REFERENCE_BOOKMARK foreign key (BOOKMARK_ID)
      references BOOKMARKS (BOOKMARK_ID) on delete restrict on update restrict;

alter table VIDEOS_CGS add constraint FK_VIDEOS_C_REFERENCE_COMMUNIT foreign key (GUIDELINE_ID)
      references COMMUNITY_GUIDELINES (GUIDELINE_ID) on delete restrict on update restrict;

alter table VIDEOS_CGS add constraint FK_VIDEOS_C_REFERENCE_VIDEOS foreign key (VIDEO_ID, USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table VIDEOS_FILTERS add constraint FK_VIDEOS_F_REFERENCE_FILTERS foreign key (FILTER_ID)
      references FILTERS (FILTER_ID) on delete restrict on update restrict;

alter table VIDEOS_FILTERS add constraint FK_VIDEOS_F_REFERENCE_VIDEOS foreign key (VIDEO_ID, USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table VIDEOS_PLAYLISTS add constraint FK_VIDEOS_P_REFERENCE_VIDEOS foreign key (VIDEO_ID, USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

alter table VIDEOS_PLAYLISTS add constraint FK_VIDEOS_P_REFERENCE_PLAYLIST foreign key (PLAYLIST_ID)
      references PLAYLISTS (PLAYLIST_ID) on delete restrict on update restrict;

alter table VIDEOS_TRENDS add constraint FK_VIDEOS_T_REFERENCE_TRENDS foreign key (TREND_NAME)
      references TRENDS (TREND_NAME) on delete restrict on update restrict;

alter table VIDEOS_TRENDS add constraint FK_VIDEOS_T_REFERENCE_VIDEOS foreign key (VIDEO_ID, USERNAME)
      references VIDEOS (VIDEO_ID, USERNAME) on delete restrict on update restrict;

