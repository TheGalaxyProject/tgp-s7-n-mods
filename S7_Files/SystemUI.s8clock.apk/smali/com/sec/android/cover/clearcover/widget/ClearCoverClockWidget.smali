.class public Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClearCoverClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmPm:Landroid/widget/TextView;

.field private mAmpmTypeface:Landroid/graphics/Typeface;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockHandler:Landroid/os/Handler;

.field private mClockRoot:Landroid/widget/RelativeLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mDatePattern:Ljava/lang/CharSequence;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTTSDatePattern:Ljava/lang/CharSequence;

.field private mThemeFontPath:Ljava/lang/String;

.field private mTime:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/String;)V
    .locals 0
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->onTimeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mIs24HTime:Z

    .line 50
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 51
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 56
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 121
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->MSG_CLOCK_UPDATE:I

    .line 122
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    .line 135
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    .line 137
    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 216
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    .line 252
    sget-object v4, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initClock() : TimeZone ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "locale":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v4, "ja_JP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 258
    const-string/jumbo v4, "K:mm"

    sput-object v4, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 264
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 265
    .local v3, "tmp":Ljava/lang/CharSequence;
    iget-boolean v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mIs24HTime:Z

    if-eqz v4, :cond_6

    .line 266
    const-string/jumbo v4, "kk:mm"

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 270
    .local v3, "tmp":Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "times":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mIsCover2:Z

    if-eqz v4, :cond_1

    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1

    .line 275
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 284
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 287
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v4, :cond_4

    .line 291
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 294
    :cond_4
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    return-void

    .line 260
    .end local v2    # "times":Ljava/lang/String;
    .end local v3    # "tmp":Ljava/lang/CharSequence;
    :cond_5
    const-string/jumbo v4, "h:mm"

    sput-object v4, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 268
    .local v3, "tmp":Ljava/lang/CharSequence;
    :cond_6
    sget-object v4, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "tmp":Ljava/lang/CharSequence;
    goto :goto_1

    .line 276
    .restart local v2    # "times":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private setFontTypeFace()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 200
    :cond_0
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 301
    const-string/jumbo v0, ""

    .line 302
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 308
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 309
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_2

    .line 310
    const-string/jumbo v3, "kk:mm"

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "mTTSTime":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    return-object v0

    .line 312
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .restart local v2    # "mTTSTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

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
    .line 225
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mIs24HTime:Z

    .line 229
    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->onTimeChanged()V

    .line 233
    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 224
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 240
    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 238
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 172
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFinishInflate "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 174
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mIsCover2:Z

    .line 175
    sget v2, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    .line 176
    sget v2, Lcom/sec/android/sviewcover/R$id;->clock_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    .line 177
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mTime:Landroid/widget/TextView;

    .line 178
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    .line 180
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    .line 183
    :try_start_0
    const-string/jumbo v2, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 197
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->refreshClock()V

    .line 170
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 186
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->setFontTypeFace()V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->onTimeChanged()V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 59
    return-void
.end method

.method public refreshClock()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x10

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "locale":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 145
    if-eqz v1, :cond_2

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "ampmParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "ampmParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    :cond_0
    const-string/jumbo v2, "ko_KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 154
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :cond_2
    return-void

    .line 157
    :cond_3
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 159
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method
