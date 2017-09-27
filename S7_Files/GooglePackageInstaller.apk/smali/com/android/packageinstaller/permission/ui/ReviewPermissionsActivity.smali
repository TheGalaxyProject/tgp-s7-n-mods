.class public final Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;
.super Landroid/app/Activity;
.source "ReviewPermissionsActivity.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getTargetPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    return-object v4

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    const/16 v3, 0x1000

    .line 87
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4
.end method


# virtual methods
.method public onActionConfirmed(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f110139

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 76
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0, p1}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;->onActionConfirmed(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f110139

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getTargetPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 61
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->finish()V

    .line 63
    return-void

    .line 66
    :cond_0
    const v1, 0x7f030082

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 69
    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->newInstance(Landroid/content/pm/PackageInfo;)Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    :cond_1
    return-void
.end method
