.class public Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "NfcRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    .line 46
    const v0, 0x7f040199

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setLayoutResource(I)V

    .line 47
    const v0, 0x7f040213

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 73
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V

    .line 63
    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    .line 58
    return-void
.end method
