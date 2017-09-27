.class public Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;
.super Landroid/widget/LinearLayout;
.source "ClearCoverNotificationView.java"


# instance fields
.field iconView:Landroid/widget/ImageView;

.field mIcon:Landroid/graphics/drawable/Icon;

.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method private static isEqualIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p0, "a"    # Landroid/graphics/drawable/Icon;
    .param p1, "b"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_0

    .line 88
    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 90
    return v1

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 97
    :pswitch_0
    return v1

    .line 93
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 91
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_notification_icon:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->iconView:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_notification_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->text:Landroid/widget/TextView;

    .line 31
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->iconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->text:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 46
    :cond_0
    return-void

    .line 45
    :cond_1
    if-eqz p1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->isEqualIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->text:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    return-void

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_4

    .line 53
    return-void

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->text:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->mIcon:Landroid/graphics/drawable/Icon;

    .line 73
    return-void
.end method
