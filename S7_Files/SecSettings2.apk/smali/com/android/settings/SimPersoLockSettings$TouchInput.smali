.class Lcom/android/settings/SimPersoLockSettings$TouchInput;
.super Ljava/lang/Object;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/SimPersoLockSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SimPersoLockSettings;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/SimPersoLockSettings;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const v0, 0x7f1102cb

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    .line 527
    const v0, 0x7f1102c2

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    .line 528
    const v0, 0x7f1102c3

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 529
    const v0, 0x7f1102c4

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    .line 530
    const v0, 0x7f1102c5

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    .line 531
    const v0, 0x7f1102c6

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    .line 532
    const v0, 0x7f1102c7

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    .line 533
    const v0, 0x7f1102c8

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 534
    const v0, 0x7f1102c9

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    .line 535
    const v0, 0x7f1102ca

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    .line 536
    const v0, 0x7f11019b

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 538
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    const-string/jumbo v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SimPersoLockSettings;Lcom/android/settings/SimPersoLockSettings$TouchInput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SimPersoLockSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, "digit":I
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 579
    const/4 v0, 0x0

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 581
    const/4 v0, 0x1

    goto :goto_0

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 583
    const/4 v0, 0x2

    goto :goto_0

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 585
    const/4 v0, 0x3

    goto :goto_0

    .line 586
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 587
    const/4 v0, 0x4

    goto :goto_0

    .line 588
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 589
    const/4 v0, 0x5

    goto :goto_0

    .line 590
    :cond_6
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 591
    const/4 v0, 0x6

    goto :goto_0

    .line 592
    :cond_7
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 593
    const/4 v0, 0x7

    goto :goto_0

    .line 594
    :cond_8
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 595
    const/16 v0, 0x8

    goto :goto_0

    .line 596
    :cond_9
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 597
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 563
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-get0()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 564
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 570
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 571
    .local v0, "digit":I
    if-ltz v0, :cond_2

    .line 572
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-static {v1, v0}, Lcom/android/settings/SimPersoLockSettings;->-wrap0(Lcom/android/settings/SimPersoLockSettings;I)V

    .line 562
    :cond_2
    return-void
.end method
