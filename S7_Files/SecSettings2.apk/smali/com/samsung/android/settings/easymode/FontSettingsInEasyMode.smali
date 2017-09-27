.class public Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;
.super Ljava/lang/Object;
.source "FontSettingsInEasyMode.java"


# instance fields
.field private EASY_FONT_INDEX:I

.field private EASY_FONT_SCALE:F

.field private EXTRA_LARGE_FONT_SCALE:F

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mExtraLargeFontIndex:I

.field private mIsFont11Level:Z

.field private objValue:Ljava/lang/Object;

.field private previousIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const v0, 0x3f9ae148    # 1.21f

    iput v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    .line 40
    const v0, 0x3fc28f5c    # 1.52f

    iput v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EXTRA_LARGE_FONT_SCALE:F

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_INDEX:I

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mExtraLargeFontIndex:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->previousIndex:I

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    .line 49
    return-void
.end method


# virtual methods
.method public initFontSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 55
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v1

    float-to-int v0, v1

    .line 56
    .local v0, "fontArraySize":I
    const-string/jumbo v1, "FontSettingsInEasyMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fontArraySize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mIsFont11Level:Z

    .line 59
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "font_size"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->previousIndex:I

    .line 61
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_INDEX:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    .line 62
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EXTRA_LARGE_FONT_SCALE:F

    .line 63
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mExtraLargeFontIndex:I

    .line 64
    iget-boolean v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mIsFont11Level:Z

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mExtraLargeFontIndex:I

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isBigFontSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    .line 70
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EXTRA_LARGE_FONT_SCALE:F

    .line 71
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mExtraLargeFontIndex:I

    .line 54
    :cond_1
    return-void

    .line 57
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readFontSizePreference()V
    .locals 3

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FontSettingsInEasyMode"

    const-string/jumbo v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEasyFont()V
    .locals 7

    .prologue
    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, "previousIndex":I
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v2

    .line 99
    .local v2, "largeFontIndex":I
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "font_size"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "STANDARD_FONT_SIZE"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v4, "large_font"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const-string/jumbo v4, "FontSettingsInEasyMode"

    const-string/jumbo v5, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->readFontSizePreference()V

    .line 89
    return-void

    .line 92
    .end local v2    # "largeFontIndex":I
    .end local v3    # "previousIndex":I
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FontSettingsInEasyMode"

    const-string/jumbo v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFontSizeIfNeeded(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7
    .param p1, "stdTextView"    # Landroid/widget/TextView;
    .param p2, "easyTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v6, 0x1

    .line 76
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "fontIndex":I
    const/4 v3, 0x6

    if-le v0, v3, :cond_0

    .line 79
    const-string/jumbo v3, "FontSettingsInEasyMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set extra lare font, font index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 81
    .local v1, "fontScale":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    .line 82
    .local v2, "fontsize":F
    const-string/jumbo v3, "FontSettingsInEasyMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTextSize/scaledDensity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    mul-float v3, v2, v1

    invoke-virtual {p1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    mul-float v3, v2, v1

    invoke-virtual {p2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    .end local v1    # "fontScale":F
    .end local v2    # "fontsize":F
    :cond_0
    return-void
.end method

.method public setStandardFont()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "STANDARD_FONT_SIZE"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "fontIndex":I
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->objValue:Ljava/lang/Object;

    .line 125
    const-string/jumbo v4, "FontSettingsInEasyMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStandardFont fontIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " objValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->objValue:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "font_size"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 127
    .local v3, "previousIndex":I
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "font_size"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-boolean v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mIsFont11Level:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mExtraLargeFontIndex:I

    if-le v1, v4, :cond_0

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v4, "large_font"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string/jumbo v4, "FontSettingsInEasyMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->readFontSizePreference()V

    .line 115
    return-void

    .line 118
    .end local v1    # "fontIndex":I
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "previousIndex":I
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FontSettingsInEasyMode"

    const-string/jumbo v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fontIndex":I
    .restart local v3    # "previousIndex":I
    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mExtraLargeFontIndex:I

    if-gt v3, v4, :cond_1

    iget v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mExtraLargeFontIndex:I

    if-le v1, v4, :cond_1

    .line 135
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v2    # "i":Landroid/content/Intent;
    const-string/jumbo v4, "large_font"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    const-string/jumbo v4, "FontSettingsInEasyMode"

    const-string/jumbo v5, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v2    # "i":Landroid/content/Intent;
    const-string/jumbo v4, "large_font"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    const-string/jumbo v4, "FontSettingsInEasyMode"

    const-string/jumbo v5, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 6
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 162
    .local v1, "fontScale":F
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 163
    .local v2, "largeFontScale":F
    iget-boolean v3, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 167
    :cond_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 168
    move v1, v2

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    iput v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 171
    const-string/jumbo v3, "FontSettingsInEasyMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeFontSizePreference : fontScale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "fontScale":F
    .end local v2    # "largeFontScale":F
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FontSettingsInEasyMode"

    const-string/jumbo v4, "Unable to save font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
