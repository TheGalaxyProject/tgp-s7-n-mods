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

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;-><init>()V

    return-void
.end method

.method private updateHeader()V
    .locals 5

    .prologue
    .line 62
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    const v4, 0x7f110051

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .local v0, "appIcon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    const v4, 0x7f110091

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "appName":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    const v4, 0x7f11003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "info":Landroid/view/View;
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 71
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v1    # "appName":Landroid/widget/TextView;
    .end local v2    # "info":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0    # "appIcon":Landroid/widget/ImageView;
    .restart local v1    # "appName":Landroid/widget/TextView;
    .restart local v2    # "info":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 75
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const v1, 0x7f030020

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    .line 47
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getPreferencesContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 48
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->updateHeader()V

    .line 51
    :cond_0
    return-object v0
.end method

.method public setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "infoIntent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mLabel:Ljava/lang/CharSequence;

    .line 57
    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->mInfoIntent:Landroid/content/Intent;

    .line 58
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->updateHeader()V

    .line 54
    return-void
.end method
