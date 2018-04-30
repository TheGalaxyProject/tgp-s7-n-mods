.class Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;
.super Ljava/lang/Object;
.source "AllAppPermissionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;Landroid/content/pm/PackageManager;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

.field final synthetic val$desc:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;->val$desc:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;->val$desc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0
.end method
