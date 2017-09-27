.class Landroid/support/v17/leanback/widget/SearchBar$6;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v4, 0x1f4

    .line 263
    const/4 v0, 0x1

    .line 264
    .local v0, "handled":Z
    const/4 v1, 0x3

    if-eq v1, p2, :cond_0

    .line 265
    if-nez p2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-get4(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-wrap0(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 268
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-get2(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :goto_0
    return v0

    .line 276
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p2, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-get4(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-wrap0(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 279
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-get2(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$2;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 286
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_3

    .line 288
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-wrap0(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 289
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-get2(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$3;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 298
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
