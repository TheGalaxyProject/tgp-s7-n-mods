.class public Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninstallAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private isSingleUser(Landroid/os/UserManager;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/android/packageinstaller/UninstallerActivity;->startUninstallProgress()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/android/packageinstaller/UninstallerActivity;->dispatchAborted()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/packageinstaller/UninstallerActivity;

    invoke-static {v9}, Lcom/android/packageinstaller/UninstallerActivity;->-get0(Lcom/android/packageinstaller/UninstallerActivity;)Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    move-result-object v3

    iget-object v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_0

    iget-object v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v11

    const v10, 0x7f0d0161

    invoke-virtual {p0, v10, v9}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    if-eqz v4, :cond_3

    invoke-direct {p0, v8}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v9

    if-eqz v9, :cond_2

    const v9, 0x7f0d0165

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v9, 0x1040000

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const v9, 0x7f0d0166

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-boolean v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v9, :cond_4

    invoke-direct {p0, v8}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    iget-object v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    const v10, 0x7f0d0164

    invoke-virtual {p0, v10, v9}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const v9, 0x7f0d0163

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const v9, 0x7f0d0162

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
