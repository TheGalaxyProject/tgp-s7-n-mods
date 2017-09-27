.class public Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LedCoverCallerIDList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;
    }
.end annotation


# instance fields
.field final PROJECTION:[Ljava/lang/String;

.field private actionBar:Landroid/app/ActionBar;

.field private mContactCount:I

.field private mContactInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFromChangeAction:Z

.field private mIsInEditMode:Z

.field private mList:Landroid/widget/ListView;

.field public mListKeyListener:Landroid/view/View$OnKeyListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSelectActionView:Landroid/view/View;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedContactTextView:Landroid/widget/TextView;

.field private mSelectedId:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateOptionMenusVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    .line 100
    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    .line 102
    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 111
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    .line 113
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    .line 117
    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 119
    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllText:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    .line 425
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 427
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v2

    .line 429
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 431
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 433
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 435
    const-string/jumbo v1, "data15"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 425
    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->PROJECTION:[Ljava/lang/String;

    .line 511
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mListKeyListener:Landroid/view/View$OnKeyListener;

    .line 70
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "isSelect"    # Z

    .prologue
    .line 1043
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    .line 1047
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    .line 1041
    return-void
.end method

.method private cleanUpFloatableCheckboxList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 911
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    .line 912
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 913
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 914
    const v4, 0x7f110433

    .line 913
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 915
    .local v0, "checkbox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 916
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 917
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 918
    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-lt v2, v3, :cond_0

    .line 919
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 922
    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-lt v2, v3, :cond_1

    .line 923
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 924
    const v4, 0x7f110434

    .line 923
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 925
    .local v1, "container":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_1

    .line 926
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v4

    .line 927
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v5

    .line 926
    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 912
    .end local v1    # "container":Landroid/widget/RelativeLayout;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    .end local v0    # "checkbox":Landroid/widget/CheckBox;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    .line 910
    return-void
.end method

.method private createContactList()V
    .locals 6

    .prologue
    .line 348
    const-string/jumbo v0, "LedCoverCallerIDList"

    const-string/jumbo v1, "createContactList()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    .line 353
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 354
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    const v3, 0x7f040158

    const/4 v4, 0x0

    move-object v1, p0

    .line 353
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    return-void
.end method

.method private finishEditMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 903
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditMode(Z)V

    .line 904
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->cleanUpFloatableCheckboxList()V

    .line 905
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    .line 906
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finish()V

    .line 902
    :cond_0
    return-void
.end method

.method private get1stCheckedContactName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1064
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1065
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1065
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    .end local v0    # "index":I
    :cond_1
    return-object v2
.end method

.method private getNumOfCheckedList()I
    .locals 3

    .prologue
    .line 1051
    const/4 v1, 0x0

    .line 1053
    .local v1, "numChecked":I
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1054
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1055
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    add-int/lit8 v1, v1, 0x1

    .line 1054
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    .end local v0    # "index":I
    :cond_1
    return v1
.end method

.method private hideCheckBox()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 899
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 858
    return-void
.end method

.method private setEditMode(Z)V
    .locals 2
    .param p1, "isInEditMode"    # Z

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditModeActionBar(Z)V

    .line 802
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_2

    .line 808
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_1

    .line 809
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->hideCheckBox()V

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    .line 811
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 813
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    .line 800
    return-void

    .line 803
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->showCheckBox()V

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    .line 805
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    .line 806
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateOptionMenusVisibility()V

    goto :goto_0
.end method

.method private setEditModeActionBar(Z)V
    .locals 6
    .param p1, "isInEditMode"    # Z

    .prologue
    const/16 v1, 0xc

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 937
    if-eqz p1, :cond_2

    .line 938
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 939
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 940
    const v1, 0x7f040159

    .line 939
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 945
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 948
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 949
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 951
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f110438

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllText:Landroid/widget/TextView;

    .line 952
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllText:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$4;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    .line 960
    const v1, 0x7f110437

    .line 959
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 961
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$5;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 967
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    .line 968
    const v1, 0x7f110439

    .line 967
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    .line 936
    :goto_0
    return-void

    .line 971
    :cond_1
    const-string/jumbo v0, "LedCoverCallerIDList"

    const-string/jumbo v1, "updateSelectMenu null!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 977
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showCheckBox()V
    .locals 5

    .prologue
    .line 817
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 849
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 850
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 851
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110433

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "chb":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 853
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 850
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    .end local v0    # "chb":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 816
    return-void
.end method

.method private updateContactDB(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    .line 756
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 757
    .local v4, "selection":Ljava/lang/StringBuffer;
    const-string/jumbo v6, "_id IN ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 760
    .local v2, "listSize":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v3

    .line 761
    .local v3, "numofchecked":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 762
    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 763
    const-string/jumbo v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    const-string/jumbo v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    add-int/lit8 v3, v3, -0x1

    .line 767
    if-lez v3, :cond_0

    .line 768
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v5, "v":Landroid/content/ContentValues;
    if-nez p1, :cond_2

    .line 775
    const-string/jumbo v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateContactDB() [REMOVE] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 776
    const-string/jumbo v8, ", selection : "

    .line 775
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 776
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 775
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string/jumbo v6, "sec_led"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 786
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 785
    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_2
    return-void

    .line 779
    :cond_2
    const-string/jumbo v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateContactDB() [CHANGE] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 780
    const-string/jumbo v8, ", selection : "

    .line 779
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 780
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 779
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string/jumbo v6, "sec_led"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SQL Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateContactList()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    .line 445
    :goto_0
    const-string/jumbo v3, "sec_led IS ? AND (photo_id = _id OR photo_id IS NULL)"

    .line 446
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 448
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 449
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "data_groupby"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "groupby"

    const-string/jumbo v4, "contact_id"

    .line 449
    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 450
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 451
    const-string/jumbo v4, "contact_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "display_name"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "data15"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 452
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 453
    iget v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v4, v11

    .line 454
    const/4 v5, 0x0

    .line 448
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 464
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 466
    .local v8, "data15":[B
    if-eqz v6, :cond_2

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 468
    const-string/jumbo v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContactList() Selected ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 469
    iget v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-lez v0, :cond_1

    .line 471
    .end local v8    # "data15":[B
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, "contact_id":Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, "display_name":Ljava/lang/String;
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 475
    .local v8, "data15":[B
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-direct {v1, p0, v7, v9, v8}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    const-string/jumbo v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContactList() contact_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 477
    const-string/jumbo v2, ", display_name : "

    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 443
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "contact_id":Ljava/lang/String;
    .end local v8    # "data15":[B
    .end local v9    # "display_name":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 455
    .restart local v3    # "selection":Ljava/lang/String;
    .local v6, "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 456
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQL Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 480
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    .local v6, "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_2
    return-void
.end method

.method private updateListDescription()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 484
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b02fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    .line 493
    const v1, 0x7f0b0325

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 492
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 493
    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 492
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateOptionMenusVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 299
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x28

    return v0
.end method

.method public makeContactChangedToastForAddContact(Ljava/lang/StringBuffer;)V
    .locals 18
    .param p1, "selection"    # Ljava/lang/StringBuffer;

    .prologue
    .line 648
    const/4 v8, 0x0

    .line 650
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 651
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "display_name"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "sec_led"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 652
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 650
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 659
    .local v8, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "SelectedID":Ljava/lang/String;
    const/4 v15, 0x0

    .line 662
    .local v15, "overwritten_contactCount":I
    const-string/jumbo v16, ""

    .line 664
    .local v16, "overwritten_contactName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 665
    .local v11, "exsit_contactCount":I
    const-string/jumbo v12, ""

    .line 668
    .local v12, "exsit_contactName":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 669
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 671
    :cond_0
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 673
    .local v9, "callerID":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 679
    :cond_1
    if-eqz v9, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 684
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    const/16 v17, 0x0

    .line 687
    .local v17, "overwritten_msg":Ljava/lang/String;
    const/4 v13, 0x0

    .line 690
    .local v13, "exsit_msg":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt v15, v1, :cond_3

    .line 691
    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    .line 693
    const v1, 0x7f0b0326

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 692
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 694
    const/4 v3, 0x0

    aput-object v16, v2, v3

    .line 692
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 700
    .local v17, "overwritten_msg":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "make Overwritten Toast [ADD] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v17    # "overwritten_msg":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    if-lt v11, v1, :cond_4

    .line 706
    const/4 v1, 0x1

    if-ne v11, v1, :cond_a

    .line 708
    const v1, 0x7f0b0328

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 709
    const/4 v3, 0x0

    aput-object v12, v2, v3

    .line 707
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 716
    .local v13, "exsit_msg":Ljava/lang/String;
    :goto_2
    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "make alerady exist Toast [ADD] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v13    # "exsit_msg":Ljava/lang/String;
    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 732
    .end local v9    # "callerID":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 733
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_6
    return-void

    .line 653
    .end local v7    # "SelectedID":Ljava/lang/String;
    .end local v11    # "exsit_contactCount":I
    .end local v12    # "exsit_contactName":Ljava/lang/String;
    .end local v15    # "overwritten_contactCount":I
    .end local v16    # "overwritten_contactName":Ljava/lang/String;
    .local v8, "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 654
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQL Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 656
    return-void

    .line 673
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v7    # "SelectedID":Ljava/lang/String;
    .local v8, "c":Landroid/database/Cursor;
    .restart local v9    # "callerID":Ljava/lang/String;
    .restart local v11    # "exsit_contactCount":I
    .restart local v12    # "exsit_contactName":Ljava/lang/String;
    .restart local v15    # "overwritten_contactCount":I
    .restart local v16    # "overwritten_contactName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 674
    add-int/lit8 v15, v15, 0x1

    .line 675
    const-string/jumbo v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 679
    :cond_8
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    add-int/lit8 v11, v11, 0x1

    .line 681
    const-string/jumbo v1, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 697
    .local v13, "exsit_msg":Ljava/lang/String;
    .local v17, "overwritten_msg":Ljava/lang/String;
    :cond_9
    const v1, 0x7f0b0327

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 698
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 696
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .local v17, "overwritten_msg":Ljava/lang/String;
    goto/16 :goto_1

    .line 711
    .end local v17    # "overwritten_msg":Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    .line 713
    .local v17, "overwritten_msg":Ljava/lang/String;
    const v1, 0x7f0b0329

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 712
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 714
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 712
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "exsit_msg":Ljava/lang/String;
    goto/16 :goto_2

    .line 720
    .end local v13    # "exsit_msg":Ljava/lang/String;
    .end local v17    # "overwritten_msg":Ljava/lang/String;
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .local v14, "msg":Ljava/lang/StringBuilder;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 722
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 724
    const-string/jumbo v1, "\n"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_c
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 727
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3
.end method

.method public makeContactChangedToastForChangeContact(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 739
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v1

    .line 740
    .local v1, "count":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->get1stCheckedContactName()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "contactName":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    if-eq v3, p1, :cond_0

    if-ge v1, v4, :cond_1

    .line 742
    :cond_0
    return-void

    .line 745
    :cond_1
    if-ne v1, v4, :cond_2

    .line 746
    const v3, 0x7f0b0326

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 747
    aput-object v0, v4, v6

    .line 746
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 752
    const-string/jumbo v3, "LedCoverCallerIDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeContactChangedToast() [CHANGE] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 749
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b0327

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public makeMaximumNumberReachedToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 793
    const v1, 0x7f0b032a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 794
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 793
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 796
    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeMaximumNumberReachedToast() [CHANGE] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 146
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v3, "selected_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    .line 151
    const-string/jumbo v3, "contact_count"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 153
    :cond_0
    const-string/jumbo v3, "LedCoverCallerIDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityCreated() Selected ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", contact count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 154
    iget v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->createContactList()V

    .line 158
    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v3, :cond_1

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "additional"

    const-string/jumbo v4, "settings-phone-multi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v3, "support_tab"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string/jumbo v3, "maxRecipientCount"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string/jumbo v3, "existingRecipientCount"

    iget v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string/jumbo v3, "excludeProfile"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const/16 v3, 0x3ec

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LVCS"

    const-string/jumbo v6, "ADD"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 167
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "LedCoverCallerIDList"

    const-string/jumbo v4, "Activity Not Found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 203
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onActivityResult() requestCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/16 v10, 0x3ec

    if-eq p1, v10, :cond_0

    .line 207
    const/16 v10, 0x3ed

    if-ne p1, v10, :cond_5

    .line 208
    :cond_0
    if-nez p3, :cond_2

    .line 209
    const/16 v10, 0x3ec

    if-ne p1, v10, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    const-string/jumbo v10, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 215
    .local v6, "mParticipantsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 216
    .local v4, "i":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v8, "selection":Ljava/lang/StringBuffer;
    const-string/jumbo v10, "_id IN ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 220
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "args":[Ljava/lang/String;
    const-string/jumbo v10, "\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string/jumbo v10, "\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 226
    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 228
    .end local v1    # "args":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onActivityResult() [ADD] sec_led : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 231
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 230
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 231
    const-string/jumbo v12, ", selection : "

    .line 230
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 231
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 230
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->makeContactChangedToastForAddContact(Ljava/lang/StringBuffer;)V

    .line 235
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v9, "v":Landroid/content/ContentValues;
    const-string/jumbo v10, "sec_led"

    iget v11, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 240
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 239
    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SQL Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v4    # "i":I
    .end local v6    # "mParticipantsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "selection":Ljava/lang/StringBuffer;
    .end local v9    # "v":Landroid/content/ContentValues;
    :cond_5
    const/16 v10, 0x3ee

    if-ne p1, v10, :cond_7

    .line 246
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    .line 247
    if-eqz p3, :cond_1

    .line 248
    const-string/jumbo v10, "selected_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 249
    .local v5, "id":I
    const-string/jumbo v10, "contact_count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 250
    .local v2, "count":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v7

    .line 251
    .local v7, "numofchecked":I
    add-int v10, v2, v7

    const/16 v11, 0x64

    if-le v10, v11, :cond_6

    .line 252
    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onActivityResult() selected_id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", contact_count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 253
    const-string/jumbo v12, ", numofchecked : "

    .line 252
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->makeMaximumNumberReachedToast()V

    goto/16 :goto_0

    .line 256
    :cond_6
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactDB(I)V

    .line 257
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->makeContactChangedToastForChangeContact(I)V

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    goto/16 :goto_0

    .line 262
    .end local v2    # "count":I
    .end local v5    # "id":I
    .end local v7    # "numofchecked":I
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContext:Landroid/content/Context;

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setHasOptionsMenu(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 271
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 274
    const v0, 0x7f0b0429

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 277
    const/4 v0, 0x2

    const v1, 0x7f0b0422

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 280
    const/4 v0, 0x3

    const v1, 0x7f0b1a0c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 283
    const/4 v0, 0x4

    const v1, 0x7f0b042a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateOptionMenusVisibility()V

    .line 267
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const v1, 0x7f040157

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f1102a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    .line 141
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 548
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v1, :cond_0

    .line 549
    const v1, 0x7f110433

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 550
    .local v0, "appCheck":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    .line 555
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    .line 547
    .end local v0    # "appCheck":Landroid/widget/CheckBox;
    :cond_0
    return-void

    .line 553
    .restart local v0    # "appCheck":Landroid/widget/CheckBox;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 529
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-nez v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    .line 531
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    .line 532
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditMode(Z)V

    .line 543
    :goto_0
    return v3

    .line 534
    :cond_0
    const v1, 0x7f110433

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 535
    .local v0, "appCheck":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    .line 540
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    packed-switch p2, :pswitch_data_0

    .line 508
    :cond_0
    return v1

    .line 504
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    .line 505
    const/4 v0, 0x1

    return v0

    .line 502
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 308
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 342
    return v4

    .line 310
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "additional"

    const-string/jumbo v3, "settings-phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string/jumbo v2, "support_tab"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string/jumbo v2, "maxRecipientCount"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string/jumbo v2, "existingRecipientCount"

    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string/jumbo v2, "excludeProfile"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    const/16 v2, 0x3ed

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LVCS"

    const-string/jumbo v5, "ADD"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return v6

    .line 318
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "LedCoverCallerIDList"

    const-string/jumbo v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 326
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditMode(Z)V

    goto :goto_1

    .line 329
    :pswitch_2
    const-string/jumbo v2, "LedCoverCallerIDList"

    const-string/jumbo v3, "onOptionsItemSelected() action [CHANGE]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    .line 332
    const-string/jumbo v3, "com.android.settings.Settings$LedCoverCallerIDSettingsActivity"

    .line 331
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string/jumbo v2, "change_mode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const/16 v2, 0x3ee

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 337
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string/jumbo v2, "LedCoverCallerIDList"

    const-string/jumbo v3, "onOptionsItemSelected() action [REMOVE]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactDB(I)V

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    goto :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 180
    const-string/jumbo v0, "LedCoverCallerIDList"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    .line 188
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    goto :goto_0
.end method

.method public updateActionButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v0

    .line 989
    const-string/jumbo v1, "LedCoverCallerIDList"

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActionButtonState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 991
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 990
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    if-lez v0, :cond_0

    .line 994
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 995
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b032b

    .line 994
    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 986
    :goto_1
    return-void

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f0b032c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateActionbarState()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1009
    const/4 v0, 0x0

    .line 1011
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v0

    .line 1013
    const-string/jumbo v1, "LedCoverCallerIDList"

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActionbarState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1015
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1014
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1013
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-lez v0, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 1019
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b032b

    .line 1018
    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1030
    :goto_1
    if-nez v0, :cond_2

    .line 1031
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1032
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1007
    :goto_2
    return-void

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f0b032c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1027
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1036
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1037
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public updateSelectionState()V
    .locals 0

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateActionButtonState()V

    .line 983
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateActionbarState()V

    .line 981
    return-void
.end method
