.class public Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClearCoverDualClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmpmTypeface:Landroid/graphics/Typeface;

.field private mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field private mDatePattern:Ljava/lang/CharSequence;

.field private mHomeAmPm:Landroid/widget/TextView;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeClock:Landroid/widget/LinearLayout;

.field private mHomeClockRoot:Landroid/widget/LinearLayout;

.field private mHomeMonthandDay:Landroid/widget/TextView;

.field private mHomeRegionText:Landroid/widget/TextView;

.field private mHomeTime:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mIsDualClock:Z

.field private mRoamingAmPm:Landroid/widget/TextView;

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingClock:Landroid/widget/LinearLayout;

.field private mRoamingClockRoot:Landroid/widget/LinearLayout;

.field private mRoamingMonthandDay:Landroid/widget/TextView;

.field private mRoamingRegionText:Landroid/widget/TextView;

.field private mRoamingTime:Landroid/widget/TextView;

.field private mTTSDatePattern:Ljava/lang/CharSequence;

.field private mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/String;)V
    .locals 0
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->onTimeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 64
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->MSG_CLOCK_UPDATE:I

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsDualClock:Z

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIs24HTime:Z

    .line 72
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 73
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 76
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 149
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    .line 163
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->initClock(Landroid/content/Context;)V

    .line 164
    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DualClock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method private getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "homecity_timezone"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    :cond_0
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set default timezone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    const-string/jumbo v0, "Asia/Seoul"

    .line 468
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "homecity_timezone"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set homecity_timezone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutoHomeTimezone() - autoHomeTimeZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-object v0

    .line 464
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 465
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsDualClock:Z

    .line 167
    :cond_0
    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 288
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 15

    .prologue
    const/16 v14, 0x31

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    .line 324
    sget-object v8, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initClock() : TimeZone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 327
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "locale":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 329
    const-string/jumbo v8, "ja_JP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 330
    const-string/jumbo v8, "K:mm"

    sput-object v8, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 336
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 337
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 338
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    .line 339
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 340
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsDualClock:Z

    .line 343
    :cond_1
    const/4 v7, 0x0

    .line 344
    .local v7, "tmp":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_c

    .line 345
    const-string/jumbo v8, "kk:mm"

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 349
    .local v7, "tmp":Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "times":Ljava/lang/String;
    const/4 v2, 0x0

    .line 351
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 352
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    :cond_2
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_3

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v14, :cond_3

    .line 356
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 363
    if-eqz v2, :cond_4

    .line 364
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    :cond_4
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_5
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    .line 368
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_8

    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, "temp":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_d

    .line 374
    const-string/jumbo v8, "kk:mm"

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 378
    .local v5, "temp":Ljava/lang/CharSequence;
    :goto_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "dualTimes":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 380
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 379
    invoke-direct {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    .local v1, "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_7

    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v14, :cond_7

    .line 384
    :try_start_1
    const-string/jumbo v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    .line 393
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    .end local v0    # "dualTimes":Ljava/lang/String;
    .end local v1    # "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "temp":Ljava/lang/CharSequence;
    :cond_8
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v8, :cond_9

    .line 399
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 401
    :cond_9
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 404
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_a

    .line 405
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 322
    :cond_a
    return-void

    .line 332
    .end local v6    # "times":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/CharSequence;
    :cond_b
    const-string/jumbo v8, "h:mm"

    sput-object v8, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 347
    .local v7, "tmp":Ljava/lang/CharSequence;
    :cond_c
    sget-object v8, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "tmp":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 357
    .restart local v6    # "times":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 358
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 376
    .end local v4    # "t":Ljava/lang/Throwable;
    .local v5, "temp":Ljava/lang/CharSequence;
    :cond_d
    sget-object v8, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "temp":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 385
    .restart local v0    # "dualTimes":Ljava/lang/String;
    .restart local v1    # "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :catch_1
    move-exception v4

    .line 386
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private setFontTypeFace()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 260
    :cond_1
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method public getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 412
    const-string/jumbo v0, ""

    .line 414
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 417
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 420
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 421
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    .line 422
    const-string/jumbo v3, "kk:mm"

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "mTTSTime":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    return-object v0

    .line 424
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .restart local v2    # "mTTSTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 434
    const-string/jumbo v0, ""

    .line 436
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 439
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 442
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 443
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_2

    .line 444
    const-string/jumbo v3, "kk:mm"

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "mTTSTime":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    return-object v0

    .line 446
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2    # "mTTSTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 298
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIs24HTime:Z

    .line 301
    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->onTimeChanged()V

    .line 306
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 296
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 313
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 310
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 222
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 223
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mIsCover2:Z

    .line 225
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_clock_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    .line 226
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_time:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    .line 227
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_ampm:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    .line 228
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_digital_month_day:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    .line 229
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_clock:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    .line 230
    sget v2, Lcom/sec/android/sviewcover/R$id;->region_roaming:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    .line 232
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_clock_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    .line 233
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_time:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    .line 234
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_ampm:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    .line 235
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_digital_month_day:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    .line 236
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_clock:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    .line 237
    sget v2, Lcom/sec/android/sviewcover/R$id;->region_home:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    .line 240
    :try_start_0
    const-string/jumbo v2, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 254
    :goto_1
    sget-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_NO_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->refreshClock()V

    .line 220
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 243
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->setFontTypeFace()V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 80
    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->onTimeChanged()V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 79
    return-void
.end method

.method public refreshClock()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "locale":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz v0, :cond_4

    .line 180
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 181
    const-string/jumbo v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 183
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 196
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 197
    const-string/jumbo v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 199
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 200
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 213
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_screen_roaming:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_screen_home:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_4
    return-void

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 189
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_6

    .line 190
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    :cond_6
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 204
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_7
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 205
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_8

    .line 206
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    :cond_8
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method
