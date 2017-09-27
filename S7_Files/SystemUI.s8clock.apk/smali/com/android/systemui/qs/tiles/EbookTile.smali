.class public Lcom/android/systemui/qs/tiles/EbookTile;
.super Lcom/android/systemui/qs/QSTile;
.source "EbookTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final READING_MODE_SUPPORT_HW:I = 0x0

.field private static final READING_MODE_SUPPORT_NONE:I = 0x2

.field private static final READING_MODE_SUPPORT_SW:I = 0x1

.field private static final SCREEN_MODE_ADAPTIVE_DISPLAY:I = 0x3

.field private static final SCREEN_MODE_PREMIUM_ADAPTIVE_DISPLAY:I = 0x4

.field private static final SCREEN_MODE_READING_MODE:I = 0x4

.field private static final SCREEN_MODE_READING_MODE_FOR_AMOLED:I = 0x5

.field private static final SCREEN_MODE_READING_MODE_SW:I = 0x1

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final SCREEN_MODE_SETTING_ADAPTIVE_DISPLAY:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING_SW:Ljava/lang/String; = "sw_screen_mode_setting"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

.field private mListening:Z

.field private final mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/EbookTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/EbookTile;I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookModeEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/EbookTile;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->setMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 73
    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

    .line 74
    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "screen_mode_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$1;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 82
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "sw_screen_mode_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$2;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    .line 93
    :goto_0
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "screen_mode_automatic_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$3;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    .line 70
    :goto_1
    return-void

    .line 91
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    goto :goto_0

    .line 101
    :cond_1
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    goto :goto_1
.end method

.method private isEbookModeEnabled(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "ret":Z
    sget v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-nez v1, :cond_1

    .line 138
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 146
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEbookMode ?  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0

    .line 142
    :cond_1
    sget v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-ne v1, v2, :cond_0

    .line 143
    if-ne p1, v2, :cond_0

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setMode(Z)V
    .locals 7
    .param p1, "mode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    sget-object v4, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-nez v4, :cond_3

    .line 244
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "mDNIe"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 245
    .local v0, "mdnie":Lcom/samsung/android/hardware/display/SemMdnieManager;
    if-eqz v0, :cond_0

    .line 246
    if-eqz p1, :cond_1

    .line 247
    const/4 v1, 0x5

    .line 251
    .local v1, "newMode":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 253
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 254
    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mdnie.setScreenMode() value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 240
    .end local v0    # "mdnie":Lcom/samsung/android/hardware/display/SemMdnieManager;
    .end local v1    # "newMode":I
    :cond_0
    :goto_2
    return-void

    .line 249
    .restart local v0    # "mdnie":Lcom/samsung/android/hardware/display/SemMdnieManager;
    :cond_1
    const/4 v1, 0x4

    .restart local v1    # "newMode":I
    goto :goto_0

    :cond_2
    move v2, v3

    .line 253
    goto :goto_1

    .line 257
    .end local v0    # "mdnie":Lcom/samsung/android/hardware/display/SemMdnieManager;
    .end local v1    # "newMode":I
    :cond_3
    sget v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-ne v4, v3, :cond_5

    .line 258
    if-eqz p1, :cond_4

    .line 259
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_2

    .line 261
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_2

    .line 264
    :cond_5
    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "NO"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 237
    const/16 v0, 0x226

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 200
    sget-object v3, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " SupportPremiumAMOLED ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 203
    :cond_0
    sget v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 206
    .local v0, "state":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->getMetricsCategory()I

    move-result v4

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 207
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->setMode(Z)V

    .line 199
    return-void

    .line 205
    .end local v0    # "state":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "state":Z
    goto :goto_0

    :cond_3
    move v1, v2

    .line 206
    goto :goto_1
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 223
    sget v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-nez v1, :cond_1

    .line 224
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 229
    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 230
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 231
    const v1, 0x7f02037f

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 221
    return-void

    .line 224
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookModeEnabled(I)Z

    move-result v0

    .local v0, "value":Z
    goto :goto_0

    .line 225
    .end local v0    # "value":Z
    :cond_1
    sget v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 226
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .restart local v0    # "value":Z
    goto :goto_0

    .end local v0    # "value":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookModeEnabled(I)Z

    move-result v0

    .restart local v0    # "value":Z
    goto :goto_0

    .line 228
    .end local v0    # "value":Z
    :cond_3
    const/4 v0, 0x0

    .local v0, "value":Z
    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/EbookTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 130
    :cond_0
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    .line 131
    .local v0, "feature":I
    if-eqz v0, :cond_1

    .line 132
    if-ne v0, v1, :cond_2

    .line 131
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 132
    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mListening:Z

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 110
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 112
    :cond_1
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 105
    :cond_2
    return-void
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 271
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 274
    :cond_0
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 269
    :cond_1
    return-void
.end method
