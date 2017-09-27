.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

.field final synthetic val$addInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field final synthetic val$cur:I

.field final synthetic val$curAddPos:I

.field final synthetic val$pageOffset:I

.field final synthetic val$removeTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;IILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
    .param p2, "val$cur"    # I
    .param p3, "val$pageOffset"    # I
    .param p4, "val$addInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .param p5, "val$removeTileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .param p6, "val$curAddPos"    # I

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$cur:I

    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$pageOffset:I

    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$addInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$removeTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput p6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$curAddPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 312
    const-string/jumbo v0, "CSTMPagedTileLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayoutChange + cur = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$cur:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$cur:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$pageOffset:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$cur:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$addInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$cur:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$removeTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$curAddPos:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$cur:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setCircleVisibility(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$cur:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->val$pageOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 311
    return-void
.end method
