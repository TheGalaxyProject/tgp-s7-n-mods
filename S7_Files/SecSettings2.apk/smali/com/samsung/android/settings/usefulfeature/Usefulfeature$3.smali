.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 321
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .param p1, "selfChange"    # Z

    .prologue
    const v7, 0x7f0b19dc

    const v6, 0x7f0b19db

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 324
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 325
    const-string/jumbo v8, "access_control_enabled"

    .line 324
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 326
    .local v4, "onInteractionConrol":I
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 327
    if-ne v4, v10, :cond_5

    .line 328
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 329
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 331
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 332
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b0418

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 351
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 352
    if-ne v4, v10, :cond_c

    .line 353
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 354
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 355
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 356
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 357
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 358
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b091c

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 379
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 380
    if-ne v4, v10, :cond_14

    .line 381
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 382
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 383
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 384
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 385
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 386
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b091a

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 408
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 409
    if-ne v4, v10, :cond_1b

    .line 410
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 411
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 412
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 413
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 414
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v6, 0x7f0b091e

    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 323
    :cond_3
    :goto_3
    return-void

    .line 334
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 337
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 338
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 339
    const-string/jumbo v8, "surface_palm_swipe"

    .line 338
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    .line 340
    .local v1, "mPalmSwipeCheck":Z
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 341
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 342
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 343
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_7

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 338
    .end local v1    # "mPalmSwipeCheck":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "mPalmSwipeCheck":Z
    goto :goto_4

    .line 344
    :cond_7
    const v5, 0x7f0b0418

    goto :goto_5

    .line 346
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_9

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_9
    move v5, v7

    .line 347
    goto :goto_6

    .line 360
    .end local v1    # "mPalmSwipeCheck":Z
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b091b

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 363
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 366
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 367
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 368
    const-string/jumbo v8, "motion_pick_up"

    .line 367
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v2, 0x1

    .line 369
    .local v2, "mPickUpCheck":Z
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 370
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 371
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 372
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_e

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 367
    .end local v2    # "mPickUpCheck":Z
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "mPickUpCheck":Z
    goto :goto_7

    .line 372
    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_f

    const v5, 0x7f0b091c

    goto :goto_8

    :cond_f
    const v5, 0x7f0b091b

    goto :goto_8

    .line 374
    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_11

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_11
    move v5, v7

    .line 375
    goto :goto_9

    .line 388
    .end local v2    # "mPickUpCheck":Z
    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b0919

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 391
    :cond_13
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 394
    :cond_14
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 395
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 396
    const-string/jumbo v8, "motion_pick_up_to_call_out"

    .line 395
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v3, 0x1

    .line 397
    .local v3, "mPickUpToCallOutCheck":Z
    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 398
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 399
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 400
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v3, :cond_16

    move v5, v6

    :goto_b
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 395
    .end local v3    # "mPickUpToCallOutCheck":Z
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "mPickUpToCallOutCheck":Z
    goto :goto_a

    .line 400
    :cond_16
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_17

    const v5, 0x7f0b091a

    goto :goto_b

    :cond_17
    const v5, 0x7f0b0919

    goto :goto_b

    .line 402
    :cond_18
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    .line 403
    if-eqz v3, :cond_19

    move v5, v6

    .line 402
    :goto_c
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_19
    move v5, v7

    .line 404
    goto :goto_c

    .line 416
    .end local v3    # "mPickUpToCallOutCheck":Z
    :cond_1a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 419
    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 420
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 421
    const-string/jumbo v8, "motion_merged_mute_pause"

    .line 420
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v0, 0x1

    .line 422
    .local v0, "mMergedMutePauseCheck":Z
    :goto_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 423
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 424
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 425
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    .line 426
    if-eqz v0, :cond_1d

    .line 425
    :goto_e
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 420
    .end local v0    # "mMergedMutePauseCheck":Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "mMergedMutePauseCheck":Z
    goto :goto_d

    .line 427
    :cond_1d
    const v6, 0x7f0b091e

    goto :goto_e

    .line 429
    :cond_1e
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    .line 430
    if-eqz v0, :cond_1f

    .line 429
    :goto_f
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1f
    move v6, v7

    .line 431
    goto :goto_f
.end method
