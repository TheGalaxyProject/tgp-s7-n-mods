.class Lcom/samsung/android/settings/GigaMultiPath$2;
.super Landroid/database/ContentObserver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GigaMultiPath;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get1(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get0(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set0(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get2(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set1(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap3(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get0(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set0(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap3(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    goto :goto_0
.end method
