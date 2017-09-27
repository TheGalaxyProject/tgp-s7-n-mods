.class public Lcom/samsung/android/settings/SecGearPreference;
.super Landroid/preference/Preference;
.source "SecGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

.field private misVisible:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/SecGearPreference;->misVisible:I

    .line 44
    const v0, 0x7f040214

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecGearPreference;->setWidgetLayoutResource(I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 59
    const v1, 0x7f110583

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "gear":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    iget v1, p0, Lcom/samsung/android/settings/SecGearPreference;->misVisible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110583

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;->onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setVisibleWigetLayout(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/samsung/android/settings/SecGearPreference;->misVisible:I

    .line 81
    return-void
.end method
