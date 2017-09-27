.class public Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;
.super Ljava/lang/Object;
.source "AutoResizeSingleLineTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mMaxTextSize:I

.field private mTargetView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "maxTextSize"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    .line 21
    iput-object p1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    .line 22
    iput p2, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    .line 20
    return-void
.end method

.method private resize(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "targetText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 41
    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    if-nez v1, :cond_1

    .line 42
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v2, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 45
    .local v2, "paint":Landroid/text/TextPaint;
    iget v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46
    move-object v11, p1

    .line 47
    .local v11, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    sub-int v3, v1, v4

    .line 48
    .local v3, "width":I
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 49
    .local v0, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ne v1, v12, :cond_2

    .line 50
    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    return-void

    .line 53
    :cond_2
    const/4 v10, 0x1

    .local v10, "size_s":I
    iget v9, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    .line 54
    .local v9, "size_l":I
    :goto_0
    add-int/lit8 v1, v9, -0x1

    if-ge v10, v1, :cond_4

    .line 55
    add-int v1, v10, v9

    div-int/lit8 v8, v1, 0x2

    .line 56
    .local v8, "check":I
    int-to-float v1, v8

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 57
    new-instance v0, Landroid/text/StaticLayout;

    .end local v0    # "layout":Landroid/text/StaticLayout;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 58
    .restart local v0    # "layout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ne v1, v12, :cond_3

    .line 59
    move v10, v8

    goto :goto_0

    .line 61
    :cond_3
    move v9, v8

    goto :goto_0

    .line 64
    .end local v8    # "check":I
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    int-to-float v4, v10

    invoke-virtual {v1, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->resize(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 26
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 31
    return-void
.end method

.method public setMaxTextSize(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "testString"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->resize(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
