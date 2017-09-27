.class public final Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;
.super Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;
.source "ManagePermissionsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    invoke-static {}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->newInstance()Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;

    move-result-object v1

    .line 93
    .local v1, "fragment":Landroid/app/Fragment;
    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 31
    return-void

    .line 41
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_1
    const-string/jumbo v4, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 55
    const-string/jumbo v4, "ManagePermissionsActivity"

    const-string/jumbo v5, "Missing mandatory argument EXTRA_PACKAGE_NAME"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;->finish()V

    .line 57
    return-void

    .line 41
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "android.intent.action.MANAGE_PERMISSION_APPS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 71
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "permissionName":Ljava/lang/String;
    if-nez v3, :cond_7

    .line 73
    const-string/jumbo v4, "ManagePermissionsActivity"

    const-string/jumbo v5, "Missing mandatory argument EXTRA_PERMISSION_NAME"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;->finish()V

    .line 75
    return-void

    .line 47
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->newInstance()Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .line 59
    .end local v1    # "fragment":Landroid/app/Fragment;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 60
    invoke-static {v2}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .line 61
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_5
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 62
    invoke-static {v2}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .line 65
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_6
    invoke-static {v2}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .line 77
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "permissionName":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 78
    invoke-static {v3}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto/16 :goto_0

    .line 81
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_8
    invoke-static {v3}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto/16 :goto_0

    .line 87
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "ManagePermissionsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManagePermissionsActivity;->finish()V

    .line 89
    return-void
.end method
