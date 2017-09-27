.class public Lcom/samsung/android/settings/ResetSettingsValue;
.super Ljava/lang/Object;
.source "ResetSettingsValue.java"


# instance fields
.field public isSupportLightSensor:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename_2:Ljava/lang/String;

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilename_2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->isSupportLightSensor:Z

    .line 75
    return-void
.end method

.method private SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "URIsetting"    # Landroid/net/Uri;
    .param p3, "URIInternalMedia"    # Landroid/net/Uri;
    .param p4, "settingString"    # Ljava/lang/String;
    .param p5, "defaultMediaName"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v9, 0x0

    .line 455
    .local v9, "existingSettingValue":Ljava/lang/String;
    const/4 v10, 0x0

    .line 456
    .local v10, "resultMediaCursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 457
    .local v11, "resultSettingCursor":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 458
    .local v12, "rowId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 459
    .local v11, "resultSettingCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_data like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 461
    .local v10, "resultMediaCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 462
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 463
    const/4 v8, 0x0

    .line 464
    .local v8, "bResult":Z
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 465
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 466
    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 467
    .local v8, "bResult":Z
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Write again. Default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]  Result is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v8    # "bResult":Z
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 475
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 453
    .end local v10    # "resultMediaCursor":Landroid/database/Cursor;
    :goto_2
    return-void

    .line 469
    .restart local v10    # "resultMediaCursor":Landroid/database/Cursor;
    :cond_0
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Warning! getCount() of Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in internal DB is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_1
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Warning! Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in internal DB is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    .local v10, "resultMediaCursor":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Warning! Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in setting DB is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private loadDefRingtone()V
    .locals 6

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->setDefaultRingtoneFileNames()V

    .line 483
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 484
    .local v3, "URIdefaultSound":Landroid/net/Uri;
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 485
    .local v2, "URIsetting":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 487
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "alarm_alert"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string/jumbo v4, "notification_sound"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v4, "ringtone"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string/jumbo v4, "ringtone_2"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v4, "notification_sound_2"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename_2:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_0
    return-void
.end method

.method private resetAccessibilitySettings()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 500
    const-string/jumbo v7, "ResetSettingsValue"

    const-string/jumbo v8, "resetAccessibilitySettings - start "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 503
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 506
    .local v5, "mAudioManager":Landroid/media/AudioManager;
    const-string/jumbo v7, "enabled_accessibility_services"

    const-string/jumbo v8, ""

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 507
    const-string/jumbo v7, "accessibility_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    const-string/jumbo v7, "lcd_curtain"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    const-string/jumbo v7, "high_text_contrast_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 517
    const-string/jumbo v7, "rapid_key_input"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    const-string/jumbo v7, "rapid_key_input_menu_checked"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    :goto_0
    const-string/jumbo v7, "accessibility_large_pointer_icon"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    const-string/jumbo v7, "speak_password"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    const-string/jumbo v7, "accessiblity_font_switch"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    const-string/jumbo v7, "show_button_background"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    const-string/jumbo v7, "finger_magnifier"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    const-string/jumbo v7, "hover_zoom_value"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    const-string/jumbo v7, "hover_zoom_magnifier_size"

    invoke-static {v1, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "magnifier_pref"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 541
    .local v6, "mSharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 544
    const-string/jumbo v7, "accessibility_display_magnification_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    const-string/jumbo v7, "greyscale_mode"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    const-string/jumbo v7, "high_contrast"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    const-string/jumbo v7, "color_blind"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    const-string/jumbo v7, "color_blind_test"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    const-string/jumbo v7, "enable_accessibility_global_gesture_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    const-string/jumbo v7, "flash_notification"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    const-string/jumbo v7, "all_sound_off"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    const-string/jumbo v7, "hearing_aid"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 567
    const-string/jumbo v7, "call_hearing_aid"

    const-string/jumbo v8, "OFF"

    invoke-virtual {v5, v7, v8}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string/jumbo v7, "HACSetting=OFF"

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 571
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 572
    .local v2, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string/jumbo v7, "accessibility_captioning_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    const-string/jumbo v7, "accessibility_captioning_foreground_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    const-string/jumbo v7, "accessibility_captioning_background_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    const-string/jumbo v7, "accessibility_captioning_edge_type"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    const-string/jumbo v7, "accessibility_captioning_edge_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 577
    const-string/jumbo v7, "accessibility_captioning_window_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    const-string/jumbo v7, "accessibility_captioning_preset"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 579
    const-string/jumbo v7, "accessibility_captioning_preset"

    iget-object v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 580
    const-string/jumbo v7, "accessibility_captioning_font_scale"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    const-string/jumbo v7, "accessibility_captioning_locale"

    const-string/jumbo v8, ""

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 584
    const-string/jumbo v7, "sound_balance"

    const/16 v8, 0x32

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mono_audio_db"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.assistantmenu"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 591
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 592
    const-string/jumbo v8, "assistant_menu"

    .line 591
    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 593
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 594
    const-string/jumbo v8, "assistant_menu_dominant_hand_type"

    .line 593
    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_eam_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_pointer_speed"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_pointer_size"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_pad_size"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 601
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.action.ASSISTANTMENU_SETTINGS_RESET"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v4, "mAssistantEditMenuReset":Landroid/content/Intent;
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.samsung.android.app.assistantmenu"

    .line 609
    const-string/jumbo v9, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    .line 608
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 610
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 613
    .end local v0    # "assistantMenu":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mAssistantEditMenuReset":Landroid/content/Intent;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "accessibility_display_inversion_enabled"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "accessibility_display_daltonizer_enabled"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    const-string/jumbo v7, "air_motion_wake_up"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    const-string/jumbo v7, "long_press_timeout"

    const/16 v8, 0x1f4

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    const-string/jumbo v7, "access_control_use"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    const-string/jumbo v7, "access_control_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    const-string/jumbo v7, "access_control_time_set_hour"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 626
    const-string/jumbo v7, "access_control_time_set_min"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 627
    const-string/jumbo v7, "access_control_power_button"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    const-string/jumbo v7, "access_control_volume_button"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 629
    const-string/jumbo v7, "access_control_keyboard_block"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 632
    const-string/jumbo v7, "direct_access"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 633
    const-string/jumbo v7, "direct_accessibility"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 634
    const-string/jumbo v7, "direct_talkback"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    const-string/jumbo v7, "direct_negative"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    const-string/jumbo v7, "direct_color_adjustment"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    const-string/jumbo v7, "direct_access_control"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    const-string/jumbo v7, "direct_s_talkback"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    const-string/jumbo v7, "direct_universal_switch"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    const-string/jumbo v7, "direct_samsung_screen_reader"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    const-string/jumbo v7, "direct_access_magnifier"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    const-string/jumbo v7, "direct_greyscale"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 645
    const-string/jumbo v7, "notification_reminder"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    const-string/jumbo v7, "notification_reminder_selectable"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    const-string/jumbo v7, "time_key"

    const/16 v8, 0x3c

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    const-string/jumbo v7, "notification_reminder_vibrate"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    const-string/jumbo v7, "notification_reminder_led_indicator"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    const-string/jumbo v7, "notification_reminder_app_list"

    const-string/jumbo v8, "selectAll"

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 653
    const-string/jumbo v7, "easy_interaction"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 655
    const-string/jumbo v7, "ResetSettingsValue"

    const-string/jumbo v8, "resetAccessibilitySettings - finish "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 520
    .end local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v6    # "mSharedPref":Landroid/content/SharedPreferences;
    :cond_1
    const-string/jumbo v7, "rapid_key_input"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    const-string/jumbo v7, "rapid_key_input_menu_checked"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private resetSpenSettings()V
    .locals 3

    .prologue
    .line 427
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_PEN_DETECT_MODE_DISALBED"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "pen_detect_mode_disabled"

    const/4 v2, 0x1

    .line 428
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    const-string/jumbo v1, "pen_detect_mode_disabled"

    const/4 v2, 0x0

    .line 432
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 439
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 441
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 443
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 445
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string/jumbo v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    .line 448
    const-string/jumbo v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename_2:Ljava/lang/String;

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public loadCSC()V
    .locals 2

    .prologue
    .line 659
    new-instance v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;-><init>(Landroid/content/Context;)V

    .line 660
    .local v0, "CscSettings":Lcom/samsung/android/settings/csc/CscSettingsLoader;
    invoke-virtual {v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->update()V

    .line 658
    return-void
.end method

.method public resetAllSettings(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetAccessibilitySettings()V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetGlobalSettings()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetDNDSettings()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetSystemSettings()V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetSecureSettings()V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetFontSettings()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetDisplaySizeSettings()V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->loadCSC()V

    .line 98
    return-void
.end method

.method public resetDNDSettings()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "ResetSettingsValue"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public resetDisplaySizeSettings()V
    .locals 24

    .prologue
    .line 164
    const/4 v9, 0x1

    .line 165
    .local v9, "CLEAR_RESOLUTION":I
    const/4 v8, 0x2

    .line 167
    .local v8, "CLEAR_DENSITY":I
    const/4 v10, 0x3

    .line 168
    .local v10, "clearMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v17, 0x1

    .line 169
    .local v17, "isPSMEnabled":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    .line 170
    .local v18, "isPerformanceEnblaed":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/16 v16, 0x1

    .line 172
    .local v16, "isEasymodeEnabled":Z
    :goto_2
    const-string/jumbo v3, "WQHD,FHD,HD"

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v17, :cond_0

    if-eqz v18, :cond_1

    .line 174
    :cond_0
    const/4 v10, 0x2

    .line 176
    :cond_1
    if-eqz v16, :cond_2

    .line 177
    and-int/lit8 v10, v10, -0x3

    .line 180
    :cond_2
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 181
    .local v13, "default_size":Landroid/graphics/Point;
    const/4 v12, -0x1

    .line 183
    .local v12, "default_density":I
    const/16 v19, 0x1

    .line 184
    .local v19, "resolution":I
    const/16 v14, 0x1e0

    .line 189
    .local v14, "density":I
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 190
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    invoke-interface {v2, v3, v13}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 191
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v12

    .line 192
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() default LCD size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() default density : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "display_size_forced"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 196
    .local v21, "sizeStr":Ljava/lang/String;
    if-eqz v21, :cond_3

    const-string/jumbo v3, ""

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 200
    :cond_3
    iget v11, v13, Landroid/graphics/Point;->x:I

    .line 203
    .local v11, "current_screen_width":I
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 234
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() clearMode +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_4
    return-void

    .line 168
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    .end local v11    # "current_screen_width":I
    .end local v12    # "default_density":I
    .end local v13    # "default_size":Landroid/graphics/Point;
    .end local v14    # "density":I
    .end local v16    # "isEasymodeEnabled":Z
    .end local v17    # "isPSMEnabled":Z
    .end local v18    # "isPerformanceEnblaed":Z
    .end local v19    # "resolution":I
    .end local v21    # "sizeStr":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "isPSMEnabled":Z
    goto/16 :goto_0

    .line 169
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "isPerformanceEnblaed":Z
    goto/16 :goto_1

    .line 170
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "isEasymodeEnabled":Z
    goto/16 :goto_2

    .line 197
    .restart local v2    # "windowManager":Landroid/view/IWindowManager;
    .restart local v12    # "default_density":I
    .restart local v13    # "default_size":Landroid/graphics/Point;
    .restart local v14    # "density":I
    .restart local v19    # "resolution":I
    .restart local v21    # "sizeStr":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 198
    .local v20, "sizeArray":[Ljava/lang/String;
    if-eqz v20, :cond_8

    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "current_screen_width":I
    goto :goto_3

    .end local v11    # "current_screen_width":I
    :cond_8
    const/16 v11, 0x5a0

    .restart local v11    # "current_screen_width":I
    goto :goto_3

    .line 205
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "ResetSettingsValue"

    const-string/jumbo v4, "resetDisplaySizeSettings() Clear Resolution&density "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x5a0

    if-lt v3, v4, :cond_9

    .line 208
    iget v3, v13, Landroid/graphics/Point;->x:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v3, v13, Landroid/graphics/Point;->y:I

    int-to-double v6, v3

    const-wide/high16 v22, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v22

    double-to-int v5, v6

    int-to-double v6, v12

    const-wide/high16 v22, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v22

    double-to-int v6, v6

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityEx(IIIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 238
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    .end local v11    # "current_screen_width":I
    .end local v21    # "sizeStr":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 239
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResetSettingsValue"

    const-string/jumbo v4, "windowManager API exception!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 210
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v2    # "windowManager":Landroid/view/IWindowManager;
    .restart local v11    # "current_screen_width":I
    .restart local v21    # "sizeStr":Ljava/lang/String;
    :cond_9
    :try_start_1
    iget v4, v13, Landroid/graphics/Point;->x:I

    iget v5, v13, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    const/4 v7, 0x1

    move v6, v12

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityEx(IIIIZ)V

    goto :goto_4

    .line 214
    :pswitch_1
    mul-int v3, v12, v11

    iget v4, v13, Landroid/graphics/Point;->x:I

    div-int v14, v3, v4

    .line 215
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() Clear Density density : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v3, v14}, Lcom/android/settings/Utils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 219
    :pswitch_2
    const-string/jumbo v3, "ResetSettingsValue"

    const-string/jumbo v4, "resetDisplaySizeSettings() Clear Resolution"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x5a0

    if-lt v3, v4, :cond_a

    .line 221
    const/16 v19, 0x1

    .line 231
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move/from16 v0, v19

    invoke-static {v3, v0, v4}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto/16 :goto_4

    .line 223
    :cond_a
    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x5a0

    if-lt v3, v4, :cond_b

    .line 224
    const/16 v19, 0x2

    goto :goto_5

    .line 225
    :cond_b
    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-le v3, v4, :cond_c

    iget v3, v13, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v4, 0x438

    if-gt v3, v4, :cond_c

    .line 226
    const/16 v19, 0x1

    .line 225
    goto :goto_5

    .line 228
    :cond_c
    const/16 v19, 0x0

    goto :goto_5

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetFontSettings()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 122
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "prefs"

    invoke-virtual {v10, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 124
    .local v8, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 125
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v10, "selectedFont"

    const-string/jumbo v11, "MONOTYPE"

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    :try_start_0
    new-instance v6, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v6}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    .line 130
    .local v6, "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "sans.loc"

    .line 131
    const-string/jumbo v12, "default#default"

    .line 130
    invoke-virtual {v6, v10, v11, v12}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 135
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v6    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 140
    .local v9, "previousIndex":I
    const-string/jumbo v10, "persist.sys.font_clarity"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v7, "i":Landroid/content/Intent;
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v0

    .line 144
    .local v0, "EXTRA_LARGE_FONT_SCALE":F
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v10

    if-le v9, v10, :cond_0

    .line 145
    const-string/jumbo v10, "large_font"

    invoke-virtual {v7, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    const/high16 v4, 0x3f800000    # 1.0f

    .line 155
    .local v4, "fontScale":F
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/settings/Utils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 157
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v5

    .line 158
    .local v5, "fontSize":I
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    return-void

    .line 136
    .end local v0    # "EXTRA_LARGE_FONT_SCALE":F
    .end local v4    # "fontScale":F
    .end local v5    # "fontSize":I
    .end local v7    # "i":Landroid/content/Intent;
    .end local v9    # "previousIndex":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resetGlobalSettings()V
    .locals 23

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v9

    .line 343
    .local v9, "initPolicy":Landroid/app/NotificationManager$Policy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 344
    .local v15, "rules":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;>;"
    const/4 v13, 0x0

    .line 345
    .local v13, "rule":Landroid/app/AutomaticZenRule;
    const/4 v8, 0x0

    .line 348
    .local v8, "dndId":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/util/Map$Entry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/util/Map$Entry;

    .line 349
    .local v12, "rt":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v20, v19

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v14, v12, v20

    .line 350
    .local v14, "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    const-string/jumbo v22, "twschedule"

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/AutomaticZenRule;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 351
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rule":Landroid/app/AutomaticZenRule;
    check-cast v13, Landroid/app/AutomaticZenRule;

    .line 352
    .local v13, "rule":Landroid/app/AutomaticZenRule;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "dndId":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 357
    .end local v13    # "rule":Landroid/app/AutomaticZenRule;
    .end local v14    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_0
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v16

    .line 359
    :goto_1
    sget-object v19, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 360
    const/16 v19, 0x16

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 361
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 362
    const/16 v19, 0x7

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 363
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 364
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 365
    invoke-static/range {v16 .. v16}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 366
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 367
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    .line 371
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v13}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 372
    iget v11, v9, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 373
    .local v11, "priorityCategories":I
    iget v0, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    move/from16 v17, v0

    .line 374
    .local v17, "suppressedVisualEffects":I
    and-int/lit8 v11, v11, -0x11

    .line 375
    and-int/lit8 v11, v11, -0x9

    .line 376
    and-int/lit8 v11, v11, -0x5

    .line 377
    and-int/lit8 v11, v11, -0x3

    .line 378
    and-int/lit8 v11, v11, -0x2

    .line 379
    or-int/lit8 v11, v11, 0x20

    .line 380
    and-int/lit8 v17, v17, -0x2

    .line 381
    and-int/lit8 v17, v17, -0x3

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v19

    new-instance v20, Landroid/app/NotificationManager$Policy;

    .line 383
    iget v0, v9, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    move/from16 v21, v0

    iget v0, v9, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    move/from16 v22, v0

    .line 382
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v17

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0029

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v5, 0x1

    .line 389
    .local v5, "airplaneMode":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "airplane_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v5, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "airplane_mode_on"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "state"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e002b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 397
    .local v7, "autoTimeZone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "auto_time_zone"

    .line 398
    if-eqz v7, :cond_6

    const/16 v19, 0x1

    .line 397
    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v18, "timeZone":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e002a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 402
    .local v6, "autoTime":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "auto_time"

    .line 403
    if-eqz v6, :cond_7

    const/16 v19, 0x1

    .line 402
    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.TIME_SET"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v4, "actionTime":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    const-string/jumbo v19, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "emergency_tone"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "data_powersaving_mode"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v10    # "intent":Landroid/content/Intent;
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "tap_to_icon"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    return-void

    .line 349
    .end local v4    # "actionTime":Landroid/content/Intent;
    .end local v5    # "airplaneMode":I
    .end local v6    # "autoTime":Z
    .end local v7    # "autoTimeZone":Z
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "priorityCategories":I
    .end local v17    # "suppressedVisualEffects":I
    .end local v18    # "timeZone":Landroid/content/Intent;
    .restart local v8    # "dndId":Ljava/lang/String;
    .local v13, "rule":Landroid/app/AutomaticZenRule;
    .restart local v14    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_2
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_0

    .line 358
    .end local v8    # "dndId":Ljava/lang/String;
    .end local v13    # "rule":Landroid/app/AutomaticZenRule;
    .end local v14    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_3
    const/16 v16, 0x0

    .local v16, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    goto/16 :goto_1

    .line 369
    .end local v16    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_4
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    goto/16 :goto_2

    .line 387
    .restart local v11    # "priorityCategories":I
    .restart local v17    # "suppressedVisualEffects":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "airplaneMode":I
    goto/16 :goto_3

    .line 398
    .restart local v7    # "autoTimeZone":Z
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 403
    .restart local v6    # "autoTime":Z
    .restart local v18    # "timeZone":Landroid/content/Intent;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 410
    .restart local v4    # "actionTime":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "emergency_tone"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6
.end method

.method public resetSecureSettings()V
    .locals 7

    .prologue
    const v6, 0x1120070

    const v5, 0x112006f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screensaver_activate_on_dock"

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 326
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screensaver_activate_on_sleep"

    .line 329
    iget-object v4, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    .line 337
    const-string/jumbo v2, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    .line 336
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    return-void

    :cond_0
    move v0, v2

    .line 327
    goto :goto_0

    :cond_1
    move v1, v2

    .line 329
    goto :goto_1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screensaver_activate_on_dock"

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 331
    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screensaver_activate_on_sleep"

    .line 334
    iget-object v4, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    move v0, v2

    .line 332
    goto :goto_3

    :cond_4
    move v1, v2

    .line 334
    goto :goto_4
.end method

.method public resetSystemSettings()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->loadDefRingtone()V

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetSpenSettings()V

    .line 250
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "gps"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 254
    const-string/jumbo v6, "network"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 257
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_CONFIG_ONEHAND_MODE_POLICY"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "onehandText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 259
    const-string/jumbo v6, "DefaultOn"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 260
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "any_screen_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    :goto_0
    const-string/jumbo v6, "GestureType"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 265
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_handed_op_wakeup_type"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_handed_op_show_hard_keys"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "is_enabled"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "db_popup_view_shortcut"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "db_split_screen_view_shortcut"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 282
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_offload_network_notify"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_1
    const-string/jumbo v6, "ro.build.scafe.version"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "scafeVersion":Ljava/lang/String;
    const-string/jumbo v6, "2016B"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "2016A"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "2015A"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 286
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "skt_phone20_settings"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_a

    const/4 v3, 0x1

    .line 287
    .local v3, "isSKTDial":Z
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/settings/Utils;->lockScreenShortcutDefault(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "def":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_application_shortcut"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    .end local v1    # "def":Ljava/lang/String;
    .end local v3    # "isSKTDial":Z
    :cond_3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.app.aodservice"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 292
    const-string/jumbo v6, "OFF"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_AOD_ConfigDefStatus"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 295
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "aod_mode"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_opacity"

    const/4 v8, 0x5

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_scheduled"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_type"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_on_time"

    const-wide/16 v8, 0x474

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 304
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_off_time"

    const-wide/16 v8, 0x1a4

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 306
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 307
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "volumelimit_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "volumelimit_set_password"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "volume_limiter_value"

    .line 310
    const/16 v8, 0xf

    .line 309
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_display_temperature_red"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_display_temperature_blue"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_display_temperature_green"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    const-string/jumbo v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 318
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "settings_ui"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    :cond_6
    return-void

    .line 262
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "scafeVersion":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "any_screen_enabled"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 267
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_handed_op_wakeup_type"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 270
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "any_screen_enabled"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_handed_op_wakeup_type"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 286
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "scafeVersion":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "isSKTDial":Z
    goto/16 :goto_2

    .line 293
    .end local v3    # "isSKTDial":Z
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "aod_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method
