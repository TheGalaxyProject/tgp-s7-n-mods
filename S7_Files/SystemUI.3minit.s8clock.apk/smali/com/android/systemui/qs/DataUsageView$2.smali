.class Lcom/android/systemui/qs/DataUsageView$2;
.super Ljava/lang/Thread;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/DataUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/DataUsageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/DataUsageView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f0f0683

    .line 81
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->-get1(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->-get1(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    .line 83
    .local v1, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    if-eqz v1, :cond_3

    .line 84
    iget-wide v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 85
    .local v6, "usageLevel":J
    iget-wide v4, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 86
    .local v4, "limitLevel":J
    invoke-static {}, Lcom/android/systemui/qs/DataUsageView;->-get4()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3, v1}, Lcom/android/systemui/qs/DataUsageView;->-wrap0(Lcom/android/systemui/qs/DataUsageView;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v6

    .line 88
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/DataUsageView;->getLimitBytes()J

    move-result-wide v4

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->-get0(Lcom/android/systemui/qs/DataUsageView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "content":Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v8}, Lcom/android/systemui/qs/DataUsageView;->-get0(Lcom/android/systemui/qs/DataUsageView;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_1
    const-string/jumbo v3, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateUsageInfo usageLevel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",limitLevel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->-get0(Lcom/android/systemui/qs/DataUsageView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "label":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/systemui/qs/DataUsageView;->-set0(Lcom/android/systemui/qs/DataUsageView;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .end local v2    # "label":Ljava/lang/String;
    .end local v4    # "limitLevel":J
    .end local v6    # "usageLevel":J
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->-get3(Lcom/android/systemui/qs/DataUsageView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v8, v8, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void

    .line 98
    .restart local v1    # "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v9}, Lcom/android/systemui/qs/DataUsageView;->-get0(Lcom/android/systemui/qs/DataUsageView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : 0 B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/systemui/qs/DataUsageView;->-set0(Lcom/android/systemui/qs/DataUsageView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
