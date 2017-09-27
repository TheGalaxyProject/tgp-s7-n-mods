.class public Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkNotAvailableFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$1;
    }
.end annotation


# instance fields
.field private mCustomerCenterCall:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 775
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 805
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->mCustomerCenterCall:Landroid/view/View$OnClickListener;

    .line 775
    return-void
.end method

.method public static show(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/samsung/android/settings/TRoamingSettings;

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 779
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;-><init>()V

    .line 780
    .local v0, "dialog":Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 781
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "NetworkNotAvaiable"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 776
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 786
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->-get2()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 787
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->-get2()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 788
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04029a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 791
    .local v3, "layout":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 793
    const v4, 0x7f0b0e98

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 794
    const v4, 0x7f11064f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 795
    .local v1, "customerCenter":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->mCustomerCenterCall:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    new-instance v4, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;-><init>(Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V

    const v5, 0x7f0b153f

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 802
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
