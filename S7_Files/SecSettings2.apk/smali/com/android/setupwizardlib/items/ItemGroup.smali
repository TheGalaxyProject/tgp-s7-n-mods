.class public Lcom/android/setupwizardlib/items/ItemGroup;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "ItemGroup.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/setupwizardlib/items/ItemHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDirty:Z

.field private mHierarchyStart:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    .line 90
    iput v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 91
    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    .line 90
    iput v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 91
    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 97
    return-void
.end method

.method private static binarySearch(Landroid/util/SparseIntArray;I)I
    .locals 6
    .param p0, "array"    # Landroid/util/SparseIntArray;
    .param p1, "value"    # I

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 37
    .local v4, "size":I
    const/4 v1, 0x0

    .line 38
    .local v1, "lo":I
    add-int/lit8 v0, v4, -0x1

    .line 40
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 41
    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    .line 42
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 44
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 45
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    if-le v3, p1, :cond_1

    .line 47
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5

    .line 54
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5
.end method

.method private getItemIndex(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    .line 206
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    if-lt p1, v1, :cond_1

    .line 207
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-static {v1, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->binarySearch(Landroid/util/SparseIntArray;I)I

    move-result v0

    .line 210
    .local v0, "result":I
    if-gez v0, :cond_2

    .line 211
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot have item start index < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_2
    return v0
.end method

.method private onHierarchyChanged()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 163
    return-void
.end method

.method private updateDataIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-boolean v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    if-eqz v2, :cond_2

    .line 186
    iput v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 187
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 188
    const/4 v1, 0x0

    .local v1, "itemIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 190
    .local v0, "item":Lcom/android/setupwizardlib/items/ItemHierarchy;
    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    :cond_0
    iget v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "item":Lcom/android/setupwizardlib/items/ItemHierarchy;
    :cond_1
    iput-boolean v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 184
    .end local v1    # "itemIndex":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1
    .param p1, "child"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    .line 109
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->onHierarchyChanged()V

    .line 106
    return-void
.end method

.method public findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->getId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 170
    return-object p0

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 173
    .local v0, "child":Lcom/android/setupwizardlib/items/ItemHierarchy;
    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v2

    .line 174
    .local v2, "childFindItem":Lcom/android/setupwizardlib/items/ItemHierarchy;
    if-eqz v2, :cond_1

    .line 175
    return-object v2

    .line 178
    .end local v0    # "child":Lcom/android/setupwizardlib/items/ItemHierarchy;
    .end local v2    # "childFindItem":Lcom/android/setupwizardlib/items/ItemHierarchy;
    :cond_2
    return-object v4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    .line 145
    iget v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    return v0
.end method

.method public getItemAt(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getItemIndex(I)I

    move-result v1

    .line 151
    .local v1, "itemIndex":I
    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 152
    .local v0, "item":Lcom/android/setupwizardlib/items/ItemHierarchy;
    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sub-int v2, p1, v3

    .line 153
    .local v2, "subpos":I
    invoke-interface {v0, v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v3

    return-object v3
.end method

.method public onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1
    .param p1, "hierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyChanged()V

    .line 157
    return-void
.end method
