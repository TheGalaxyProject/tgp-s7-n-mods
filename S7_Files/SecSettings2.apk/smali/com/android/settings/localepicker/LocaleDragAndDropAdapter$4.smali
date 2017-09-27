.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 7

    .prologue
    .line 422
    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v5}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-get2(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 423
    .local v0, "count":I
    new-array v4, v0, [Ljava/util/Locale;

    .line 424
    .local v4, "newTempList":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 425
    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v5}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-get2(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 426
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v1

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 430
    .local v3, "newList":Landroid/os/LocaleList;
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v5}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-get7(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 432
    :cond_1
    const-string/jumbo v5, "LocaleDragAndDropAdapter"

    const-string/jumbo v6, "All animations finished, but the temp locale list did not change"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 437
    :cond_2
    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v5, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-set3(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    .line 440
    const-string/jumbo v5, "LocaleDragAndDropAdapter"

    const-string/jumbo v6, "update view for new temp list"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 442
    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v5, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_3
    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v5}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-get0(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;->checkChanged()V

    .line 420
    return-void
.end method
