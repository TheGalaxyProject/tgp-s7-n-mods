.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    }
.end annotation


# instance fields
.field private mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mHandler:Landroid/os/Handler;

.field private mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mNeedUpdateUi:Z

.field private mTempDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTempInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "localAdapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p4, "localManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 71
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    .line 72
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    .line 88
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    .line 136
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    .line 138
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 139
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 135
    return-void
.end method

.method private isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b11fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 366
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I
    .locals 2
    .param p1, "selectedList"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .param p2, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 331
    if-gez v0, :cond_0

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 333
    :cond_0
    return v0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 369
    return-void
.end method

.method public getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    const v1, 0x7f110557

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v3}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    if-nez v0, :cond_1

    .line 201
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "init :: mExpandableListView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 206
    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    .line 195
    return-void
.end method

.method public initListViewForDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setSelector(I)V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setScrollIndicators(I)V

    .line 345
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 357
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanningStateChanged :: started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method public readyToDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .param p2, "selectedList"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    const/4 v3, 0x0

    .line 257
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToDeleteAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "readyToDeleteAnimation :: not exist preference already"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v3

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v0, :cond_2

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    .line 270
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 271
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_1
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToDeleteAnimation :: contains device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_2
    return v3
.end method

.method public readyToInsertAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .param p2, "selectedList"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    const/4 v3, 0x0

    .line 237
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToInsertAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "readyToInsertAnimation :: exist preference already"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v3

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v0, :cond_2

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    .line 250
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 251
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_1
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToInsertAnimation :: contains device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_2
    return v3
.end method

.method public setInsertAnimation()V
    .locals 6

    .prologue
    .line 277
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 278
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 279
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 282
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v3

    add-int v1, v3, v0

    .line 283
    .local v1, "index":I
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v2

    .line 284
    .local v2, "sortedIndex":I
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 285
    const-string/jumbo v3, "BluetoothExpListController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInsertAnimation :: insert index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , sortedIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "index":I
    .end local v2    # "sortedIndex":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsert(Ljava/util/ArrayList;)V

    .line 276
    return-void
.end method

.method public setInsertDeleteAnimation(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 8
    .param p1, "insertDeviceGroup"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .param p2, "deleteDeviceGroup"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .param p3, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 292
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 293
    invoke-virtual {p3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 294
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    const/4 v1, -0x1

    .line 296
    .local v1, "deleteIndex":I
    if-nez p2, :cond_0

    .line 297
    const-string/jumbo v5, "BluetoothExpListController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInsertDeleteAnimation :: deleteDeviceGroup is null, bondState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 299
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p2

    .line 305
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->findDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v1

    .line 307
    :cond_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 308
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 309
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5, v1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v2

    .line 311
    .local v2, "deleteSortedIndex":I
    const-string/jumbo v5, "BluetoothExpListController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInsertDeleteAnimation :: delete deleteIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , deleteSortedIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 315
    .end local v2    # "deleteSortedIndex":I
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v3

    .line 316
    .local v3, "insertIndex":I
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5, v3, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v4

    .line 318
    .local v4, "insertSortedIndex":I
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 319
    add-int/lit8 v4, v4, -0x1

    .line 321
    :cond_3
    const-string/jumbo v5, "BluetoothExpListController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInsertDeleteAnimation :: insert insertIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , insertSortedIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 324
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 291
    return-void

    .line 301
    .end local v3    # "insertIndex":I
    .end local v4    # "insertSortedIndex":I
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p2

    goto/16 :goto_0
.end method

.method public setListDivider(Landroid/graphics/drawable/InsetDrawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/InsetDrawable;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void
.end method

.method public setListMinimumHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setMinimumHeight(I)V

    .line 336
    return-void
.end method

.method public setListViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setVisibility(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    .line 232
    return-void
.end method
