.class public abstract Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;
.super Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;
.source "SettingsWithHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHeader:Landroid/view/View;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mInfoIntent:Landroid/content/Intent;

.field protected mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;-><init>()V

    return-void
.end method

.method private updateHeader()V
    .locals 5

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    const v4, 0x7f110051

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    const v4, 0x7f110091

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    const v4, 0x7f11003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f030020

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getPreferencesContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->updateHeader()V

    :cond_0
    return-object v0
.end method

.method public setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->updateHeader()V

    return-void
.end method
