.class public Lcom/samsung/android/settings/csc/CscSettingsLoader;
.super Ljava/lang/Object;
.source "CscSettingsLoader.java"


# instance fields
.field private final PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/samsung/android/settings/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v0, "Operators.DefaultRinger"

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    .line 92
    const-string/jumbo v0, "USER_PREFERENCES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    .line 89
    return-void
.end method


# virtual methods
.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    new-instance v0, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 104
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time_zone"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 118
    const-string/jumbo v0, "CscSettingsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v3, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string/jumbo v0, "Settings.Main.Sound.MediaVolume"

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 126
    const-string/jumbo v0, "CscSettingsLoader"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings.Main.Sound.NotificationVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v3, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v0, "Settings.Main.Sound.MsgToneVolume"

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.RngVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 136
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.RingVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string/jumbo v0, "Settings.Main.Sound.RngVolume"

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    .line 143
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 144
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.AlarmVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v0, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    .line 151
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 152
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.RngToneAlertType"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string/jumbo v0, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateSilentMode(Ljava/lang/String;)V

    .line 159
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 160
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v0, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    .line 167
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 168
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "15sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    :cond_1
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 197
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    :cond_2
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 208
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Setting Power Saving Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "psm_switch"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    :cond_3
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 219
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Setting GPS Satelites"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "network"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    .line 224
    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "gps,network"

    .line 223
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    :cond_4
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 241
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    .line 240
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 244
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.MotionActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_engine"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :cond_5
    :goto_b
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 254
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_GLANCE_VIEW"

    .line 254
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 253
    if-eqz v0, :cond_26

    .line 256
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "air_motion_glance_view"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    :cond_6
    :goto_c
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 266
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    .line 266
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 265
    if-eqz v0, :cond_28

    .line 268
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Motion.DirctCall"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    .line 270
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    :cond_7
    :goto_d
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 280
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 281
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    .line 280
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 279
    if-eqz v0, :cond_2a

    .line 282
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    :cond_8
    :goto_e
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 292
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 293
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    .line 292
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 291
    if-eqz v0, :cond_2c

    .line 294
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    :cond_9
    :goto_f
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 304
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 305
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    .line 304
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 303
    if-eqz v0, :cond_2e

    .line 306
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    :cond_a
    :goto_10
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 316
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    .line 316
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 315
    if-eqz v0, :cond_30

    .line 318
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_touch"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    :cond_b
    :goto_11
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PREF_RINGTONE_SET"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PREF_ALARMTONE_SET"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 332
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    .line 333
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    .line 334
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    .line 99
    return-void

    .line 108
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time_zone"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 113
    :cond_d
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Timezone Update is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 121
    :cond_e
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Media volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 131
    :cond_f
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Notification volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 139
    :cond_10
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Ring Volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 147
    :cond_11
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "ALARM Volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 155
    :cond_12
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "RngToneAlertType is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 163
    :cond_13
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "KeyTones is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 171
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "30sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 173
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 175
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0x1d4c0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 177
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0x493e0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 179
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0x927c0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 181
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "30min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 192
    :cond_1a
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "BackLight Time is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 200
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 203
    :cond_1c
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Touch Sounds is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 211
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "psm_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 214
    :cond_1e
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Setting Power Saving Mode is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 225
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    .line 227
    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "-gps"

    .line 226
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 229
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    .line 231
    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "gps"

    .line 230
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 232
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    .line 234
    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "-gps"

    .line 233
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 237
    :cond_22
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "GPS Satelites is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 247
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_engine"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_b

    .line 250
    :cond_24
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "MotionActivation is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 259
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "air_motion_glance_view"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    .line 262
    :cond_26
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "GlanceView is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 272
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    .line 273
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 276
    :cond_28
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "DirctCall is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 285
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    .line 288
    :cond_2a
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "SmartAlert is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 297
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    .line 300
    :cond_2c
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "TurnOver is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 309
    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_10

    .line 312
    :cond_2e
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "PalmSwipe is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 321
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_touch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    .line 324
    :cond_30
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "PalmTouch is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
.end method

.method public updateRingtones(I)V
    .locals 17
    .param p1, "type"    # I

    .prologue
    .line 339
    new-instance v7, Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-direct {v7, v13}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 340
    .local v7, "rm":Landroid/media/RingtoneManager;
    const/4 v2, 0x0

    .line 342
    .local v2, "Tag_Str":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    .line 344
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    .line 345
    const-string/jumbo v14, "CscFeature_Common_UseChameleon"

    .line 344
    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 346
    new-instance v4, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    .line 347
    .local v4, "chameleonParser":Lcom/samsung/android/settings/csc/CscParser;
    const-string/jumbo v13, "Operators.DefaultRinger"

    invoke-virtual {v4, v13}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "Tag_Str":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.RingTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 355
    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Chameleon Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 p1, -0x1

    .line 359
    .end local v2    # "Tag_Str":Ljava/lang/String;
    .end local v4    # "chameleonParser":Lcom/samsung/android/settings/csc/CscParser;
    :cond_1
    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Setting Ringtones (type) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 361
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.RingTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 364
    .restart local v2    # "Tag_Str":Ljava/lang/String;
    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "1. Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "Tag_Str":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v2, :cond_14

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    .line 384
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Ringtone found: PREF_RINGTONE_SET(1)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_3
    :goto_1
    invoke-virtual {v7}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 405
    .local v3, "c":Landroid/database/Cursor;
    const-string/jumbo v13, "title"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 406
    .local v11, "titleIndex":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 407
    const/4 v6, 0x0

    .line 409
    .local v6, "position":I
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_4

    .line 410
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 411
    .local v10, "title":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 412
    .local v9, "sbText":Ljava/lang/StringBuffer;
    const-string/jumbo v13, "Ringtone title : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    const-string/jumbo v13, "CscSettingsLoader"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 416
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    .local v8, "sbLog":Ljava/lang/StringBuffer;
    const-string/jumbo v13, "Ringtone equalsIgnoreCase (position): "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 419
    const-string/jumbo v13, "CscSettingsLoader"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v8    # "sbLog":Ljava/lang/StringBuffer;
    .end local v9    # "sbText":Ljava/lang/StringBuffer;
    .end local v10    # "title":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lt v6, v13, :cond_11

    .line 427
    :cond_5
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "No matched ringtones"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    .line 429
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    .line 435
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Aleady failed. The Ringtone is not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 437
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 438
    return-void

    .line 366
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v6    # "position":I
    .end local v11    # "titleIndex":I
    :cond_6
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    .line 367
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.MessageTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 370
    .restart local v2    # "Tag_Str":Ljava/lang/String;
    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "1. Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    .end local v2    # "Tag_Str":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    .line 373
    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.AlarmTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 376
    .restart local v2    # "Tag_Str":Ljava/lang/String;
    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "1. Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v2    # "Tag_Str":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_9

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 394
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Notification found: PREF_NOTIFICATION_SET(1)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 396
    :cond_9
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 401
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Alarmtone found: PREF_ALARMTONE_SET(1)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 422
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v6    # "position":I
    .restart local v9    # "sbText":Ljava/lang/StringBuffer;
    .restart local v10    # "title":Ljava/lang/String;
    .restart local v11    # "titleIndex":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 423
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 440
    .end local v9    # "sbText":Ljava/lang/StringBuffer;
    .end local v10    # "title":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 441
    const-string/jumbo v13, "CscSettingsLoader"

    .line 442
    const-string/jumbo v14, "Ringtone not found. Media DB was not prepared: PREF_RINGTONE_SET(2)"

    .line 441
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 476
    return-void

    .line 443
    :cond_d
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_f

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_e

    .line 450
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Aleady failed. Notification is not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 453
    return-void

    .line 455
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 456
    const-string/jumbo v13, "CscSettingsLoader"

    .line 457
    const-string/jumbo v14, "Notification not found. Media DB was not prepared: PREF_NOTIFICATION_SET(2)"

    .line 456
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 458
    :cond_f
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10

    .line 465
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Aleady failed. Alarmtone is not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 467
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 468
    return-void

    .line 470
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 471
    const-string/jumbo v13, "CscSettingsLoader"

    .line 472
    const-string/jumbo v14, "Alarmtone not found. Media DB was not prepared: PREF_ALARMTONE_SET(2)"

    .line 471
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 478
    :cond_11
    invoke-virtual {v7, v6}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v12

    .line 479
    .local v12, "uri":Landroid/net/Uri;
    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ringtone uri : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz v12, :cond_13

    .line 484
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_15

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v14, v12}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 486
    if-eqz v12, :cond_12

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 488
    const-string/jumbo v14, "DEBUG_RINGTONE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CscSettings : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 487
    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 490
    :cond_12
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Ringtone was set : Before PREF_RINGTONE_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-wide/16 v14, 0x2710

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x3

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 499
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Ringtone was set : PREF_RINGTONE_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 338
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v6    # "position":I
    .end local v11    # "titleIndex":I
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_14
    return-void

    .line 493
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v6    # "position":I
    .restart local v11    # "titleIndex":I
    .restart local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 494
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 500
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_15
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_17

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v13, v14, v12}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "DEBUG_RINGTONE"

    .line 503
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CscSettings : "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_16

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 502
    :goto_6
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x3

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 507
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Notification was set : PREF_NOTIFICATION_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 503
    :cond_16
    const-string/jumbo v13, ""

    goto :goto_6

    .line 508
    :cond_17
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_13

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v14, 0x4

    invoke-static {v13, v14, v12}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "DEBUG_RINGTONE"

    .line 511
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CscSettings : "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 510
    :goto_7
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x3

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 516
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Alarmtone was set : PREF_ALARMTONE_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 511
    :cond_18
    const-string/jumbo v13, ""

    goto :goto_7
.end method

.method public updateSilentMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "_dataPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "cscData":Ljava/lang/String;
    const-string/jumbo v2, "CscSettingsLoader"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v2, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    .line 552
    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cscData":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 553
    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 555
    .local v0, "am":Landroid/media/AudioManager;
    const-string/jumbo v2, "melody"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " melody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 546
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 558
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const-string/jumbo v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : mute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 561
    :cond_1
    const-string/jumbo v2, "vib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : vib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 565
    :cond_2
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : vibmelody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 570
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_3
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateVolume(ILjava/lang/String;)V
    .locals 6
    .param p1, "_volumeType"    # I
    .param p2, "_dataPath"    # Ljava/lang/String;

    .prologue
    .line 528
    const/4 v1, 0x0

    .line 530
    .local v1, "cscData":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    .line 532
    const-string/jumbo v3, "CscSettingsLoader"

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v3, p2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cscData":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 535
    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 537
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 538
    .restart local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "CscSettingsLoader"

    const-string/jumbo v4, "updateVolume explain error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 542
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-string/jumbo v3, "CscSettingsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
