.class public Lcom/samsung/android/settings/SecRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SecRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    .line 24
    const v0, 0x7f0401f2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setLayoutResource(I)V

    .line 25
    const v0, 0x7f040213

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 51
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    .line 41
    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    .line 36
    return-void
.end method
