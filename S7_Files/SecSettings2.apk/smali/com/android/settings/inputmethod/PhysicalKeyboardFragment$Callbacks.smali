.class final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Callbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mPhysicalKeyboardFragment:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "physicalKeyboardFragment"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p3, "hardKeyboards":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mContext:Landroid/content/Context;

    .line 312
    iput-object p2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mPhysicalKeyboardFragment:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 313
    iput-object p3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mHardKeyboards:Ljava/util/List;

    .line 310
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mHardKeyboards:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p2, Ljava/util/List;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;>;"
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mPhysicalKeyboardFragment:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->onLoadFinishedInternal(ILjava/util/List;)V

    .line 322
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;>;>;"
    return-void
.end method
