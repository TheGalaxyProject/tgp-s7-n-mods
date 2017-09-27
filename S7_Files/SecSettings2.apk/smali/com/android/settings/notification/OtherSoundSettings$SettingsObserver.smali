.class final Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/OtherSoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/OtherSoundSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/OtherSoundSettings;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/OtherSoundSettings;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 228
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 246
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 247
    .local v0, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v0}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/OtherSoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/OtherSoundSettings;->-get1(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 249
    return-void

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 7
    .param p1, "register"    # Z

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/OtherSoundSettings;

    invoke-static {v2}, Lcom/android/settings/notification/OtherSoundSettings;->-wrap0(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 235
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 236
    .local v1, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v1}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    :cond_1
    return-void
.end method
