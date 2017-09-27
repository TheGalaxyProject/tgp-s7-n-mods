.class public final Lcom/samsung/android/settings/powersaving/PSMUtils;
.super Ljava/lang/Object;
.source "PSMUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I
    .param p2, "numTextSizeId"    # I
    .param p3, "unitTextSizeId"    # I
    .param p4, "colorId"    # I

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 616
    .local v8, "res":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ge p1, v10, :cond_0

    .line 617
    new-instance v9, Landroid/text/SpannableString;

    const-string/jumbo v10, "0"

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v9, "s":Landroid/text/SpannableString;
    return-object v9

    .line 619
    .end local v9    # "s":Landroid/text/SpannableString;
    :cond_0
    div-int/lit8 v4, p1, 0x3c

    .line 620
    .local v4, "hour":I
    rem-int/lit8 v7, p1, 0x3c

    .line 623
    .local v7, "mins":I
    if-lez v4, :cond_6

    if-gtz v7, :cond_6

    .line 624
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b0a22

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "formatted":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2}, Ljava/text/DecimalFormat;-><init>()V

    .line 632
    .local v2, "df":Ljava/text/DecimalFormat;
    const/4 v5, -0x1

    .local v5, "hourIndex":I
    const/4 v6, -0x1

    .line 633
    .local v6, "minIndex":I
    if-lez v4, :cond_1

    .line 634
    int-to-long v10, v4

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 635
    :cond_1
    if-lez v7, :cond_2

    .line 636
    int-to-long v10, v7

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 637
    :cond_2
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 638
    .restart local v9    # "s":Landroid/text/SpannableString;
    const/4 v10, -0x1

    move/from16 v0, p4

    if-eq v0, v10, :cond_3

    .line 639
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 640
    const/4 v12, 0x0

    .line 639
    move/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 640
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x21

    .line 639
    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 642
    :cond_3
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 643
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x21

    .line 642
    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 645
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 647
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 649
    int-to-long v12, v4

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v5

    .line 650
    const/16 v12, 0x21

    .line 646
    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 653
    :cond_4
    const/4 v10, -0x1

    if-eq v6, v10, :cond_5

    .line 654
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 656
    int-to-long v12, v7

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v6

    .line 657
    const/16 v12, 0x21

    .line 654
    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 661
    :cond_5
    return-object v9

    .line 625
    .end local v2    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "formatted":Ljava/lang/String;
    .end local v5    # "hourIndex":I
    .end local v6    # "minIndex":I
    .end local v9    # "s":Landroid/text/SpannableString;
    :cond_6
    if-gtz v4, :cond_7

    .line 626
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b0a23

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "formatted":Ljava/lang/String;
    goto/16 :goto_0

    .line 628
    .end local v3    # "formatted":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const v11, 0x7f0b0a24

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "formatted":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getBatteryRemainingTIme(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "batteryPercent"    # I

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v0

    return v0
.end method

.method public static getBatteryRemainingTIme(Landroid/content/Context;III)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "batteryPercent"    # I
    .param p3, "extraValue"    # I

    .prologue
    .line 550
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 561
    .local v1, "remainingTime":I
    :cond_0
    :goto_0
    add-int v2, v1, p3

    return v2

    .line 551
    .end local v1    # "remainingTime":I
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    mul-int/lit16 v2, p2, 0x4b0

    div-int/lit8 v1, v2, 0x64

    .line 553
    .restart local v1    # "remainingTime":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 554
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0

    .line 555
    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 556
    mul-int/lit8 v2, v1, 0xa

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0

    .line 557
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 558
    mul-int/lit8 v2, v1, 0x11

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getBatteryRemainingTime(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 529
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    .line 530
    .local v0, "cfmsService":Landroid/os/CustomFrequencyManager;
    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v1

    .line 531
    .local v1, "remainingTime":I
    const-string/jumbo v2, "PSMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBatteryRemainingTime(): time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return v1
.end method

.method public static getChangeBatteryTimeAodMode(Landroid/content/Context;IJ)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aodStatus"    # I
    .param p2, "batteryNormalTime"    # J

    .prologue
    .line 389
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1e

    invoke-static {p0, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentPowerSavingMode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 217
    .local v0, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 219
    .local v2, "ultraPowerMode":Z
    :cond_0
    if-eqz v2, :cond_2

    .line 220
    const/4 v1, 0x2

    .line 228
    .local v1, "mode":I
    :goto_1
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentPowerSavingMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v1

    .line 216
    .end local v0    # "lowPowerMode":Z
    .end local v1    # "mode":I
    .end local v2    # "ultraPowerMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "lowPowerMode":Z
    goto :goto_0

    .line 222
    .restart local v2    # "ultraPowerMode":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 223
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    goto :goto_1

    .line 225
    .end local v1    # "mode":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "mode":I
    goto :goto_1
.end method

.method public static getFloatFromDimension(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 681
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 682
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 683
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method public static getLastPSMbrightness(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 801
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 802
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 803
    .local v0, "result":I
    const-string/jumbo v2, "PSMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastPSMbrightness() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v0
.end method

.method public static getLastPSMmode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 787
    const-string/jumbo v1, "last_psm_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 788
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "last_psm_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPSMMaxBrightnessValue(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    const/16 v0, 0x5a

    .line 267
    .local v0, "scale":I
    :goto_0
    const-string/jumbo v1, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPSMMaxBrightnessValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v0

    .line 265
    .end local v0    # "scale":I
    :cond_0
    const-string/jumbo v1, "limit_brightness_state"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    .restart local v0    # "scale":I
    goto :goto_0
.end method

.method public static getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "table"    # I
    .param p3, "mode"    # I

    .prologue
    .line 102
    if-nez p3, :cond_f

    .line 103
    const-string/jumbo v12, "limit_brightness_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 104
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x5a

    :goto_0
    return v12

    :cond_0
    const/16 v12, 0x64

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo v12, "screen_resolution_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 106
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v1, 0x1

    .line 107
    .local v1, "currentResolution":I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "default_display_size_forced"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "sizeStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string/jumbo v12, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 124
    :cond_2
    :try_start_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 125
    .local v3, "point":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    .line 126
    .local v11, "windowManager":Landroid/view/IWindowManager;
    const/4 v12, 0x0

    invoke-interface {v11, v12, v3}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 127
    iget v12, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v13, 0x5a0

    if-lt v12, v13, :cond_9

    .line 128
    const/4 v1, 0x2

    .line 138
    .end local v3    # "point":Landroid/graphics/Point;
    .end local v11    # "windowManager":Landroid/view/IWindowManager;
    :goto_2
    return v1

    .line 106
    .end local v1    # "currentResolution":I
    .end local v5    # "sizeStr":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "currentResolution":I
    goto :goto_1

    .line 110
    .restart local v5    # "sizeStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "sizeArray":[Ljava/lang/String;
    if-eqz v4, :cond_5

    array-length v12, v4

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 113
    .local v10, "width":I
    :goto_3
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getCurrentResolution: width = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v12, 0x5a0

    if-lt v10, v12, :cond_7

    .line 116
    const/4 v1, 0x2

    goto :goto_2

    .line 112
    .end local v10    # "width":I
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v10, 0x438

    .restart local v10    # "width":I
    goto :goto_3

    .end local v10    # "width":I
    :cond_6
    const/16 v10, 0x5a0

    .restart local v10    # "width":I
    goto :goto_3

    .line 117
    :cond_7
    const/16 v12, 0x2d0

    if-le v10, v12, :cond_8

    const/16 v12, 0x438

    if-gt v10, v12, :cond_8

    .line 118
    const/4 v1, 0x1

    .line 117
    goto :goto_2

    .line 120
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 129
    .end local v4    # "sizeArray":[Ljava/lang/String;
    .end local v10    # "width":I
    .restart local v3    # "point":Landroid/graphics/Point;
    .restart local v11    # "windowManager":Landroid/view/IWindowManager;
    :cond_9
    :try_start_1
    iget v12, v3, Landroid/graphics/Point;->x:I

    const/16 v13, 0x2d0

    if-le v12, v13, :cond_a

    iget v12, v3, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v13, 0x438

    if-gt v12, v13, :cond_a

    .line 130
    const/4 v1, 0x1

    goto :goto_2

    .line 132
    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    .line 134
    .end local v3    # "point":Landroid/graphics/Point;
    .end local v11    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "PSMUtils"

    const-string/jumbo v13, "getInitialDisplaySize() has been occured RemoteException"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    .end local v1    # "currentResolution":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "sizeStr":Ljava/lang/String;
    :cond_b
    const-string/jumbo v12, "restricted_device_performance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 140
    const/4 v12, 0x0

    return v12

    .line 141
    :cond_c
    const-string/jumbo v12, "psm_network_power_saving"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 142
    const/4 v12, 0x0

    return v12

    .line 143
    :cond_d
    const-string/jumbo v12, "psm_always_on_display_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "aod_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    return v12

    .line 146
    :cond_e
    const/4 v12, -0x1

    return v12

    .line 150
    :cond_f
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPSMValue(): key = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mode ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v6, -0x1

    .line 154
    .local v6, "value":I
    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/String;

    .line 155
    .local v7, "valueArray":[Ljava/lang/String;
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_11

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "valueString":Ljava/lang/String;
    :goto_4
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_10

    .line 162
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 163
    add-int/lit8 v12, p3, -0x1

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "valueStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 166
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_10
    :goto_5
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPSMValue(): value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v6

    .line 158
    .end local v9    # "valueString":Ljava/lang/String;
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "valueString":Ljava/lang/String;
    goto :goto_4

    .line 164
    .restart local v8    # "valueStr":Ljava/lang/String;
    :cond_12
    const/4 v6, -0x1

    goto :goto_5
.end method

.method public static getTimeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I
    .param p2, "twoline"    # Z

    .prologue
    const v6, 0x7f0b0a22

    const v9, 0x7f0b0a23

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 570
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimeString(): time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    div-int/lit8 v1, p1, 0x3c

    .line 572
    .local v1, "hour":I
    rem-int/lit8 v2, p1, 0x3c

    .line 574
    .local v2, "minute":I
    if-nez v1, :cond_0

    if-lez v2, :cond_0

    .line 575
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "contentDesc":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 576
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_0
    if-lez v1, :cond_1

    if-nez v2, :cond_1

    .line 577
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 578
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_1
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 579
    if-eqz p2, :cond_2

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 581
    const-string/jumbo v4, "\n"

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 584
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b0a24

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 584
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 586
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 587
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 590
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_4
    const v3, 0x7f0b01cd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I
    .param p2, "twoline"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 597
    const-string/jumbo v1, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimeStringWithMark(): time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-gez p1, :cond_0

    .line 600
    new-array v1, v5, [Ljava/lang/Object;

    .line 601
    mul-int/lit8 v2, p1, -0x1

    invoke-static {p0, v2, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 600
    const v2, 0x7f0b0a41

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 603
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 604
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 603
    const v2, 0x7f0b0a40

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isAODServiceEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 393
    const-string/jumbo v0, "com.samsung.android.app.aodservice"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isButtonBackground(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 677
    const-string/jumbo v3, "show_button_background"

    .line 676
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isChangedValue(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/16 v1, 0x50

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "result":Z
    if-ne p1, v4, :cond_6

    .line 475
    const-string/jumbo v2, "limit_brightness_state"

    invoke-static {p0, v2, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    if-ne v2, v1, :cond_0

    .line 476
    const-string/jumbo v1, "WQHD,FHD,HD"

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 477
    const-string/jumbo v1, "screen_resolution_state"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 482
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 493
    :cond_1
    :goto_2
    return v0

    .line 475
    :cond_2
    const/16 v1, 0x5a

    goto :goto_0

    .line 478
    :cond_3
    const-string/jumbo v1, "restricted_device_performance"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 479
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "psm_network_power_saving"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 481
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "psm_always_on_display_mode"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 480
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_back_data_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 484
    :cond_6
    const-string/jumbo v2, "limit_brightness_state"

    invoke-static {p0, v2, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 485
    const-string/jumbo v1, "WQHD,FHD,HD"

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 486
    const-string/jumbo v1, "screen_resolution_state"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_8

    .line 491
    :cond_7
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    .line 487
    :cond_8
    const-string/jumbo v1, "restricted_device_performance"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 488
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "psm_network_power_saving"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 490
    :cond_9
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "psm_always_on_display_mode"

    invoke-static {p0, v1, v5, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v4, :cond_1

    goto :goto_3

    .line 489
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_power_mode_back_data_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_9

    goto :goto_3
.end method

.method public static isDisableMaxMode(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "shared_device_status"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 500
    .local v2, "sd_status":I
    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 501
    :cond_0
    return v4

    .line 504
    :cond_1
    const/4 v3, 0x0

    .line 505
    .local v3, "ucmKeyGuardEnabled":Z
    const-string/jumbo v5, "persist.keyguard.ucs"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "propertyValue":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    return v4

    .line 510
    :cond_2
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 512
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isVideoCallActive(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_0
    return v4

    .line 514
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    goto :goto_0
.end method

.method public static isHebrewLanguage()Z
    .locals 2

    .prologue
    .line 766
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string/jumbo v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 770
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isNetworkPowerSavingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 687
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    const-string/jumbo v1, "com.sec.EnhancedDataManagement"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.sec.NetworkPowerSaving"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 687
    if-eqz v1, :cond_1

    .line 689
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 687
    :cond_1
    return v0
.end method

.method public static isPowerSavingModeAllowed(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 745
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 746
    .local v1, "edmUri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 747
    .local v8, "isPowerSavingModeAllowed":Z
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    .line 748
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "false"

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 749
    .local v4, "selectionArgsFalse":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 750
    .local v7, "edmCr":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 752
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 754
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 758
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_0
    :goto_1
    const-string/jumbo v0, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPowerSavingModeAllowed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return v8

    .line 754
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v6

    .line 756
    .local v6, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v0, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CursorWindowAllocationException"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 757
    .end local v6    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 758
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 757
    throw v0
.end method

.method private static isVideoCallActive(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 520
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 521
    .local v1, "result":Ljava/lang/Boolean;
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVideoCallActive ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    return-object v1

    .line 523
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public static setLastPSMbrightness(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "brightness"    # I

    .prologue
    .line 793
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 794
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 795
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "last_psm_brightness_value"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 796
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 791
    return-void
.end method

.method private static setLastPSMmode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 775
    const-string/jumbo v2, "last_psm_mode"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 776
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 777
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 778
    const-string/jumbo v2, "last_psm_mode"

    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 782
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 773
    return-void

    .line 779
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 780
    const-string/jumbo v2, "last_psm_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 667
    .local v0, "fontScale":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v2, v3

    .line 665
    .local v1, "fontSize":F
    const v2, 0x3f99999a    # 1.2f

    .line 669
    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 665
    const v0, 0x3f99999a    # 1.2f

    .line 672
    :cond_0
    mul-float v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 664
    return-void
.end method

.method private static setPSMMaxBrightness(Landroid/content/Context;II)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevMode"    # I
    .param p2, "afterMode"    # I

    .prologue
    const/16 v9, 0xff

    const v12, 0x4021eb85    # 2.53f

    const/4 v10, 0x0

    .line 233
    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 235
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-virtual {v6, v10}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v2

    .line 236
    .local v2, "curBrightness":F
    if-ne p1, p2, :cond_3

    .line 237
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v8

    .line 236
    :goto_0
    add-int/lit8 v7, v8, -0x5a

    .line 239
    .local v7, "prevScale":I
    const-string/jumbo v8, "PSMUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setPSMMaxBrightness() prevScale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    int-to-float v8, v7

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v8, v10

    mul-float/2addr v8, v12

    add-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 241
    .local v5, "orgBrightness":I
    if-le v5, v9, :cond_0

    move v5, v9

    .line 242
    :cond_0
    if-gez v5, :cond_1

    const/4 v5, 0x0

    .line 243
    :cond_1
    invoke-static {p0, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v0

    .line 244
    .local v0, "afterModeBrightness":I
    add-int/lit8 v1, v0, -0x5a

    .line 245
    .local v1, "afterScale":I
    int-to-float v8, v5

    int-to-float v9, v1

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 246
    .local v3, "newBrightness":I
    const-string/jumbo v8, "PSMUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setPSMMaxBrightness() from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 247
    const-string/jumbo v10, ", orgBrightness="

    .line 246
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p0}, Lcom/android/settings/Utils;->isBrightnessManualMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 249
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 250
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_brightness"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    :goto_1
    invoke-static {p0, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMbrightness(Landroid/content/Context;I)V

    .line 232
    return-void

    .line 237
    .end local v0    # "afterModeBrightness":I
    .end local v1    # "afterScale":I
    .end local v3    # "newBrightness":I
    .end local v5    # "orgBrightness":I
    .end local v7    # "prevScale":I
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v8

    goto/16 :goto_0

    .line 252
    .restart local v0    # "afterModeBrightness":I
    .restart local v1    # "afterScale":I
    .restart local v3    # "newBrightness":I
    .restart local v5    # "orgBrightness":I
    .restart local v7    # "prevScale":I
    :cond_4
    invoke-static {p0, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v4

    .line 253
    .local v4, "newMaxBrightness":I
    const-string/jumbo v8, "PSMUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "auto_brightness_limit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_brightness_limit"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public static setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "table"    # I
    .param p3, "mode"    # I
    .param p4, "value"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 173
    if-nez p3, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    .line 179
    .local v1, "valueArray":[Ljava/lang/String;
    if-ne p2, v6, :cond_4

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "valueString":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 187
    const-string/jumbo v2, "0, 0"

    .line 189
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    if-ne p3, v6, :cond_5

    .line 192
    aget-object v3, v1, p3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p3

    .line 196
    :cond_2
    :goto_1
    add-int/lit8 v3, p3, -0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 198
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "setValue":Ljava/lang/String;
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPSMValue(): setValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPSMValue(): setValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz v0, :cond_3

    .line 206
    if-ne p2, v6, :cond_6

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    :cond_3
    :goto_2
    return-void

    .line 183
    .end local v0    # "setValue":Ljava/lang/String;
    .end local v2    # "valueString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "valueString":Ljava/lang/String;
    goto :goto_0

    .line 193
    :cond_5
    if-ne p3, v4, :cond_2

    .line 194
    add-int/lit8 v3, p3, -0x2

    add-int/lit8 v4, p3, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 210
    .restart local v0    # "setValue":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public static setPowerSavingMode(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;IZ)V

    .line 271
    return-void
.end method

.method public static setPowerSavingMode(Landroid/content/Context;IZ)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "fromExPopup"    # Z

    .prologue
    .line 278
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMmode(Landroid/content/Context;I)V

    .line 280
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 281
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    .line 282
    .local v0, "currentMode":I
    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMMaxBrightness(Landroid/content/Context;II)V

    .line 286
    .end local v0    # "currentMode":I
    :cond_0
    const/4 v6, 0x0

    .line 287
    .local v6, "multiResolutionChange":Z
    move v8, p1

    .line 288
    .local v8, "resolution":I
    invoke-static {p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    .line 291
    .local v1, "currentResolution":I
    const-string/jumbo v11, "WQHD,FHD,HD"

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 292
    const-string/jumbo v11, "screen_resolution_state"

    const/4 v12, 0x2

    invoke-static {p0, v11, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v8

    .line 294
    if-eq v1, v8, :cond_1

    .line 295
    const/4 v6, 0x1

    .line 299
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "low_power"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    .line 300
    .local v4, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v9, 0x1

    .line 302
    .local v9, "ultraPowerMode":Z
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 303
    const-string/jumbo v11, "psm_network_power_saving"

    const/4 v12, 0x2

    invoke-static {p0, v11, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v7, 0x1

    .line 304
    .local v7, "npsmchecked":Z
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_power_mode_back_data_off"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v5, "mIntent":Landroid/content/Intent;
    const-string/jumbo v11, "com.sec.NetworkPowerSaving"

    const-string/jumbo v12, "com.sec.NetworkPowerSaving.NetworkPowerSavingService"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    if-eqz v7, :cond_a

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sm_connectivity_disable"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 310
    const-string/jumbo v11, "PSMUtils"

    const-string/jumbo v12, "NPSM started"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v5    # "mIntent":Landroid/content/Intent;
    .end local v7    # "npsmchecked":Z
    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    const/4 v11, 0x1

    if-ne p1, v11, :cond_10

    .line 319
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "low_power"

    if-nez p1, :cond_b

    const/4 v11, 0x0

    :goto_4
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    const/4 v11, 0x1

    if-ne p1, v11, :cond_5

    if-eqz v4, :cond_4

    if-eqz v9, :cond_5

    .line 321
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "low_power_trigger_level"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    :cond_5
    if-eqz v9, :cond_d

    .line 326
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "enabled"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const-string/jumbo v11, "flag"

    const/16 v12, 0x200

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string/jumbo v11, "skipdialog"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    const/high16 v11, 0x10000000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    const-string/jumbo v12, "ResolutiON-CHANGE"

    if-eqz v6, :cond_c

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 275
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_6
    return-void

    .line 299
    .end local v4    # "lowPowerMode":Z
    .end local v9    # "ultraPowerMode":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "lowPowerMode":Z
    goto/16 :goto_0

    .line 300
    :cond_8
    const/4 v9, 0x0

    .restart local v9    # "ultraPowerMode":Z
    goto/16 :goto_1

    .line 303
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "npsmchecked":Z
    goto/16 :goto_2

    .line 312
    .restart local v5    # "mIntent":Landroid/content/Intent;
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sm_connectivity_disable"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    invoke-virtual {p0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 314
    const-string/jumbo v11, "PSMUtils"

    const-string/jumbo v12, "NPSM stoped"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 319
    .end local v5    # "mIntent":Landroid/content/Intent;
    .end local v7    # "npsmchecked":Z
    :cond_b
    const/4 v11, 0x1

    goto :goto_4

    .line 331
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 334
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d
    const-string/jumbo v11, "WQHD,FHD,HD"

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 335
    if-nez p2, :cond_6

    .line 336
    if-nez p1, :cond_f

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "easy_mode_switch"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    .line 338
    const/4 v11, 0x0

    invoke-static {p0, v1, v11}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto :goto_6

    .line 341
    :cond_e
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    .line 342
    .local v10, "windowManager":Landroid/view/IWindowManager;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 343
    .end local v10    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "PSMUtils"

    const-string/jumbo v12, "clearForcedDisplaySizeDensity() for Normal mode has occured exception"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 347
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_f
    if-eqz p1, :cond_6

    if-eqz v6, :cond_6

    .line 348
    const/4 v11, 0x0

    invoke-static {p0, v8, v11}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto :goto_6

    .line 353
    :cond_10
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 355
    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "UPSO"

    const-string/jumbo v13, "ON"

    invoke-static {p0, v11, v12, v13}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_11
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v11, "enabled"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    const-string/jumbo v11, "flag"

    const/16 v12, 0x200

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string/jumbo v11, "skipdialog"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const/high16 v11, 0x10000000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    const-string/jumbo v12, "ResolutiON-CHANGE"

    if-eqz v6, :cond_12

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    .line 364
    :cond_12
    const/4 v11, 0x0

    goto :goto_7
.end method

.method public static showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAD"    # Landroid/app/AlertDialog;
    .param p2, "mPowerSavingMode"    # I
    .param p3, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAD"    # Landroid/app/AlertDialog;
    .param p2, "mPowerSavingMode"    # I
    .param p3, "fromWhere"    # Ljava/lang/String;
    .param p4, "bsm"    # Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    .prologue
    const v6, 0x7f0b0a66

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 699
    if-eqz p1, :cond_0

    .line 700
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 701
    const/4 p1, 0x0

    .line 704
    .end local p1    # "mAD":Landroid/app/AlertDialog;
    :cond_0
    if-ne p2, v4, :cond_1

    .line 705
    const v1, 0x7f0b0a50

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "mode":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 710
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 711
    aput-object v0, v2, v5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 710
    const v3, 0x7f0b0a73

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 712
    new-array v2, v4, [Ljava/lang/Object;

    .line 713
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 712
    const v3, 0x7f0b0a72

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 714
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$1;

    invoke-direct {v2, p4, p0, p2, p3}, Lcom/samsung/android/settings/powersaving/PSMUtils$1;-><init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/content/Context;ILjava/lang/String;)V

    const v3, 0x7f0b0ae8

    .line 709
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 729
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$2;

    invoke-direct {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils$2;-><init>()V

    const/high16 v3, 0x1040000

    .line 709
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 733
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$3;

    invoke-direct {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils$3;-><init>()V

    .line 709
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 740
    .restart local p1    # "mAD":Landroid/app/AlertDialog;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 741
    return-object p1

    .line 707
    .end local v0    # "mode":Ljava/lang/String;
    .end local p1    # "mAD":Landroid/app/AlertDialog;
    :cond_1
    const v1, 0x7f0b0a51

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0
.end method

.method public static startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "psmMode"    # I
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 398
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v6

    .line 400
    .local v6, "batteryNormalTime":I
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.sm.ACTION_POWER_SAVING_ANIMATION"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v17, "viIntent":Landroid/content/Intent;
    const/high16 v18, 0x10000000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    const-string/jumbo v18, "limit_brightness_state"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v7

    .line 405
    .local v7, "brightnessStatus":I
    add-int/lit8 v18, v7, -0x50

    div-int/lit8 v18, v18, 0x5

    .line 404
    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v18

    sub-int v8, v18, v6

    .line 406
    .local v8, "brightnessTime":I
    const-string/jumbo v18, "key_item_brightness"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v18, "WQHD,FHD,HD"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 409
    const-string/jumbo v18, "screen_resolution_state"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v15

    .line 411
    .local v15, "resolutionStatus":I
    add-int/lit8 v18, v15, 0xc

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v18

    sub-int v16, v18, v6

    .line 412
    .local v16, "resolutionTime":I
    const-string/jumbo v18, "key_item_resolution"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 414
    if-eqz p2, :cond_3

    const-string/jumbo v18, "smartmanager"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 423
    .end local v15    # "resolutionStatus":I
    .end local v16    # "resolutionTime":I
    :cond_0
    :goto_0
    const-string/jumbo v18, "restricted_device_performance"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v13

    .line 424
    .local v13, "performanceStatus":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 425
    const/16 v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v18

    sub-int v14, v18, v6

    .line 426
    .local v14, "performanceTime":I
    :goto_1
    const-string/jumbo v18, "key_item_device_performance"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 428
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 429
    const-string/jumbo v18, "psm_always_on_display_mode"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    .line 430
    .local v4, "aodStatus":I
    int-to-long v0, v6

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getChangeBatteryTimeAodMode(Landroid/content/Context;IJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 431
    .local v5, "aodStatusTime":I
    const-string/jumbo v18, "key_item_aod"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 434
    .end local v4    # "aodStatus":I
    .end local v5    # "aodStatusTime":I
    :cond_1
    const/4 v9, 0x0

    .line 435
    .local v9, "dataStatus":I
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-nez v18, :cond_6

    .line 436
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    .line 448
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v18

    sub-int v10, v18, v6

    .line 450
    .local v10, "dataStatusTime":I
    :goto_3
    const-string/jumbo v18, "key_item_bg_network"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 462
    .end local v10    # "dataStatusTime":I
    :cond_2
    :goto_4
    const-string/jumbo v18, "key_current_battery"

    new-instance v19, Lcom/samsung/android/settings/powersaving/BatteryWorker;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/BatteryWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/powersaving/BatteryWorker;->getBatteryLevel()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    const-string/jumbo v18, "key_next_psm_mode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string/jumbo v19, "key_init_battery_time"

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string/jumbo v18, "key_extended_battery_time_delta"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    sub-int v19, v19, v6

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string/jumbo v18, "key_button_type"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 467
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 469
    .local v12, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 396
    return-void

    .line 415
    .end local v9    # "dataStatus":I
    .end local v12    # "options":Landroid/app/ActivityOptions;
    .end local v13    # "performanceStatus":I
    .end local v14    # "performanceTime":I
    .restart local v15    # "resolutionStatus":I
    .restart local v16    # "resolutionTime":I
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    .line 416
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const/high16 v18, 0x10200000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 425
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "resolutionStatus":I
    .end local v16    # "resolutionTime":I
    .restart local v13    # "performanceStatus":I
    :cond_4
    const/4 v14, 0x0

    .restart local v14    # "performanceTime":I
    goto/16 :goto_1

    .line 438
    .restart local v9    # "dataStatus":I
    :pswitch_0
    const/4 v9, 0x0

    .line 439
    goto/16 :goto_2

    .line 441
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "low_power_back_data_off"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_2

    .line 444
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "ultra_power_mode_back_data_off"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_2

    .line 448
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "dataStatusTime":I
    goto/16 :goto_3

    .line 452
    .end local v10    # "dataStatusTime":I
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 453
    const-string/jumbo v18, "psm_network_power_saving"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v9

    .line 454
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_7

    .line 455
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    sub-int v10, v18, v19

    .line 457
    .restart local v10    # "dataStatusTime":I
    :goto_6
    const-string/jumbo v18, "key_item_restrict_network"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 455
    .end local v10    # "dataStatusTime":I
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "dataStatusTime":I
    goto :goto_6

    .line 464
    .end local v10    # "dataStatusTime":I
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startPSMDialogActivity(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 369
    return-void
.end method

.method public static startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 374
    if-eqz p1, :cond_1

    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string/jumbo v1, "battery_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    if-eqz p2, :cond_0

    .line 379
    const-string/jumbo v1, "fromWhere"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 373
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 384
    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    goto :goto_0
.end method
