.class public final Lcom/android/systemui/recents/misc/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


# static fields
.field private static final ICON_POINTER_PS_NUM:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerBitmapYDiff:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "%1$s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "%2$s"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "%3$s"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "%4$s"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "%5$s"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/misc/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v7, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    .line 47
    iput-object p1, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    .line 50
    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d03a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    .line 51
    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v5, p2, v6, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 54
    .local v4, "ta":Landroid/content/res/TypedArray;
    const/16 v5, 0xd

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 55
    .local v2, "iconsArrayId":I
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 57
    .local v1, "iconId":I
    if-lez v2, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 59
    .local v3, "iconsTypedArray":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v3    # "iconsTypedArray":Landroid/content/res/TypedArray;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->applyStringWithIcon()V

    .line 45
    return-void

    .line 67
    :cond_2
    if-lez v1, :cond_1

    .line 68
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    .end local v1    # "iconId":I
    .end local v2    # "iconsArrayId":I
    :catchall_0
    move-exception v5

    .line 71
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    throw v5
.end method

.method private applyStringWithIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 80
    const-string/jumbo v3, "%s"

    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    .local v2, "msg_with_icon":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 83
    return-void

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 85
    const-string/jumbo v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    const-string/jumbo v4, "\ufffc"

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/systemui/recents/misc/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    .line 98
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .end local v2    # "msg_with_icon":Landroid/text/SpannableString;
    :cond_2
    return-void

    .line 87
    .restart local v2    # "msg_with_icon":Landroid/text/SpannableString;
    :cond_3
    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v5

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/systemui/recents/misc/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    goto :goto_0

    .line 91
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 92
    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/systemui/recents/misc/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    .line 91
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .locals 10
    .param p1, "POINTER"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "ss"    # Landroid/text/SpannableString;
    .param p4, "icon_resid"    # I

    .prologue
    .line 106
    iget-object v6, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 107
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 109
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, p4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 112
    .local v5, "value_1dp":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    .line 113
    return-object p3

    .line 115
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "value_1dp":F
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    return-object p3

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "value_1dp":F
    :cond_0
    iget v6, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    new-instance v4, Lcom/android/systemui/recents/misc/HelpHubImageSpan;

    invoke-direct {v4, v0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .local v4, "span":Lcom/android/systemui/recents/misc/HelpHubImageSpan;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    iput v6, v4, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    .line 122
    const v6, 0x7f0d03a3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, v4, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, "iconIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x11

    invoke-virtual {p3, v4, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    return-object p3
.end method


# virtual methods
.method public changeText(I)V
    .locals 0
    .param p1, "res_id"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setText(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->applyStringWithIcon()V

    .line 128
    return-void
.end method
