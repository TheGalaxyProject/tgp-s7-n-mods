.class Lcom/android/server/policy/GlobalActions$46;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->adjustBottomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 5644
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5648
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5649
    .local v0, "action":I
    const/4 v1, 0x0

    .line 5650
    .local v1, "returnValue":Z
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5651
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/server/policy/GlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v1

    .line 5652
    .local v1, "returnValue":Z
    return v1

    .line 5654
    .local v1, "returnValue":Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/server/policy/GlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v1

    .line 5655
    .local v1, "returnValue":Z
    return v1
.end method
