.class Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$1;
.super Ljava/lang/Object;
.source "PermissionAppsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$SystemAppsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$SystemAppsFragment;-><init>()V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->-wrap0(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$SystemAppsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "SystemApps"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    const/4 v1, 0x1

    return v1
.end method
