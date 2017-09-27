.class public Lcom/android/settings/widget/HomeSettingsWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "HomeSettingsWidgetProvider.java"


# static fields
.field static appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field static mCtxt:Landroid/content/Context;

.field private static mHomeGridMode:I

.field static mRes:Landroid/content/res/Resources;

.field public static mSpanMapX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mSpanMapY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mViews1x1:Landroid/widget/RemoteViews;


# instance fields
.field private appWidgetIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings/widget/HomeSettingsWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 271
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 272
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f04012c

    .line 71
    const-string/jumbo v3, "HomeSettingsWidget"

    const-string/jumbo v4, " START init()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 73
    sput-object p1, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    .line 74
    :cond_0
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    if-nez v3, :cond_1

    .line 75
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    .line 77
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.nttdocomo.android.dhome"

    const-string/jumbo v4, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "DcmLauncer":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 82
    .local v1, "currentDefaultHome":Landroid/content/ComponentName;
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    const-string/jumbo v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHomeGridMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04012f

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    .line 97
    :goto_0
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v3, :cond_2

    .line 98
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 100
    :cond_2
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    .line 101
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 100
    const v5, 0x7f1103d0

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 104
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    .line 70
    return-void

    .line 86
    :cond_3
    sget v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 87
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04012d

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 88
    :cond_4
    sget v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    const/16 v4, 0x37

    if-ne v3, v4, :cond_5

    .line 89
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04012e

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 91
    :cond_5
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 94
    :cond_6
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method private initSpanMap(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const-string/jumbo v3, "ActiveApplicationWidgetSizeX"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    .local v0, "spX":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "ActiveApplicationWidgetSizeY"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, "spY":Landroid/content/SharedPreferences;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 254
    .local v2, "widgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    .line 255
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    .line 249
    .end local v0    # "spX":Landroid/content/SharedPreferences;
    .end local v1    # "spY":Landroid/content/SharedPreferences;
    .end local v2    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 112
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    if-nez v6, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    .line 115
    :cond_0
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0e001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 116
    const-string/jumbo v6, "appWidgetMaxWidth"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 117
    .local v5, "maxWidth":I
    const-string/jumbo v6, "appWidgetMaxHeight"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 118
    .local v4, "maxHeight":I
    const-string/jumbo v6, "HomeSettingsWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAppWidgetOptionsChanged  maxWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " maxHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a0440

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 122
    .local v3, "grid55width":I
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a043f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 123
    .local v2, "grid55height":I
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a043e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 124
    .local v1, "grid45width":I
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a043d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 125
    .local v0, "grid45height":I
    if-gt v5, v3, :cond_1

    if-gt v4, v2, :cond_1

    .line 126
    const/16 v6, 0x37

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    .line 132
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->init(Landroid/content/Context;)V

    .line 109
    .end local v0    # "grid45height":I
    .end local v1    # "grid45width":I
    .end local v2    # "grid55height":I
    .end local v3    # "grid55width":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    :goto_1
    return-void

    .line 127
    .restart local v0    # "grid45height":I
    .restart local v1    # "grid45width":I
    .restart local v2    # "grid55height":I
    .restart local v3    # "grid55width":I
    .restart local v4    # "maxHeight":I
    .restart local v5    # "maxWidth":I
    :cond_1
    if-gt v5, v1, :cond_2

    if-gt v4, v0, :cond_2

    .line 128
    const/16 v6, 0x2d

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    goto :goto_0

    .line 130
    :cond_2
    const/16 v6, 0x2c

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    goto :goto_0

    .line 134
    .end local v0    # "grid45height":I
    .end local v1    # "grid45width":I
    .end local v2    # "grid55height":I
    .end local v3    # "grid55width":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    :cond_3
    const/4 v6, 0x0

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v19, "HomeSettingsWidget"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onReceive action : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo v19, "android.intent.category.ALTERNATIVE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 283
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 284
    .local v5, "buttonId":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 285
    const-string/jumbo v19, "HomeSettingsWidget"

    const-string/jumbo v20, "onReceive : BUTTON_CENTER : "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    invoke-direct/range {p2 .. p2}, Landroid/content/Intent;-><init>()V

    .line 288
    .restart local p2    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 289
    const-string/jumbo v19, "com.android.settings"

    .line 290
    const-string/jumbo v20, "com.android.settings.Settings$DCMHomeSettingsActivity"

    .line 289
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :goto_0
    const-string/jumbo v19, "noaction"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const/high16 v19, 0x20000000

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    const/16 v19, 0x0

    .line 298
    const/high16 v20, 0x40000000    # 2.0f

    .line 297
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 301
    .local v13, "pi":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v13}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v5    # "buttonId":I
    .end local v8    # "data":Landroid/net/Uri;
    .end local v13    # "pi":Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    return-void

    .line 292
    .restart local v5    # "buttonId":I
    .restart local v8    # "data":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v19, "com.android.settings"

    .line 293
    const-string/jumbo v20, "com.android.settings.Settings$HomeSettingsActivity"

    .line 292
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 302
    .restart local v13    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    .line 303
    .local v9, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v9}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 306
    .end local v5    # "buttonId":I
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v13    # "pi":Landroid/app/PendingIntent;
    :cond_2
    const-string/jumbo v19, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 307
    const-string/jumbo v19, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 306
    if-eqz v19, :cond_4

    .line 309
    :cond_3
    const-wide/16 v20, 0x5dc

    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->init(Landroid/content/Context;)V

    goto :goto_1

    .line 310
    :catch_1
    move-exception v10

    .line 311
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "HomeSettingsWidget"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onReceive : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 314
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v19, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 315
    const-string/jumbo v19, "HomeSettingsWidget"

    const-string/jumbo v20, "APPWIDGET_RESIZE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string/jumbo v19, "ActiveApplicationWidgetSizeX"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 317
    .local v14, "spX":Landroid/content/SharedPreferences;
    const-string/jumbo v19, "ActiveApplicationWidgetSizeY"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 318
    .local v15, "spY":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 319
    .local v11, "editorX":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 320
    .local v12, "editorY":Landroid/content/SharedPreferences$Editor;
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    if-nez v19, :cond_5

    .line 321
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->init(Landroid/content/Context;)V

    .line 323
    :cond_5
    const-string/jumbo v19, "widgetspanx"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 324
    .local v16, "spanX":I
    const-string/jumbo v19, "widgetspany"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 325
    .local v17, "spanY":I
    const-string/jumbo v19, "widgetId"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 326
    .local v18, "wId":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 327
    .local v6, "containX":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 328
    .local v7, "containY":I
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    if-eqz v19, :cond_6

    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    if-nez v19, :cond_7

    .line 329
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 330
    :cond_7
    const-string/jumbo v19, "HomeSettingsWidget"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "wId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", spanX="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", spanY="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_8

    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v7, v0, :cond_8

    .line 332
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 339
    :cond_8
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_9

    .line 340
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 344
    :cond_9
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v7, v0, :cond_0

    .line 345
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    sget-object v19, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 354
    .end local v6    # "containX":I
    .end local v7    # "containY":I
    .end local v11    # "editorX":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "editorY":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "spX":Landroid/content/SharedPreferences;
    .end local v15    # "spY":Landroid/content/SharedPreferences;
    .end local v16    # "spanX":I
    .end local v17    # "spanY":I
    .end local v18    # "wId":I
    :cond_a
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 180
    const-string/jumbo v8, "HomeSettingsWidget"

    const-string/jumbo v9, "START onUpdate()"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 182
    sget-object v8, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    if-nez v8, :cond_1

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 184
    :cond_1
    const-string/jumbo v8, "ActiveApplicationWidgetSizeX"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 185
    .local v3, "spX":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "ActiveApplicationWidgetSizeY"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 186
    .local v4, "spY":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editorX":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 188
    .local v1, "editorY":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    array-length v9, p3

    :goto_0
    if-ge v8, v9, :cond_4

    aget v2, p3, v8

    .line 189
    .local v2, "i":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "str":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 191
    .local v5, "spanX":I
    const/4 v10, -0x1

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 192
    .local v6, "spanY":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_2

    .line 193
    sget-object v10, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/4 v10, 0x1

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    :cond_2
    const/4 v10, -0x1

    if-ne v6, v10, :cond_3

    .line 198
    sget-object v10, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/4 v10, 0x1

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 201
    :cond_3
    sget-object v10, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 204
    .end local v2    # "i":I
    .end local v5    # "spanX":I
    .end local v6    # "spanY":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method protected updateWidget(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "views1x1"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v7, 0x1

    .line 140
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 141
    new-instance v4, Landroid/content/ComponentName;

    sget-object v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    .line 142
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 143
    :cond_0
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    array-length v3, v3

    if-lez v3, :cond_5

    .line 146
    :try_start_0
    const-string/jumbo v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWidget() - appWidgetIds.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 148
    iget-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    aget v0, v3, v2

    .line 149
    .local v0, "appWidgetId":I
    const-string/jumbo v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "START updateWidget() - appWidgetId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string/jumbo v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSpanMapX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    const-string/jumbo v5, " mSpanMapY:"

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    sget-object v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 153
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 154
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 147
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_3
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v7, :cond_2

    .line 161
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v7, :cond_4

    .line 162
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 164
    :cond_4
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v0    # "appWidgetId":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "HomeSettingsWidget"

    const-string/jumbo v4, "pass updateWidget() - system server not available"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 174
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    const-string/jumbo v3, "HomeSettingsWidget"

    const-string/jumbo v4, "updateWidget() - appWidgetIds.length == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_6
    return-void
.end method
