.class public Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;,
        Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;,
        Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final MSG_THEME_UPDATE:I

.field private mChargingTextView:Landroid/widget/TextView;

.field private mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mPreviewRootView:Landroid/view/ViewGroup;

.field private mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->values()[Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->All_Shortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->None:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->refreshChildView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 35
    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    .line 38
    const/16 v5, 0x3e8

    iput v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->MSG_THEME_UPDATE:I

    .line 40
    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    .line 54
    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 84
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 88
    .local v3, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    .local v2, "screenHeight":I
    if-ge v3, v2, :cond_0

    move v4, v3

    .line 91
    .local v4, "smallestWidth":I
    :goto_0
    int-to-float v5, v4

    const/high16 v6, 0x44870000    # 1080.0f

    div-float v1, v5, v6

    .line 93
    .local v1, "ratio":F
    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenWidth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenHeight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ratio : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .end local v1    # "ratio":F
    .end local v4    # "smallestWidth":I
    :cond_0
    move v4, v2

    .line 90
    goto :goto_0
.end method

.method private refreshChildView()V
    .locals 3

    .prologue
    .line 243
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshChildView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    .line 255
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$color;->sview_cover_theme_charging_text_font_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    :cond_2
    return-void
.end method

.method private updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V
    .locals 3
    .param p1, "isPressedButton"    # Z
    .param p2, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    .prologue
    .line 120
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 122
    .local v0, "alpha":F
    :goto_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-getcom-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 120
    .end local v0    # "alpha":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleHide()V
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public handleShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 111
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V

    .line 112
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V

    .line 108
    return-void
.end method

.method public initMultiTouched()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V

    .line 174
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 190
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 188
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 199
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 196
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 100
    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 101
    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_contact_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 102
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->init()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->init()V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setShorcutsVisibility(I)V

    .line 98
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 214
    if-nez p1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    .line 211
    :cond_1
    return-void
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 6
    .param p1, "view"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 138
    :cond_2
    return-void
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/FrameLayout;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    .line 161
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewViewGroup(Landroid/view/ViewGroup;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewViewGroup(Landroid/view/ViewGroup;)V

    .line 158
    :cond_1
    return-void
.end method

.method public setShorcutsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    .line 178
    :cond_1
    return-void
.end method
