.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconMessageOffset:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    sget-object v1, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    .line 72
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    .line 78
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    .line 79
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    .line 80
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007f

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007e

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a06b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconMessageOffset:I

    .line 69
    return-void
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTextAppearance()V
    .locals 5

    .prologue
    .line 253
    const v1, 0x7f0d009d

    .line 254
    .local v1, "messageColorResId":I
    iget-boolean v3, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v3, :cond_0

    const v2, 0x7f0d00a0

    .line 256
    .local v2, "timestampColorResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d009d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 258
    .local v0, "messageColor":I
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 250
    return-void

    .line 255
    .end local v0    # "messageColor":I
    .end local v2    # "timestampColorResId":I
    :cond_0
    const v2, 0x7f0d009f

    .restart local v2    # "timestampColorResId":I
    goto :goto_0
.end method

.method private updateTextScale(IF)V
    .locals 3
    .param p1, "font_size"    # I
    .param p2, "font_scale"    # F

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 280
    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, p2

    .line 279
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 278
    return-void
.end method

.method private updateViewAppearance()V
    .locals 20

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 194
    .local v11, "res":Landroid/content/res/Resources;
    const v17, 0x7f0a015d

    .line 193
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 196
    .local v4, "arrowWidth":I
    const v17, 0x7f0a015f

    .line 195
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 198
    .local v8, "messageTextLeftRightPadding":I
    const v17, 0x7f0a0160

    .line 197
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    .line 200
    .local v16, "textTopPadding":I
    const v17, 0x7f0a0161

    .line 199
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 204
    .local v13, "textBottomPadding":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 205
    add-int v14, v8, v4

    .line 206
    .local v14, "textLeftPadding":I
    move v15, v8

    .line 213
    .local v15, "textRightPadding":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const v7, 0x800013

    .line 216
    .local v7, "gravity":I
    :goto_1
    const v17, 0x7f0a015e

    .line 215
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 218
    .local v9, "messageTopPadding":I
    const v17, 0x7f0a0162

    .line 217
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 221
    .local v10, "metadataTopPadding":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const v5, 0x7f020354

    .line 225
    .local v5, "bubbleDrawableResId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 227
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 230
    .local v12, "textBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    .line 235
    add-int v18, v16, v10

    .line 234
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1, v14, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 244
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/android/settings/display/ConversationMessageView;->setPadding(IIII)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->updateTextAppearance()V

    .line 190
    return-void

    .line 208
    .end local v5    # "bubbleDrawableResId":I
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "gravity":I
    .end local v9    # "messageTopPadding":I
    .end local v10    # "metadataTopPadding":I
    .end local v12    # "textBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "textLeftPadding":I
    .end local v15    # "textRightPadding":I
    :cond_0
    move v14, v8

    .line 209
    .restart local v14    # "textLeftPadding":I
    add-int v15, v8, v4

    .restart local v15    # "textRightPadding":I
    goto :goto_0

    .line 214
    :cond_1
    const v7, 0x800015

    .restart local v7    # "gravity":I
    goto :goto_1

    .line 222
    .restart local v9    # "messageTopPadding":I
    .restart local v10    # "metadataTopPadding":I
    :cond_2
    const v5, 0x7f020355

    .restart local v5    # "bubbleDrawableResId":I
    goto :goto_2

    .line 238
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v12    # "textBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    .line 239
    add-int v18, v16, v10

    .line 238
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1, v15, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3
.end method

.method private updateViewContent()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, "iconBase":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    .end local v0    # "iconBase":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f1101e5

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 93
    const v0, 0x7f1101e6

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    .line 94
    const v0, 0x7f1101e7

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1101e8

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 97
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewContent()V

    .line 91
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 137
    .local v8, "isRtl":Z
    iget-object v9, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    .line 138
    .local v7, "iconWidth":I
    iget-object v9, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 139
    .local v4, "iconHeight":I
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v6

    .line 140
    .local v6, "iconTop":I
    sub-int v9, p4, p2

    sub-int/2addr v9, v7

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int v3, v9, v10

    .line 141
    .local v3, "contentWidth":I
    iget-object v9, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 142
    .local v0, "contentHeight":I
    iget v9, p0, Lcom/android/settings/display/ConversationMessageView;->mIconMessageOffset:I

    add-int v2, v6, v9

    .line 147
    .local v2, "contentTop":I
    iget-boolean v9, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v9, :cond_1

    .line 148
    if-eqz v8, :cond_0

    .line 149
    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v7

    .line 150
    .local v5, "iconLeft":I
    sub-int v1, v5, v3

    .line 165
    .local v1, "contentLeft":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int v10, v5, v7

    add-int v11, v6, v4

    invoke-virtual {v9, v5, v6, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 167
    iget-object v9, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int v10, v1, v3

    .line 168
    add-int v11, v2, v0

    .line 167
    invoke-virtual {v9, v1, v2, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 134
    return-void

    .line 152
    .end local v1    # "contentLeft":I
    .end local v5    # "iconLeft":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v5

    .line 153
    .restart local v5    # "iconLeft":I
    add-int v1, v5, v7

    .restart local v1    # "contentLeft":I
    goto :goto_0

    .line 156
    .end local v1    # "contentLeft":I
    .end local v5    # "iconLeft":I
    :cond_1
    if-eqz v8, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v5

    .line 158
    .restart local v5    # "iconLeft":I
    add-int v1, v5, v7

    .restart local v1    # "contentLeft":I
    goto :goto_0

    .line 160
    .end local v1    # "contentLeft":I
    .end local v5    # "iconLeft":I
    :cond_2
    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v7

    .line 161
    .restart local v5    # "iconLeft":I
    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v1, v9, v3

    .restart local v1    # "contentLeft":I
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewAppearance()V

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 106
    .local v1, "horizontalSpace":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 107
    .local v6, "unspecifiedMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 109
    .local v2, "iconMeasureSpec":I
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 111
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 112
    const/high16 v8, 0x40000000    # 2.0f

    .line 110
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 113
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a015d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 121
    .local v0, "arrowWidth":I
    int-to-double v8, v1

    const-wide v10, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 123
    .local v4, "maxLeftoverSpace":I
    const/high16 v7, -0x80000000

    .line 122
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 125
    .local v5, "messageContentWidthMeasureSpec":I
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 127
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 128
    iget-object v8, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 129
    .local v3, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/settings/display/ConversationMessageView;->mIconMessageOffset:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v1, v7}, Lcom/android/settings/display/ConversationMessageView;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method public setTextScale(IF)V
    .locals 0
    .param p1, "font_size"    # I
    .param p2, "font_scale"    # F

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/ConversationMessageView;->updateTextScale(IF)V

    .line 274
    return-void
.end method
