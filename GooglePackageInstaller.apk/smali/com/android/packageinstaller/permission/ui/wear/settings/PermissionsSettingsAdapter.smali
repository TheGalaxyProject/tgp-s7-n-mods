.class public final Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;
.super Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;
.source "PermissionsSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;,
        Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter",
        "<",
        "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03006e

    invoke-direct {p0, p1, v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->mRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/wearable/view/WearableListView$ViewHolder;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->onBindViewHolder(Landroid/support/wearable/view/WearableListView$ViewHolder;I)V

    move-object v1, p1

    check-cast v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;

    invoke-virtual {p0, p2}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->get(I)Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    move-result-object v2

    iget-object v0, v2, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->imageView:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v2, v3}, Landroid/support/wearable/view/CircledImageView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->state:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->state:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d018f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->imageView:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v2, v4}, Landroid/support/wearable/view/CircledImageView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->state:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->state:Landroid/widget/TextView;

    const v3, 0x7f0d01ab

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->state:Landroid/widget/TextView;

    const v3, 0x7f0d01ac

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/wearable/view/WearableListView$ViewHolder;
    .locals 3

    new-instance v0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;

    new-instance v1, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;-><init>(Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
