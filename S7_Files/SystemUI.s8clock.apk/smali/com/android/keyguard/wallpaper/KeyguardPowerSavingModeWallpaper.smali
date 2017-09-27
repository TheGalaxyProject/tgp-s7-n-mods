.class public Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;
.super Lcom/android/keyguard/wallpaper/SystemUIWallpaper;
.source "KeyguardPowerSavingModeWallpaper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IWallpaperManager;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;->updateWhiteWallpaperInfo()V

    .line 32
    return-void
.end method

.method private updateWhiteWallpaperInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    const-string/jumbo v0, "KeyguardPowerSavingModeWallpaper"

    const-string/jumbo v1, "onDraw!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;->setAlpha(F)V

    .line 61
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;->invalidate()V

    .line 66
    return-void
.end method
