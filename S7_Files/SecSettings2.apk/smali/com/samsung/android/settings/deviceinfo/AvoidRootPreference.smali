.class public Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;
.super Landroid/preference/Preference;
.source "AvoidRootPreference.java"


# instance fields
.field private badge:Landroid/widget/TextView;

.field private showRedIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->showRedIcon:Z

    .line 38
    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    const-string/jumbo v0, "AvoidRootPreference"

    const-string/jumbo v1, "onBindView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const v0, 0x7f11016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->badge:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->badge:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->showRedIcon:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    return-void

    .line 47
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setAvoidRootVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->showRedIcon:Z

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->notifyChanged()V

    .line 50
    return-void
.end method
