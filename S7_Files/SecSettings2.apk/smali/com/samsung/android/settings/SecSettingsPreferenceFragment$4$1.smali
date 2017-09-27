.class Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;
.super Ljava/lang/Object;
.source "SecSettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;ILandroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;
    .param p2, "val$position"    # I
    .param p3, "val$listView"    # Landroid/widget/ListView;
    .param p4, "val$highlight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->this$1:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;

    iput p2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$position:I

    iput-object p3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$listView:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 527
    iget v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$position:I

    iget-object v6, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v3, v5, v6

    .line 528
    .local v3, "index":I
    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->this$1:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;

    iget-object v5, v5, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->-get1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ltz v3, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 529
    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 530
    .local v2, "headerCnt":I
    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$listView:Landroid/widget/ListView;

    add-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 531
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 533
    .local v0, "centerX":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 534
    .local v1, "centerY":I
    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->val$highlight:Landroid/graphics/drawable/Drawable;

    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 535
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setPressed(Z)V

    .line 536
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 537
    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4$1;->this$1:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;

    iget-object v5, v5, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-static {v5, v9}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->-set1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v2    # "headerCnt":I
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
