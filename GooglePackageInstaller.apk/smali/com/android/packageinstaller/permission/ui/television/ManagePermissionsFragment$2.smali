.class Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$2;
.super Ljava/lang/Object;
.source "ManagePermissionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->updatePermissionsUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    new-instance v0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;-><init>()V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;

    invoke-virtual {v2}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    const/4 v2, 0x1

    return v2
.end method
