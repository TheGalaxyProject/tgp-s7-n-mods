.class Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$3;
.super Landroid/support/v7/preference/Preference;
.source "AppPermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->createHeaderLineTwoPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
