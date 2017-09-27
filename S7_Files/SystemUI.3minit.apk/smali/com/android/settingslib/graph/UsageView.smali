.class public Lcom/android/settingslib/graph/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private mBatteryLevel:I

.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/android/settingslib/R$layout;->usage_view:I

    invoke-virtual {v8, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    sget v8, Lcom/android/settingslib/R$id;->usage_graph:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/graph/UsageGraph;

    iput-object v8, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    .line 56
    const/4 v8, 0x3

    new-array v9, v8, [Landroid/widget/TextView;

    .line 57
    sget v8, Lcom/android/settingslib/R$id;->label_bottom:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 58
    sget v8, Lcom/android/settingslib/R$id;->label_middle:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 59
    sget v8, Lcom/android/settingslib/R$id;->label_top:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x2

    aput-object v8, v9, v10

    .line 56
    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    .line 61
    const/4 v8, 0x2

    new-array v9, v8, [Landroid/widget/TextView;

    .line 62
    sget v8, Lcom/android/settingslib/R$id;->label_start:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 63
    sget v8, Lcom/android/settingslib/R$id;->label_end:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 61
    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    .line 65
    sget-object v8, Lcom/android/settingslib/R$styleable;->UsageView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 70
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 74
    .local v3, "color":I
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v7, v9, v8

    .line 75
    .local v7, "v":Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 77
    .end local v7    # "v":Landroid/widget/TextView;
    :cond_2
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v7, v9, v8

    .line 78
    .restart local v7    # "v":Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 81
    .end local v3    # "color":I
    .end local v7    # "v":Landroid/widget/TextView;
    :cond_3
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 82
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 83
    .local v4, "gravity":I
    const v8, 0x800005

    if-ne v4, v8, :cond_5

    .line 84
    sget v8, Lcom/android/settingslib/R$id;->graph_label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 85
    .local v6, "layout":Landroid/widget/LinearLayout;
    sget v8, Lcom/android/settingslib/R$id;->label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 87
    .local v5, "labels":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    const v8, 0x800005

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 92
    sget v8, Lcom/android/settingslib/R$id;->bottom_label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 93
    .local v2, "bottomLabels":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    .line 94
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    .line 93
    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 100
    .end local v2    # "bottomLabels":Landroid/widget/LinearLayout;
    .end local v4    # "gravity":I
    .end local v5    # "labels":Landroid/widget/LinearLayout;
    .end local v6    # "layout":Landroid/widget/LinearLayout;
    :cond_4
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, "batteryBroadcast":Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v8

    iput v8, p0, Lcom/android/settingslib/graph/UsageView;->mBatteryLevel:I

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageView;->setBatteryGraphColor()V

    .line 52
    return-void

    .line 95
    .end local v1    # "batteryBroadcast":Landroid/content/Intent;
    .restart local v4    # "gravity":I
    :cond_5
    const v8, 0x800003

    if-eq v4, v8, :cond_4

    .line 96
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported gravity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private setBatteryGraphColor()V
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/settingslib/graph/UsageView;->mBatteryLevel:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v1, -0x11aafd

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    .line 106
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/android/settingslib/graph/UsageView;->mBatteryLevel:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v1, -0x282829

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v1, -0xa143c3

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 1
    .param p1, "points"    # Landroid/util/SparseIntArray;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    .line 121
    return-void
.end method

.method public clearPaths()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/UsageGraph;->clearPaths()V

    .line 117
    return-void
.end method

.method public configureGraph(IIZZ)V
    .locals 1
    .param p1, "maxX"    # I
    .param p2, "maxY"    # I
    .param p3, "showProjection"    # Z
    .param p4, "projectUp"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/graph/UsageGraph;->setMax(II)V

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p3, p4}, Lcom/android/settingslib/graph/UsageGraph;->setShowProjection(ZZ)V

    .line 125
    return-void
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 164
    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 155
    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method
