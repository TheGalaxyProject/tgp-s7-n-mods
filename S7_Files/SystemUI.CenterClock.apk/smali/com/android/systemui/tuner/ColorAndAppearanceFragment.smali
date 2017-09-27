.class public Lcom/android/systemui/tuner/ColorAndAppearanceFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "ColorAndAppearanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/ColorAndAppearanceFragment$1;,
        Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;,
        Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;
    }
.end annotation


# static fields
.field private static final KEY_NIGHT_MODE:Ljava/lang/CharSequence;


# instance fields
.field private mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

.field private final mResetColorMatrix:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->onApply()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->onRevert()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->startRevertTimer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "night_mode"

    sput-object v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->KEY_NIGHT_MODE:Ljava/lang/CharSequence;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$1;-><init>(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mResetColorMatrix:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method private onApply()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x133

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_color_matrix"

    .line 89
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->setCustomValues(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mResetColorMatrix:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method private onRevert()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mResetColorMatrix:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mResetColorMatrix:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    return-void
.end method

.method private startRevertTimer()V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mResetColorMatrix:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NightModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    .line 46
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 53
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->addPreferencesFromResource(I)V

    .line 52
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 76
    instance-of v0, p1, Lcom/android/systemui/tuner/CalibratePreference;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->show(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V

    .line 75
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x132

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x132

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0536

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 63
    sget-object v1, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->KEY_NIGHT_MODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 64
    .local v0, "nightMode":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const v1, 0x7f0f0539

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 57
    return-void

    .line 65
    :cond_0
    const v1, 0x7f0f053a

    goto :goto_0
.end method
