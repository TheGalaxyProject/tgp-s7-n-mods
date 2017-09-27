.class public Lcom/android/systemui/recents/model/RecentsSettingHelper;
.super Ljava/lang/Object;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;,
        Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

.field private mIconTrayObserver:Landroid/database/ContentObserver;

.field private mIconTraySetting:I

.field private mIsDesktopMode:Z

.field private mMobileKeyboardEnabled:Z

.field private mMobileKeyboardObserver:Landroid/database/ContentObserver;

.field private mMultiWindowSettingEnabled:Z

.field private mNeedDarkFont:Z

.field private mNeedDarkFontObserver:Landroid/database/ContentObserver;

.field private mPrivateModeEnabled:Z

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mUPSModeEnabled:Z

.field private mUPSModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/RecentsSettingHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySetting:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySetting:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMultiWindowSettingEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFont:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 41
    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    .line 54
    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->register()V

    .line 61
    return-void
.end method


# virtual methods
.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    return v0
.end method

.method public isMobileKeyboardEnabled()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardEnabled:Z

    return v0
.end method

.method public isMultiWindowSettingEnabled()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMultiWindowSettingEnabled:Z

    return v0
.end method

.method public isPrivateModeEnabled()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    return v0
.end method

.method public isUPSModeEnabled()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    return v0
.end method

.method public needDarkFont()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFont:Z

    return v0
.end method

.method public register()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_0

    .line 72
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v7, "personal_mode_enabled"

    .line 72
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    .line 75
    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 83
    const-string/jumbo v5, "personal_mode_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 84
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, -0x1

    .line 82
    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_1

    .line 89
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    .line 90
    const-string/jumbo v7, "ultra_powersaving_mode"

    .line 89
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_7

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    .line 92
    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$2;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    .line 100
    const-string/jumbo v5, "ultra_powersaving_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 101
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, -0x1

    .line 99
    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMultiWindowSettingEnabled:Z

    .line 107
    new-instance v2, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    .line 108
    .local v2, "multiWindowEventListener":Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    .line 112
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v5, :cond_2

    .line 113
    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    .line 114
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 115
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDesktopMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    .line 119
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_3

    .line 120
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    .line 121
    const-string/jumbo v7, "mobile_keyboard"

    .line 120
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_8

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardEnabled:Z

    .line 123
    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$3;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    .line 129
    const-string/jumbo v5, "mobile_keyboard"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 130
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    .line 129
    const/4 v7, 0x0

    .line 130
    const/4 v8, -0x1

    .line 129
    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 133
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_4

    .line 134
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    .line 135
    const-string/jumbo v7, "need_dark_font"

    .line 134
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_9

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFont:Z

    .line 136
    new-instance v3, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    .line 143
    const-string/jumbo v3, "need_dark_font"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 144
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, -0x1

    .line 143
    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTrayObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_5

    .line 148
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 149
    const-string/jumbo v4, "tap_to_icon"

    const/4 v5, -0x1

    .line 148
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySetting:I

    .line 151
    new-instance v3, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTrayObserver:Landroid/database/ContentObserver;

    .line 166
    const-string/jumbo v3, "tap_to_icon"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 167
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTrayObserver:Landroid/database/ContentObserver;

    .line 166
    const/4 v5, 0x0

    .line 167
    const/4 v6, -0x2

    .line 166
    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "multiWindowEventListener":Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
    :cond_5
    :goto_4
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_6
    move v5, v4

    .line 72
    goto/16 :goto_0

    :cond_7
    move v5, v4

    .line 89
    goto/16 :goto_1

    .restart local v2    # "multiWindowEventListener":Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
    :cond_8
    move v5, v4

    .line 120
    goto/16 :goto_2

    :cond_9
    move v3, v4

    .line 134
    goto :goto_3

    .line 169
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "multiWindowEventListener":Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
