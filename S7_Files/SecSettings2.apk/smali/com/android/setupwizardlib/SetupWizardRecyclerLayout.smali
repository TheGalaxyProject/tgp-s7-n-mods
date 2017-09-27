.class public Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
.super Lcom/android/setupwizardlib/SetupWizardLayout;
.source "SetupWizardRecyclerLayout.java"


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

.field private mDividerInset:I

.field private mHeader:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    .line 81
    sget-object v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout:[I

    .line 80
    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_android_entries:I

    .line 82
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 84
    .local v3, "xml":I
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v4, p1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 86
    .local v2, "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    new-instance v4, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-direct {v4, v2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    iput-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 87
    iget-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 88
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_suwHasStableIds:I

    .line 87
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 89
    iget-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 92
    .end local v2    # "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    :cond_0
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_suwDividerInset:I

    .line 91
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 93
    .local v1, "dividerInset":I
    if-nez v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 95
    sget v5, Lcom/android/setupwizardlib/R$dimen;->suw_items_icon_divider_inset:I

    .line 94
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setDividerInset(I)V

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method

.method private updateDivider()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 195
    const/4 v6, 0x1

    .line 196
    .local v6, "shouldUpdate":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->isLayoutDirectionResolved()Z

    move-result v6

    .line 199
    .end local v6    # "shouldUpdate":Z
    :cond_0
    if-eqz v6, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 204
    iget v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerInset:I

    move v3, v2

    move v4, v2

    move-object v5, p0

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected findManagedViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 159
    return-object v0

    .line 162
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 138
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v0, v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    check-cast v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/DividerItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 136
    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_recycler_template:I

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 103
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/SetupWizardLayout;->onLayout(ZIIII)V

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->updateDivider()V

    .line 102
    :cond_0
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 132
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 116
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 114
    return-void
.end method

.method public setDividerInset(I)V
    .locals 0
    .param p1, "inset"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerInset:I

    .line 187
    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->updateDivider()V

    .line 185
    return-void
.end method
