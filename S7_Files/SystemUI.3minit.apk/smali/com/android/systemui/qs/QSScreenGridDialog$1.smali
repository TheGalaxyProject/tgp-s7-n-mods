.class Lcom/android/systemui/qs/QSScreenGridDialog$1;
.super Ljava/lang/Object;
.source "QSScreenGridDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSScreenGridDialog;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    iput-object p2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 80
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 82
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4, p1}, Lcom/android/systemui/qs/QSScreenGridDialog;->-set0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/View;)Landroid/view/View;

    .line 85
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 87
    const v4, 0x7f130052

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, "column":Ljava/lang/String;
    const v4, 0x7f130053

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "column_landscape":Ljava/lang/String;
    const v4, 0x7f130051

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, "row":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string/jumbo v5, "qs_tile_column"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 92
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string/jumbo v5, "qs_tile_column_landscape"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 93
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string/jumbo v5, "qs_tile_row"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 95
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v4, :cond_1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "layout":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "X3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v6, "QS22"

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    .end local v2    # "layout":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method
