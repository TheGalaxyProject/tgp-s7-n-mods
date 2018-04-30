.class Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;
.super Ljava/lang/Object;
.source "AppPermissionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

.field final synthetic val$grantedByDefault:Z

.field final synthetic val$group:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;Landroid/support/v7/preference/Preference;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->val$preference:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->val$group:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iput-boolean p4, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->val$grantedByDefault:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->val$preference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->val$group:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->val$grantedByDefault:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$4;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->-set0(Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;Z)Z

    :cond_0
    return-void
.end method
