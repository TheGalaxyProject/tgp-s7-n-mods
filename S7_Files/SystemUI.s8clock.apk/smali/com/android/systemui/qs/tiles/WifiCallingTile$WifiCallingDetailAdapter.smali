.class final Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;
.super Ljava/lang/Object;
.source "WifiCallingTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiCallingDetailAdapter"
.end annotation


# instance fields
.field private mPrefInx:I

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    return p1
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    return-void
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 679
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 680
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 683
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isVisiblePrefMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "configShowPref":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SHOWPREFMODEMENUNOSIMCHECK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    const/4 v2, 0x1

    return v2

    .line 670
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SHOWPREFMODEMENUSIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "numeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVisiblePrefMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :cond_1
    return v2

    .line 675
    .end local v1    # "numeric":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private updateWifiCallingDetail(Landroid/view/View;)V
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 631
    const v3, 0x7f1302db

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 632
    const v3, 0x7f130296

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 633
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->isVisiblePrefMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 634
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->isVisiblePrefMode()Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v3

    .line 637
    const-string/jumbo v4, "wifi_call_preferred"

    .line 636
    invoke-static {v3, v4, v7}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    .line 639
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 640
    new-instance v2, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)V

    .line 649
    .local v2, "listner":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_5

    .line 650
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 651
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 652
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 654
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 655
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_2

    const v4, 0x7f1001f8

    .line 654
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTextAppearance(I)V

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "listner":Landroid/view/View$OnClickListener;
    :cond_1
    move v3, v4

    .line 633
    goto :goto_0

    .line 656
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "listner":Landroid/view/View$OnClickListener;
    :cond_2
    const v4, 0x7f1001f9

    goto :goto_2

    .line 658
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WFC_PREF_ADD_WIFI_ONLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 659
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 661
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    iget v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    const v5, 0x1020019

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 630
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "listner":Landroid/view/View$OnClickListener;
    :cond_5
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 626
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->updateWifiCallingDetail(Landroid/view/View;)V

    .line 627
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 715
    const/16 v0, 0x1f4

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 694
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiCallingTileBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 697
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v2, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-wrap0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 700
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v2, :cond_3

    .line 701
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 702
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 703
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 704
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 705
    if-eqz p1, :cond_2

    const v3, 0x7f1001f8

    .line 704
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextAppearance(I)V

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    :cond_2
    const v3, 0x7f1001f9

    goto :goto_1

    .line 710
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    return p1
.end method
