.class Lcom/android/server/accessibility/OverlayMagnifier$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/OverlayMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/OverlayMagnifier;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 353
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 355
    .local v0, "coverState":Z
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->-get1(Lcom/android/server/accessibility/OverlayMagnifier;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/OverlayMagnifier;->-set0(Lcom/android/server/accessibility/OverlayMagnifier;Z)Z

    .line 357
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->-get1(Lcom/android/server/accessibility/OverlayMagnifier;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->-wrap0(Lcom/android/server/accessibility/OverlayMagnifier;)V

    .line 352
    :cond_0
    return-void
.end method
