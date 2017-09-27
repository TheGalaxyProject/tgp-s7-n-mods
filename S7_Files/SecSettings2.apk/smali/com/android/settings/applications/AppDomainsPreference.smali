.class public Lcom/android/settings/applications/AppDomainsPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "AppDomainsPreference.java"


# instance fields
.field private mNumEntries:I


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/applications/AppDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    iget v3, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    if-nez v3, :cond_0

    .line 47
    const v3, 0x7f0b1a2c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    .local v1, "summary":Ljava/lang/CharSequence;
    iget v3, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    if-ne v3, v5, :cond_1

    .line 53
    const v2, 0x7f0b1a2d

    .line 55
    .local v2, "whichVersion":I
    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 54
    .end local v2    # "whichVersion":I
    :cond_1
    const v2, 0x7f0b1a2e

    .restart local v2    # "whichVersion":I
    goto :goto_0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppDomainsPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    .local v1, "title":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 62
    const v2, 0x7f110145

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "domainName":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .end local v0    # "domainName":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "titles"    # [Ljava/lang/CharSequence;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
