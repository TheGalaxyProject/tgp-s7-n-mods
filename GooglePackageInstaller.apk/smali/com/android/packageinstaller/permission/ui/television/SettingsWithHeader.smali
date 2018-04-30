.class public abstract Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.super Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;
.source "SettingsWithHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mDecorTitle:Ljava/lang/CharSequence;

.field private mHeader:Landroid/view/View;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mInfoIntent:Landroid/content/Intent;

.field protected mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f030020

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getPreferencesContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->updateHeader()V

    return-object v0
.end method

.method public setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mDecorTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->updateHeader()V

    return-void
.end method

.method protected updateHeader()V
    .locals 3

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mHeader:Landroid/view/View;

    const v2, 0x7f110093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->mDecorTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
