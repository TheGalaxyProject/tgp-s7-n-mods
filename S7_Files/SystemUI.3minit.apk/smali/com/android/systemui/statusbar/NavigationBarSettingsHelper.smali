.class public Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
.super Ljava/lang/Object;
.source "NavigationBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;,
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;,
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    .line 50
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setUpSettingsItem()V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->readSettingsDB()V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerSettingsObserver()V

    .line 69
    return-void
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 189
    const-string/jumbo v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 191
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    if-eqz v2, :cond_1

    .line 192
    const-string/jumbo v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange tempList.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 194
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    .line 195
    .local v1, "listener":Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    if-eqz v1, :cond_0

    .line 196
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    .line 193
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    const-string/jumbo v3, "NavBarSettingsHelper"

    const-string/jumbo v4, "*** broadcastChange listener == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    .end local v0    # "i":I
    .end local v1    # "listener":Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    :cond_1
    const-string/jumbo v3, "NavBarSettingsHelper"

    const-string/jumbo v4, "*** broadcastChange tempList == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    .line 123
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    return-object v0
.end method

.method private readSettingsDB()V
    .locals 4

    .prologue
    .line 98
    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "readSettingsDB()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 100
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 4

    .prologue
    .line 106
    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "registerSettingsObserver()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 108
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->registerObserver()V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method private setUpSettingsItem()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 80
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_left_additional"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_left"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_center"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_right"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_right_additional"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_key_order"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_color"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_height"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public NavBarCenterForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NavBarLeftCornerForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NavBarLeftForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NavBarRightCornerForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NavBarRightForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public isDefaultNavibationBarButtonArray()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public varargs registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 9
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    .param p2, "uri"    # [Landroid/net/Uri;

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    const-string/jumbo v5, "NavBarSettingsHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "*** register listener for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    array-length v3, p2

    .line 130
    .local v3, "sizeOfUris":I
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 131
    .local v4, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 132
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 133
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const-string/jumbo v5, "NavBarSettingsHelper"

    const-string/jumbo v6, "Object tried to add another listener"

    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "Called by"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    if-nez v0, :cond_1

    .line 138
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 127
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    .end local v1    # "i":I
    .end local v3    # "sizeOfUris":I
    .end local v4    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1    # "i":I
    .restart local v3    # "sizeOfUris":I
    .restart local v4    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    :cond_2
    monitor-exit p0

    .line 144
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 145
    .local v2, "size":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    .line 146
    const-string/jumbo v6, "NavBarSettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mListeners["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 147
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    const-string/jumbo v7, "..."

    .line 146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    :cond_3
    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;)V
    .locals 10
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    const-string/jumbo v6, "NavBarSettingsHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "*** unregister listener for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 162
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 163
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 164
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    if-eqz v2, :cond_2

    .line 165
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "weakReference$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 166
    .local v4, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 167
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 158
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    .end local v4    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    .end local v5    # "weakReference$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 170
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    .restart local v5    # "weakReference$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v5    # "weakReference$iterator":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    :cond_3
    monitor-exit p0

    .line 177
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 178
    .local v3, "tempSize":I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    .line 179
    const-string/jumbo v7, "NavBarSettingsHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mListeners["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "] = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 180
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 180
    const-string/jumbo v8, "..."

    .line 179
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 182
    :cond_4
    if-nez v3, :cond_5

    .line 183
    const-string/jumbo v6, "NavBarSettingsHelper"

    const-string/jumbo v7, "mListeners doesn\'t have any listeners"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_5
    return-void
.end method
