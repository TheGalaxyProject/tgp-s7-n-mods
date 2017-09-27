.class public Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;
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
    name = "RevertWarning"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V
    .locals 3
    .param p0, "fragment"    # Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    .prologue
    .line 192
    new-instance v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;

    invoke-direct {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;-><init>()V

    .line 193
    .local v0, "warning":Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "RevertWarning"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->-wrap1(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V

    .line 209
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->-wrap0(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V

    .line 215
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$RevertWarning;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    const v2, 0x7f0f0543

    .line 199
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 201
    const v2, 0x7f0f0544

    .line 199
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 202
    const v2, 0x7f0f0042

    .line 199
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 204
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 205
    return-object v0
.end method
