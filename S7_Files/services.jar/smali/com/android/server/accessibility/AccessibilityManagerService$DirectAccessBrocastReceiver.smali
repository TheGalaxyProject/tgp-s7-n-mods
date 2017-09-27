.class Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectAccessBrocastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 426
    :cond_0
    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 428
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set3(Z)Z

    .line 429
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    :cond_1
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.settings.action.directaccess.CLOSE_DIALOG"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v5, "mDirecAccessiIntent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 437
    return-void

    .line 431
    .end local v5    # "mDirecAccessiIntent":Landroid/content/Intent;
    :cond_2
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set3(Z)Z

    goto :goto_0

    .line 438
    :cond_3
    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 439
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 440
    return-void

    .line 441
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 442
    const-string/jumbo v10, "color_blind_test"

    const/4 v11, 0x0

    .line 441
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 443
    .local v7, "testCheck":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 444
    const-string/jumbo v10, "color_blind"

    const/4 v11, 0x0

    .line 443
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 445
    .local v3, "isSetting":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 447
    const-string/jumbo v10, "color_blind_cvdseverity"

    const/4 v11, 0x0

    .line 446
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 448
    .local v4, "mCVDSeverity":F
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 449
    const-string/jumbo v10, "color_blind_user_parameter"

    const/4 v11, 0x0

    .line 448
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v8

    .line 450
    .local v8, "userParameter":F
    const-string/jumbo v9, "power"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 451
    .local v6, "powerManager":Landroid/os/PowerManager;
    const v9, 0x3f19999a    # 0.6f

    cmpg-float v9, v4, v9

    if-gez v9, :cond_6

    const/4 v9, 0x1

    .line 452
    :goto_1
    const-string/jumbo v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 451
    invoke-virtual {v6, v9, v10}, Landroid/os/PowerManager;->setColorWeaknessMode(ZLandroid/os/IBinder;)V

    .line 454
    :try_start_0
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 457
    .end local v4    # "mCVDSeverity":F
    .end local v6    # "powerManager":Landroid/os/PowerManager;
    .end local v8    # "userParameter":F
    :cond_5
    :goto_2
    return-void

    .line 451
    .restart local v4    # "mCVDSeverity":F
    .restart local v6    # "powerManager":Landroid/os/PowerManager;
    .restart local v8    # "userParameter":F
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 458
    .end local v3    # "isSetting":I
    .end local v4    # "mCVDSeverity":F
    .end local v6    # "powerManager":Landroid/os/PowerManager;
    .end local v7    # "testCheck":I
    .end local v8    # "userParameter":F
    :cond_7
    const-string/jumbo v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 459
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    :try_start_1
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13()Landroid/hardware/display/IDisplayManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :cond_8
    :goto_3
    return-void

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 467
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    const-string/jumbo v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 455
    .restart local v3    # "isSetting":I
    .restart local v4    # "mCVDSeverity":F
    .restart local v6    # "powerManager":Landroid/os/PowerManager;
    .restart local v7    # "testCheck":I
    .restart local v8    # "userParameter":F
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_2
.end method
