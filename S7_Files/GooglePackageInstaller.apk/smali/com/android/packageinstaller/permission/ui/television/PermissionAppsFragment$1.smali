.class Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$1;
.super Ljava/lang/Object;
.source "PermissionAppsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 257
    new-instance v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;-><init>()V

    .line 258
    .local v0, "frag":Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 259
    const-string/jumbo v2, "android.intent.extra.PERMISSION_NAME"

    .line 258
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->-wrap0(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    .line 260
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 261
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 262
    const v2, 0x1020002

    .line 261
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 263
    const-string/jumbo v2, "SystemApps"

    .line 261
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 265
    const/4 v1, 0x1

    return v1
.end method
