.class public Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;
.super Landroid/app/DialogFragment;
.source "ColorAndAppearanceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/ColorAndAppearanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibrateDialog"
.end annotation


# instance fields
.field private mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

.field private mValues:[F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mValues:[F

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 154
    const v1, 0x1020456

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 155
    .local v0, "seekBar":Landroid/widget/SeekBar;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mValues:[F

    aget v1, v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 157
    new-instance v1, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog$1;-><init>(Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 153
    return-void
.end method

.method public static show(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V
    .locals 3
    .param p0, "fragment"    # Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    .prologue
    .line 114
    new-instance v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;

    invoke-direct {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;-><init>()V

    .line 115
    .local v0, "dialog":Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "Calibrate"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 175
    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mValues:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mValues:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->setCustomValues(Ljava/lang/String;)V

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->-wrap2(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "accessibility_display_color_matrix"

    .line 183
    iget-object v2, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mValues:[F

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NightModeController;->toString([F)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;->show(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V

    .line 174
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance v1, Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/NightModeController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    .line 123
    iget-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->getCustomValues()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "customValues":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    sget-object v1, Lcom/android/systemui/statusbar/policy/NightModeController;->IDENTITY_MATRIX:[F

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->toString([F)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NightModeController;->toValues(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->mValues:[F

    .line 120
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040024

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1300d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->bindView(Landroid/view/View;I)V

    .line 136
    const v1, 0x7f1300d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->bindView(Landroid/view/View;I)V

    .line 137
    const v1, 0x7f1300d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->bindView(Landroid/view/View;I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x131

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 139
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    const v2, 0x7f0f0538

    .line 139
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 142
    const v2, 0x7f0f0542

    .line 139
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 143
    const/high16 v2, 0x1040000

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x131

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 148
    return-void
.end method
