.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field private isPersona:Z

.field public isSanitizedPendingIntent:Z

.field public key:Ljava/lang/String;

.field private lastFullScreenIntentLaunchTime:J

.field public legacy:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field private preview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public sanitizing:I

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ic"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 93
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isPersona:Z

    .line 118
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 120
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 122
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    .line 117
    return-void
.end method

.method private compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 4
    .param p1, "a"    # Landroid/widget/RemoteViews;
    .param p2, "b"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 215
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 214
    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 214
    goto :goto_0
.end method


# virtual methods
.method public cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updatedNotification"    # Landroid/app/Notification;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "applyInPlace":Z
    if-eqz p2, :cond_1

    .line 174
    invoke-static {p1, p2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 175
    .local v7, "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 177
    .local v3, "newContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 179
    .local v2, "newBigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 181
    .local v4, "newHeadsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 184
    .local v5, "newPublicNotification":Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 185
    const-string/jumbo v9, "android.contains.customView"

    .line 184
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 186
    iget-object v9, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 187
    const-string/jumbo v10, "android.contains.customView"

    .line 186
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 183
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 188
    .local v6, "sameCustomView":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 189
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 188
    if-eqz v8, :cond_0

    .line 190
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 188
    if-eqz v8, :cond_0

    .line 191
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 188
    if-eqz v8, :cond_0

    .line 192
    move v0, v6

    .line 193
    .end local v0    # "applyInPlace":Z
    :goto_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 194
    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 195
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 196
    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 208
    .end local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v3    # "newContentView":Landroid/widget/RemoteViews;
    .end local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .end local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .end local v6    # "sameCustomView":Z
    .end local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :goto_1
    return v0

    .line 188
    .restart local v0    # "applyInPlace":Z
    .restart local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .restart local v3    # "newContentView":Landroid/widget/RemoteViews;
    .restart local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .restart local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .restart local v6    # "sameCustomView":Z
    .restart local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    .end local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v3    # "newContentView":Landroid/widget/RemoteViews;
    .end local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .end local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .end local v6    # "sameCustomView":Z
    .end local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 201
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 202
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 203
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 204
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 206
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeadsUpContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->preview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    return-object v0
.end method

.method public getPublicContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .prologue
    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersona()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isPersona:Z

    return v0
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 221
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 142
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 137
    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 126
    return-void
.end method

.method public setIsPersona(Z)V
    .locals 0
    .param p1, "persona"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isPersona:Z

    .line 107
    return-void
.end method

.method public setNotificationPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 0
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->preview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 98
    return-void
.end method
