.class public Lcom/samsung/android/settings/ProgressPreference;
.super Lcom/android/settings/TintablePreference;
.source "ProgressPreference.java"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TintablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const v0, 0x7f040228

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ProgressPreference;->setLayoutResource(I)V

    .line 35
    const v0, 0x7f04031c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ProgressPreference;->setWidgetLayoutResource(I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/TintablePreference;->onBindView(Landroid/view/View;)V

    .line 48
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 49
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget v1, p0, Lcom/samsung/android/settings/ProgressPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 45
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/android/settings/ProgressPreference;->mProgress:I

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/settings/ProgressPreference;->notifyChanged()V

    .line 39
    return-void
.end method
