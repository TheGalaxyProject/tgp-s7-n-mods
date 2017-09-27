.class public Lcom/samsung/android/settings/powersaving/PowerSavingTile;
.super Landroid/service/quicksettings/TileService;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;,
        Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryExtendedTime:J

.field private mContext:Landroid/content/Context;

.field private mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

.field private mPsmObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerSavingTile;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerSavingTile;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->setPowerSavingMode(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    .line 57
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method private getRemoteViews()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    const v5, 0x7f1105a0

    .line 187
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 188
    const v2, 0x7f04022c

    .line 187
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 189
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 190
    const v1, 0x7f0b0a36

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105a2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    const v1, 0x7f0b0a38

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105a5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 192
    const v1, 0x7f0b0a37

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105a8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 194
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 197
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateRemainingTime(Landroid/widget/RemoteViews;)V

    .line 198
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->setupPendingIntent(Landroid/widget/RemoteViews;)V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateButtonStatus(Landroid/widget/RemoteViews;I)V

    .line 201
    return-object v0
.end method

.method private setPowerSavingMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateState()V

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v2, "battery_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 361
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerSavingTile$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;Landroid/content/Intent;)V

    .line 366
    const-wide/16 v4, 0x1f4

    .line 361
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method

.method private setupPendingIntent(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/high16 v4, 0x8000000

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const/16 v2, 0x1e14

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 257
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f1105a1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 259
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const/16 v2, 0x1e15

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 263
    const v2, 0x7f1105a4

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 265
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string/jumbo v2, "mode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const/16 v2, 0x1e16

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 269
    const v2, 0x7f1105a7

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 249
    return-void
.end method

.method private updateButtonDescription(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 370
    return-void
.end method

.method private updateButtonStatus(Landroid/widget/RemoteViews;I)V
    .locals 8
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "mode"    # I

    .prologue
    const v7, 0x7f0d0198

    const v6, 0x7f0d00b5

    const v5, 0x7f0d00b4

    const v1, 0x7f0203a6

    const v2, 0x7f0203a3

    .line 273
    packed-switch p2, :pswitch_data_0

    .line 322
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateButtonDescription(I)V

    .line 272
    return-void

    .line 275
    :pswitch_0
    const-string/jumbo v3, "setBackgroundResource"

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0203a4

    .line 275
    :goto_1
    const v4, 0x7f1105a1

    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 277
    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a2

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 278
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 280
    const-string/jumbo v0, "setBackgroundResource"

    const v3, 0x7f1105a4

    const v4, 0x7f0203a1

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 281
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a5

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 282
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a6

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 284
    const-string/jumbo v3, "setBackgroundResource"

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 284
    :goto_2
    const v1, 0x7f1105a7

    invoke-virtual {p1, v1, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 286
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 287
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0

    .line 276
    :cond_0
    const v0, 0x7f0203a7

    goto :goto_1

    :cond_1
    move v0, v2

    .line 285
    goto :goto_2

    .line 291
    :pswitch_1
    const-string/jumbo v3, "setBackgroundResource"

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 291
    :goto_3
    const v4, 0x7f1105a1

    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 293
    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a2

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 294
    const v0, 0x7f0d019b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 296
    const-string/jumbo v0, "setBackgroundResource"

    const v3, 0x7f1105a4

    const v4, 0x7f0203a2

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 297
    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a5

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 298
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a6

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 300
    const-string/jumbo v0, "setBackgroundResource"

    .line 301
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 300
    :goto_4
    const v2, 0x7f1105a7

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 302
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 303
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 292
    goto :goto_3

    :cond_3
    move v1, v2

    .line 301
    goto :goto_4

    .line 307
    :pswitch_2
    const-string/jumbo v0, "setBackgroundResource"

    .line 308
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 307
    :goto_5
    const v1, 0x7f1105a1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 309
    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a2

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 310
    const v0, 0x7f0d019b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a3

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 312
    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f1105a4

    const v2, 0x7f0203a1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 313
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 314
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 316
    const-string/jumbo v1, "setBackgroundResource"

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0203a8

    .line 316
    :goto_6
    const v2, 0x7f1105a7

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 318
    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 319
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 308
    goto :goto_5

    .line 317
    :cond_5
    const v0, 0x7f0203a5

    goto :goto_6

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRemainingTime(Landroid/widget/RemoteViews;)V
    .locals 16
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 209
    .local v2, "customFreqManager":Landroid/os/CustomFrequencyManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "CustomFrequencyManagerService"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/CustomFrequencyManager;

    move-object v2, v0

    .line 210
    .local v2, "customFreqManager":Landroid/os/CustomFrequencyManager;
    if-nez v2, :cond_0

    .line 211
    const-wide/16 v6, 0x0

    .local v6, "powerSavingMaximumRemainingTime":J
    const-wide/16 v8, 0x0

    .local v8, "powerSavingMediumRemainingTime":J
    const-wide/16 v10, 0x0

    .line 212
    .local v10, "powerSavingOffRemainingTime":J
    return-void

    .line 215
    .end local v6    # "powerSavingMaximumRemainingTime":J
    .end local v8    # "powerSavingMediumRemainingTime":J
    .end local v10    # "powerSavingOffRemainingTime":J
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v10, v5

    .line 216
    .restart local v10    # "powerSavingOffRemainingTime":J
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v8, v5

    .line 217
    .restart local v8    # "powerSavingMediumRemainingTime":J
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v6, v5

    .line 223
    .restart local v6    # "powerSavingMaximumRemainingTime":J
    sget-object v5, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateRemainingTime - Off : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " MID : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 224
    const-string/jumbo v13, " MAX : "

    .line 223
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 224
    const-string/jumbo v13, " Extended : "

    .line 223
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 224
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    .line 223
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v10

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 227
    const v12, 0x7f1105a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 232
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-lez v5, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v8

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 233
    const v12, 0x7f1105a6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 238
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v6

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "maximumTime":Ljava/lang/String;
    const v5, 0x7f1105a9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const v13, 0x7f0b01b4

    invoke-virtual {v5, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    .end local v4    # "maximumTime":Ljava/lang/String;
    :goto_2
    return-void

    .line 218
    .end local v2    # "customFreqManager":Landroid/os/CustomFrequencyManager;
    .end local v6    # "powerSavingMaximumRemainingTime":J
    .end local v8    # "powerSavingMediumRemainingTime":J
    .end local v10    # "powerSavingOffRemainingTime":J
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 230
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "customFreqManager":Landroid/os/CustomFrequencyManager;
    .restart local v6    # "powerSavingMaximumRemainingTime":J
    .restart local v8    # "powerSavingMediumRemainingTime":J
    .restart local v10    # "powerSavingOffRemainingTime":J
    :cond_1
    const v5, 0x7f1105a3

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 236
    :cond_2
    const v5, 0x7f1105a6

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 244
    :cond_3
    const v5, 0x7f1105a9

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    const v12, 0x7f0b01b5

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 146
    .local v0, "tile":Landroid/service/quicksettings/Tile;
    if-eqz v0, :cond_1

    .line 147
    const v1, 0x7f0203aa

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 148
    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 150
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 144
    :goto_1
    return-void

    .line 149
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 152
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getQsTile() is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public checkScreenState(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isPowerSavingModeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isPowerSavingModeAllowed returns FALSE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->unlockAndRun(Ljava/lang/Runnable;)V

    .line 335
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->setPowerSavingMode(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->registerObserver(Landroid/os/Handler;)V

    .line 99
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 327
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    .line 328
    .local v1, "currentMode":I
    sget-object v2, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick/currentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 332
    .local v0, "changeMode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->checkScreenState(I)V

    .line 326
    return-void

    .line 330
    .end local v0    # "changeMode":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMmode(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public onStartListening()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateState()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onStopListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->cancel(Z)Z

    .line 138
    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->unregisterObserver()V

    .line 105
    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerSavingTile$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 81
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f0b0a25

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->semUpdateDetailView()V

    .line 177
    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    .line 88
    :cond_0
    return-void
.end method
