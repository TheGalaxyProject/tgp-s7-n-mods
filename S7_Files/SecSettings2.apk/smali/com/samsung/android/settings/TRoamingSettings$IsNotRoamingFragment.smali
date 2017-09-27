.class public Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNotRoamingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/samsung/android/settings/TRoamingSettings;

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 609
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;-><init>()V

    .line 610
    .local v0, "dialog":Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "DialogIsNotRoaming"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 606
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 616
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->-get2()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0e9b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 619
    const v1, 0x7f0b0af2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 621
    new-instance v1, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;)V

    const v2, 0x7f0b153f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
