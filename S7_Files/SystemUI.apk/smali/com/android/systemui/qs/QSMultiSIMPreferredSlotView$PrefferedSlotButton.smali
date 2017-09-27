.class Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
.super Ljava/lang/Object;
.source "QSMultiSIMPreferredSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefferedSlotButton"
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I


# instance fields
.field private mButtonGroup:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mSlotButtonImage:Landroid/widget/ImageView;

.field private mSlotButtonLine2OnlyText:Landroid/widget/TextView;

.field private mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

.field private mSlotButtonTextLine1:Landroid/widget/TextView;

.field private mSlotButtonTextLine2:Landroid/widget/TextView;

.field private mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

.field final synthetic this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->values()[Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->DATA:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->SMS:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->VOICE:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;
    .param p2, "type"    # Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 399
    const v2, 0x7f040103

    const/4 v3, 0x1

    .line 398
    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 400
    .local v0, "root":Landroid/view/ViewGroup;
    iput-object p2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    .line 401
    iput-object p3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->setViews(Landroid/view/ViewGroup;)V

    .line 397
    return-void
.end method

.method private getDefaultSlotId(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)I
    .locals 2
    .param p1, "type"    # Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    .prologue
    .line 441
    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-getcom-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    const/4 v0, 0x0

    return v0

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get6(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v0

    return v0

    .line 445
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get5(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v0

    return v0

    .line 447
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get4(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v0

    return v0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTitleString(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    .prologue
    .line 469
    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-getcom-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 477
    const-string/jumbo v0, ""

    return-object v0

    .line 471
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0684

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 473
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0685

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 475
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0686

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshSlotInfo()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 420
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->getDefaultSlotId(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)I

    move-result v0

    .line 421
    .local v0, "slotId":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x0

    .line 424
    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHN_SIM_CARD_MANAGER:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v2, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->VOICE:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get8(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v1

    if-nez v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0687

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    :goto_0
    return-void

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v2, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->DATA:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get7(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get0()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[I

    move-result-object v3

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 429
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0688

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public refreshLocale()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->VOICE:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->DATA:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-ne v0, v1, :cond_1

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    .line 461
    :cond_1
    return-void
.end method

.method protected setViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    .line 407
    const v0, 0x7f1302ef

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    .line 408
    const v0, 0x7f1302ee

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    .line 409
    const v0, 0x7f1302f1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    .line 410
    const v0, 0x7f1302f0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    .line 411
    const v0, 0x7f1302f2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    .line 405
    return-void
.end method

.method public updateTextColor()V
    .locals 4

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->setEnabled(Z)V

    .line 455
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0163

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 456
    .local v0, "selectedcolor":I
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    return-void
.end method
