.class Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;
.super Ljava/lang/Object;
.source "AllAppPermissionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getMutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;

.field final synthetic val$filterPermissions:[Ljava/lang/String;

.field final synthetic val$permGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;
    .param p2, "val$permGroup"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .param p3, "val$filterPermissions"    # [Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;->val$permGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;->val$filterPermissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 241
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;->val$permGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;->val$filterPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z[Ljava/lang/String;)Z

    .line 246
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;->val$permGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;->val$filterPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z[Ljava/lang/String;)Z

    goto :goto_0
.end method
