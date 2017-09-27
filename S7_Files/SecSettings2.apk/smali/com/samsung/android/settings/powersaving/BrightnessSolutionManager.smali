.class public Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
.super Ljava/lang/Object;
.source "BrightnessSolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAfterMode:I

.field private mFromExPopup:Z

.field private mLockForPreview:Z

.field private mPrevMode:I

.field private mPreviousMaxBrightnessValue:I

.field private observer:Landroid/database/ContentObserver;

.field private orgBrightness:I

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prevMode"    # I
    .param p3, "afterMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;-><init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->pm:Landroid/os/PowerManager;

    .line 48
    iput-boolean v3, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mFromExPopup:Z

    .line 49
    iput-boolean v3, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    .line 51
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->pm:Landroid/os/PowerManager;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v1

    float-to-int v0, v1

    .line 52
    .local v0, "curBrightness":I
    iput p2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPrevMode:I

    .line 53
    iput p3, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mAfterMode:I

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->getPreviousMaxBrightnessValue(Landroid/content/Context;II)I

    move-result v1

    add-int/lit8 v1, v1, -0x5a

    iput v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    .line 56
    iget v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    int-to-float v1, v1

    const v2, 0x4021eb85    # 2.53f

    mul-float/2addr v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    .line 57
    const-string/jumbo v1, "BSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPreviousMaxBrightnessValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", orgBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->registerObserver()V

    .line 45
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    .line 103
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    .line 105
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "brightness_pms_marker_screen"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    .line 107
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected getPreviousMaxBrightnessValue(Landroid/content/Context;II)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prevMode"    # I
    .param p3, "afterMode"    # I

    .prologue
    .line 42
    invoke-static {p1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public setScreenBrightnessForPreview(I)V
    .locals 9
    .param p1, "value"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const v7, 0x4021eb85    # 2.53f

    const/16 v4, 0xff

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->unregisterObserver()V

    .line 65
    if-eqz p1, :cond_0

    if-ne p1, v6, :cond_6

    .line 66
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mFromExPopup:Z

    if-eqz v5, :cond_1

    .line 67
    return-void

    .line 69
    :cond_1
    if-ne p1, v6, :cond_2

    .line 70
    iput-boolean v8, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mFromExPopup:Z

    .line 72
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isBrightnessManualMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 73
    iget v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v3, v5, v6

    .line 74
    .local v3, "rollback":I
    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rollback orgBrightness "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-le v3, v4, :cond_3

    move v3, v4

    .line 76
    :cond_3
    if-gez v3, :cond_4

    const/4 v3, 0x0

    .line 77
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    .end local v3    # "rollback":I
    :goto_0
    return-void

    .line 79
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPrevMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mAfterMode:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->getPreviousMaxBrightnessValue(Landroid/content/Context;II)I

    move-result v0

    .line 80
    .local v0, "autoModeBrightness":I
    const-string/jumbo v4, "BSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "auto_brightness_limit for preview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "auto_brightness_limit"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 86
    .end local v0    # "autoModeBrightness":I
    :cond_6
    add-int/lit8 v5, p1, -0x5a

    int-to-float v5, v5

    mul-float v2, v5, v7

    .line 87
    .local v2, "previewScale":F
    iget v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 88
    .local v1, "previewBrightness":I
    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = previewBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-le v1, v4, :cond_7

    move v1, v4

    .line 90
    :cond_7
    if-gez v1, :cond_8

    const/4 v1, 0x0

    .line 91
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isBrightnessManualMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 92
    iput-boolean v8, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    .line 93
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->registerObserver()V

    .line 62
    return-void

    .line 95
    :cond_9
    const-string/jumbo v4, "BSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "auto_brightness_limit for preview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "auto_brightness_limit"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
