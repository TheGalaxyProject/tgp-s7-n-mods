.class public Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LTERoamingSetFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/samsung/android/settings/TRoamingSettings;

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 695
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;-><init>()V

    .line 696
    .local v0, "dialog":Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 697
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "DialogLTERoamingSet"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 692
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 718
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->-get2()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 720
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    const v1, 0x7f0b0e9b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 722
    const v1, 0x7f0b0e9f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 728
    :goto_0
    new-instance v1, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 734
    new-instance v1, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment$2;-><init>(Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;)V

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 724
    :cond_0
    const v1, 0x7f0b0ac7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 725
    const v1, 0x7f0b0ac6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 711
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 712
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/TRoamingSettings;

    .line 713
    .local v0, "target":Lcom/samsung/android/settings/TRoamingSettings;
    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lte_roaming_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 710
    return-void

    :cond_0
    move v1, v2

    .line 713
    goto :goto_0
.end method
