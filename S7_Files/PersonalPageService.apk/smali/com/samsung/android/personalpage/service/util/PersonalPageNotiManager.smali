.class public Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;
.super Ljava/lang/Object;
.source "PersonalPageNotiManager.java"


# static fields
.field private static final NOTI_ID_PERSONAL_PAGE_MODE:I = 0x1

.field private static final PERSONAL_PAGE_NOTI_NONE:I = 0x0

.field private static final PERSONAL_PAGE_NOTI_OFF:I = 0x1

.field private static final PERSONAL_PAGE_NOTI_ON:I = 0x2

.field private static final PRIVATE_MODE_STATUSBAR_SLOT:Ljava/lang/String; = "private_mode"

.field public static final TAG:Ljava/lang/String; = "PersonalPageNotiManager"

.field private static final currentapiVersion:I

.field private static mSalesCode:Ljava/lang/String;

.field private static mStatusBarMgr:Landroid/app/StatusBarManager;

.field private static m_Context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->currentapiVersion:I

    .line 43
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mSalesCode:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializePrivateModeNoti(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sput-object p0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    sput-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    .line 47
    return-void
.end method

.method private static secretModeSetNotification(Landroid/app/NotificationManager;IIIIII)V
    .locals 9
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;
    .param p1, "nMoodId"    # I
    .param p2, "nTitleId"    # I
    .param p3, "nTextId"    # I
    .param p4, "nTickerId"    # I
    .param p5, "nId"    # I
    .param p6, "nIndicatorState"    # I

    .prologue
    const/4 v8, 0x0

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "contentText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 133
    .local v3, "contentTitletext":Ljava/lang/CharSequence;
    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 134
    const-string/jumbo v5, "PersonalPageNotiManager"

    const-string/jumbo v6, "mContext is null, return"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_0
    if-nez p0, :cond_1

    .line 139
    const-string/jumbo v5, "PersonalPageNotiManager"

    const-string/jumbo v6, "notificationManager is null, return"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_1
    if-lez p3, :cond_2

    .line 144
    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 147
    .end local v2    # "contentText":Ljava/lang/CharSequence;
    :cond_2
    if-lez p2, :cond_3

    .line 148
    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v5, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 150
    .end local v3    # "contentTitletext":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->isSupportSecureStorage()Z

    move-result v5

    if-nez v5, :cond_4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (Non Secure Storage)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (Non Secure Storage)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .end local v2    # "contentText":Ljava/lang/CharSequence;
    :cond_4
    const-string/jumbo v5, "PersonalPageNotiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NotificationID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / Notification IndicatorState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "intent":Landroid/content/Intent;
    sget v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->currentapiVersion:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_5

    .line 158
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.samsung.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-static {v5, v8, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 164
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 165
    const-wide/16 v6, 0x0

    .line 164
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 165
    const/4 v6, 0x1

    .line 164
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 167
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, p5, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 129
    return-void

    .line 160
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .local v4, "intent":Landroid/content/Intent;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static setPrivateModeIndicator(Z)V
    .locals 9
    .param p0, "bPrivatetMode"    # Z

    .prologue
    const/4 v5, 0x1

    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, "nIndicator":I
    sget-object v7, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 69
    const-string/jumbo v5, "PersonalPageNotiManager"

    const-string/jumbo v7, "setPrivateModeIndicator: m_Context is null. "

    invoke-static {v5, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 73
    :cond_0
    sget-object v7, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 74
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 75
    const-string/jumbo v5, "PersonalPageNotiManager"

    const-string/jumbo v7, "setPrivateModeIndicator: notificationManager is null, return"

    invoke-static {v5, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 79
    :cond_1
    if-eqz p0, :cond_2

    .line 80
    const/4 v6, 0x2

    .line 86
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 101
    const-string/jumbo v5, "PersonalPageNotiManager"

    const-string/jumbo v7, "nIndicator is NONE"

    invoke-static {v5, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    return-void

    .line 83
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 91
    :pswitch_1
    const v2, 0x7f060001

    .line 92
    .local v2, "nTitleId":I
    const v3, 0x7f060002

    .line 93
    .local v3, "nTextId":I
    const v1, 0x7f020005

    .line 94
    .local v1, "nMoodId":I
    const v4, 0x7f060001

    .line 96
    .local v4, "nTickerId":I
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 97
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->secretModeSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setPrivateModeNotification(Z)V
    .locals 5
    .param p0, "state"    # Z

    .prologue
    const/4 v4, 0x0

    .line 52
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->currentapiVersion:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    .line 53
    :cond_0
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    .line 54
    if-eqz p0, :cond_2

    .line 55
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "private_mode"

    const v2, 0x7f020006

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 56
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "private_mode"

    invoke-virtual {v0, v1, p0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "private_mode"

    invoke-virtual {v0, v1, p0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 59
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "private_mode"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeIndicator(Z)V

    goto :goto_0
.end method

.method public static showToastMessage(I)V
    .locals 3
    .param p0, "rsrcId"    # I

    .prologue
    .line 124
    sget-object v1, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 125
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method

.method public static showToastMessageForMode(Z)V
    .locals 4
    .param p0, "mode"    # Z

    .prologue
    .line 108
    sget-object v2, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    instance-of v2, v2, Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    check-cast v2, Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 109
    sget-object v3, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-eqz p0, :cond_1

    const v2, 0x7f060003

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->isSupportSecureStorage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Test only before PVR]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    sget-object v3, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->isSupportSecureStorage()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 119
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    return-void

    .line 109
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_1
    const v2, 0x7f060004

    goto :goto_0

    .line 111
    :cond_2
    sget-object v3, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-eqz p0, :cond_3

    const v2, 0x7f060002

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    const v2, 0x7f060010

    goto :goto_3

    .line 118
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method
