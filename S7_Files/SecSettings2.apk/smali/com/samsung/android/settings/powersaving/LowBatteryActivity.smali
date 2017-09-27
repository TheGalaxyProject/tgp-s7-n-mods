.class public Lcom/samsung/android/settings/powersaving/LowBatteryActivity;
.super Landroid/app/Activity;
.source "LowBatteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableTime:I

.field private mBatteryLevel:I

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPluggedState:I

.field private mButtonBackground:Landroid/widget/LinearLayout;

.field private mChargingIconIv:Landroid/widget/ImageView;

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mExtendedBatteryTime:I

.field private mIsBatteryStatusCharging:Z

.field private mIsBatteryStatusUnknown:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mMaxButton:Landroid/widget/LinearLayout;

.field private mMaxTextCust:Landroid/widget/TextView;

.field private mMaxTextMain:Landroid/widget/TextView;

.field private mMaxTextSub:Landroid/widget/TextView;

.field private mMidButton:Landroid/widget/LinearLayout;

.field private mMidTextCust:Landroid/widget/TextView;

.field private mMidTextMain:Landroid/widget/TextView;

.field private mMidTextSub:Landroid/widget/TextView;

.field private mOffButton:Landroid/widget/LinearLayout;

.field private mOffTextMain:Landroid/widget/TextView;

.field private mOffTextSub:Landroid/widget/TextView;

.field private mRemainTimeInCircleTv:Landroid/widget/TextView;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPluggedState:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusCharging:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusUnknown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    .line 87
    new-instance v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 29
    return-void
.end method

.method private getCurrentPowerMode()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 440
    .local v0, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 442
    .local v2, "ultraPowerMode":Z
    :cond_0
    if-eqz v2, :cond_3

    .line 443
    const/4 v1, 0x2

    .line 448
    :cond_1
    :goto_1
    return v1

    .line 439
    .end local v0    # "lowPowerMode":Z
    .end local v2    # "ultraPowerMode":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "lowPowerMode":Z
    goto :goto_0

    .line 445
    .restart local v2    # "ultraPowerMode":Z
    :cond_3
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 446
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private registerBatteryStatusReceiver()V
    .locals 2

    .prologue
    .line 364
    new-instance v1, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "batteryLevelFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 347
    return-void
.end method

.method private setBatteryStatus()V
    .locals 5

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    .line 414
    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    .line 417
    .local v0, "time":I
    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mAvailableTime:I

    .line 413
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 419
    const v2, 0x7f0a01f9

    .line 420
    const v3, 0x7f0a01fa

    .line 421
    const v4, 0x7f0d01aa

    .line 418
    invoke-static {p0, v0, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "location"    # I
    .param p2, "isOff"    # Z
    .param p3, "selected"    # Z

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x0

    .line 163
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 164
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 190
    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "solidDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v2, :cond_0

    .line 192
    const v3, 0x7f0d017c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 193
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 191
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 195
    :cond_0
    if-eqz v1, :cond_1

    .line 196
    if-eqz p3, :cond_3

    .line 197
    if-eqz p2, :cond_2

    .line 199
    const v3, 0x7f0d019a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 200
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 198
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 213
    :cond_1
    :goto_1
    return-object v0

    .line 166
    .restart local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v1    # "solidDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 167
    const v4, 0x7f020393

    .line 166
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 168
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f11086a

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f110869

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 172
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 173
    const v4, 0x7f020392

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 174
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f110868

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f110867

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 178
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 179
    const v4, 0x7f020394

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 180
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f11086c

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f11086b

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 184
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 185
    const v4, 0x7f020391

    .line 184
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 186
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f110866

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f110865

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 203
    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "solidDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v3, 0x7f0d0179

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 204
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 202
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 209
    :cond_3
    const v3, 0x7f0d0197

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 210
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 208
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setEstimatedTimeTextSize()V
    .locals 5

    .prologue
    .line 404
    new-instance v0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 404
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;-><init>(Landroid/widget/TextView;I)V

    .line 407
    .local v0, "watcher":Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;
    const/16 v1, 0xd1b

    .line 408
    const v2, 0x7f0a01f9

    .line 409
    const v3, 0x7f0a01fa

    .line 410
    const v4, 0x7f0d01aa

    .line 407
    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->setMaxTextSize(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 352
    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    :cond_0
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setEstimatedTimeTextSize()V

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBatteryStatus()V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const v1, 0x7f0d01aa

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleColor(I)V

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    .line 394
    return-void
.end method

.method private updatePowerSavingButton(I)V
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const v11, 0x7f0d0198

    const/16 v7, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 221
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v8, 0x3

    invoke-direct {p0, v8, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    .line 224
    .local v0, "isRTL":Z
    if-ne p1, v10, :cond_4

    .line 225
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0, v6, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d0199

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d019c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d019b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d017b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d017a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    :goto_3
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 278
    invoke-static {p0, v6, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v3

    .line 281
    .local v3, "psmTimeOff":I
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 280
    invoke-static {p0, v9, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v2

    .line 283
    .local v2, "psmTimeMid":I
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 282
    invoke-static {p0, v10, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v1

    .line 286
    .local v1, "psmTimeMax":I
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    .line 287
    const v5, 0x7f0b0a36

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    if-lez v3, :cond_b

    if-eqz p1, :cond_b

    .line 289
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    .line 296
    const v5, 0x7f0b0a38

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    if-lez v2, :cond_c

    if-eq p1, v9, :cond_c

    .line 299
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_5
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    .line 306
    const v5, 0x7f0b0a37

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    if-lez v1, :cond_d

    if-eq p1, v10, :cond_d

    .line 309
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_6
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 316
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 317
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 318
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 319
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 320
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :goto_7
    sget-object v5, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePowerSavingButton, mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 226
    .end local v1    # "psmTimeMax":I
    .end local v2    # "psmTimeMid":I
    .end local v3    # "psmTimeOff":I
    :cond_1
    invoke-direct {p0, v10, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    move v5, v7

    .line 230
    goto/16 :goto_1

    .line 233
    :cond_3
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_2

    .line 242
    :cond_4
    if-ne p1, v9, :cond_8

    .line 243
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d0199

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_9
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d019c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d019b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_a
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d017b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d017a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    move v5, v7

    .line 247
    goto :goto_8

    .line 250
    :cond_6
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9

    .line 255
    :cond_7
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_a

    .line 261
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-direct {p0, v10, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_b
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d0199

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d017b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d017a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_c
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d017b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d017a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 262
    :cond_9
    invoke-direct {p0, v6, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_b

    .line 272
    :cond_a
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_c

    .line 292
    .restart local v1    # "psmTimeMax":I
    .restart local v2    # "psmTimeMid":I
    .restart local v3    # "psmTimeOff":I
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 302
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 312
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 323
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 324
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 139
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 142
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v1, "LowBattery"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 147
    :sswitch_1
    const-string/jumbo v1, "LowBattery"

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 150
    :sswitch_2
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110505 -> :sswitch_0
        0x7f110508 -> :sswitch_1
        0x7f11050c -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f040171

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setContentView(I)V

    .line 101
    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 103
    const v0, 0x7f110465

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mChargingIconIv:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f110467

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f110504

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2, v2}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    const v0, 0x7f110505

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f110508

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    .line 112
    const v0, 0x7f11050c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    .line 113
    const v0, 0x7f110506

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f110507

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f110509

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f11050a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f11050b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f11050d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f11050e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f11050f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0a36

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0a38

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0a37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterContentObserver()V

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceivers()V

    .line 341
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerContentObserver()V

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerBatteryStatusReceiver()V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    .line 331
    return-void
.end method
