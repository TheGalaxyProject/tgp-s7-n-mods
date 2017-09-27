.class Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;
.super Ljava/lang/Object;
.source "PipRecentsOverlayManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 84
    if-eqz p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->clearFocus()V

    .line 83
    :cond_0
    return-void
.end method
