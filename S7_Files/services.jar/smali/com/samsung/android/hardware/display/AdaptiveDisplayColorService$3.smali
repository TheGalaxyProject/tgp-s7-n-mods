.class Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v8, 0x2

    .line 662
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 663
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_0

    .line 664
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getEnvironmentAdaptiveDisplayContext()Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    move-result-object v0

    .line 665
    .local v0, "environmentAdaptiveDisplay":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getRed()F

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F

    .line 666
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getGreen()F

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F

    .line 667
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getBlue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F

    .line 668
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getLux()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)J

    .line 669
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getCCT()I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    .line 670
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 673
    .local v2, "time":J
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 674
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v8, v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 661
    .end local v0    # "environmentAdaptiveDisplay":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    .end local v2    # "time":J
    :cond_0
    return-void
.end method
