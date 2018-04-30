.class public abstract Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;
.super Landroid/app/Fragment;
.source "TitledSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/support/wearable/view/WearableListView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$1;
    }
.end annotation


# instance fields
.field private mCharLimitLine:I

.field private mCharLimitShortTitle:I

.field private mChinOffset:I

.field protected mDetails:Landroid/widget/TextView;

.field protected mHeader:Landroid/widget/TextView;

.field private mHeaderTextWatcher:Landroid/text/TextWatcher;

.field private mInitialHeaderHeight:I

.field protected mWheel:Landroid/support/wearable/view/WearableListView;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mChinOffset:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mChinOffset:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->adjustHeaderSize()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->adjustHeaderTranslation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeaderTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private adjustHeaderSize()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v2

    iget v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mCharLimitShortTitle:I

    if-gt v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    iget v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mCharLimitLine:I

    if-gt v2, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v1, v5

    :cond_0
    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    float-to-int v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v4, :cond_4

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ViewUtils;->getIsCircular(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_2
    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ViewUtils;->getIsCircular(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2
.end method

.method private adjustHeaderTranslation()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v3}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v3}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v4, v5}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v3, v4

    :cond_0
    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mInitialHeaderHeight:I

    neg-int v3, v3

    neg-int v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v0, v3

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v4, v5}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/wearable/view/WearableListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected initializeLayout(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11013d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/wearable/view/WearableListView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    const v2, 0x7f11013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeaderTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f11013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mDetails:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2, p1}, Landroid/support/wearable/view/WearableListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    new-instance v3, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/wearable/view/WearableListView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2, p0}, Landroid/support/wearable/view/WearableListView;->setClickListener(Landroid/support/wearable/view/WearableListView$ClickListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2, p0}, Landroid/support/wearable/view/WearableListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2}, Landroid/support/wearable/view/WearableListView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->adjustHeaderSize()V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mDetails:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->positionOnCircular(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mCharLimitShortTitle:I

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mCharLimitLine:I

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mHeader:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mInitialHeaderHeight:I

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ViewUtils;->getIsCircular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mInitialHeaderHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mInitialHeaderHeight:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mWheel:Landroid/support/wearable/view/WearableListView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->adjustHeaderTranslation()V

    goto :goto_0
.end method

.method public onTopEmptyRegionClick()V
    .locals 0

    return-void
.end method

.method public positionOnCircular(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 9

    invoke-static {p1}, Lcom/android/packageinstaller/permission/ui/wear/settings/ViewUtils;->getIsCircular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v7, v0

    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v0, 0x1

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    iget v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->mChinOffset:I

    add-int/2addr v0, v6

    invoke-virtual {p4, v3, v4, v5, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;-><init>(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;Landroid/view/ViewGroup;IIII)V

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p4, v3, v0, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method
