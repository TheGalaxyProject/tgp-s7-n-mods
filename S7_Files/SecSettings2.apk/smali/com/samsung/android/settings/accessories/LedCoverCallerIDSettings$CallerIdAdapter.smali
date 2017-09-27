.class public Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LedCoverCallerIDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallerIdAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    .line 526
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 527
    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->mContext:Landroid/content/Context;

    .line 525
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 537
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->mContext:Landroid/content/Context;

    .line 538
    const-string/jumbo v3, "layout_inflater"

    .line 537
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 541
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 542
    const v2, 0x7f04015a

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 543
    new-instance v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;-><init>()V

    .line 545
    .local v0, "holder":Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;
    const v2, 0x7f110435

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->icon:Landroid/widget/ImageView;

    .line 546
    const v2, 0x7f110436

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->name:Landroid/widget/TextView;

    .line 547
    const v2, 0x7f11043b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->count:Landroid/widget/TextView;

    .line 548
    const v2, 0x7f11043d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->check:Landroid/widget/CheckBox;

    .line 549
    const v2, 0x7f11043c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->checkArea:Landroid/widget/LinearLayout;

    .line 550
    const v2, 0x7f11043e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->edit:Landroid/widget/ImageView;

    .line 552
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 557
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    :cond_0
    const-string/jumbo v2, "LedCoverCallerIDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CallerIdAdapter getView, position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_1
    return-object p2

    .line 554
    .end local v0    # "holder":Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;

    .restart local v0    # "holder":Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;
    goto :goto_0

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I

    move-result v2

    if-nez v2, :cond_3

    .line 559
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-wrap0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    :goto_2
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->count:Landroid/widget/TextView;

    .line 570
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    const v4, 0x7f0b032e

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 569
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    .line 571
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 569
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get8(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 573
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 574
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-boolean v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 575
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get3(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 576
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->check:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 577
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->checkArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->checkArea:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get5(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 579
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->checkArea:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 580
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->edit:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->edit:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get4(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->edit:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 561
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    if-nez v2, :cond_4

    .line 562
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mArray:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-wrap1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 564
    :cond_4
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 584
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 585
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->checkArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->edit:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->checkArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 589
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->edit:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method
