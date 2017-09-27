.class Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;
.super Ljava/lang/Object;
.source "AllAppPermissionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getImmutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;

.field final synthetic val$perm:Landroid/content/pm/PermissionInfo;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;
    .param p2, "val$perm"    # Landroid/content/pm/PermissionInfo;
    .param p3, "val$pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;->this$0:Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;->val$perm:Landroid/content/pm/PermissionInfo;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;->this$0:Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;->val$perm:Landroid/content/pm/PermissionInfo;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    const v1, 0x104000a

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 271
    const/4 v0, 0x1

    return v0
.end method
