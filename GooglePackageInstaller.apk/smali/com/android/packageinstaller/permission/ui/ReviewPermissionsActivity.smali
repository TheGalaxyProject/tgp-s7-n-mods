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

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getTargetPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    return-object v4
.end method


# virtual methods
.method public onActionConfirmed(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f110139

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;

    invoke-interface {v0, p1}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;->onActionConfirmed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f110139

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getTargetPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->finish()V

    return-void

    :cond_0
    const v1, 0x7f030082

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->newInstance(Landroid/content/pm/PackageInfo;)Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method
