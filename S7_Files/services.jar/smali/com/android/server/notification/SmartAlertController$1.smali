.class Lcom/android/server/notification/SmartAlertController$1;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SmartAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/SmartAlertController;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 4
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 91
    :pswitch_0
    const-string/jumbo v1, "SmartAlertController"

    const-string/jumbo v2, "SmartAlert - SemMotionRecognitionEvent.SMART_ALERT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->-get6(Lcom/android/server/notification/SmartAlertController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 94
    .local v0, "pickUpHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/notification/SmartAlertController$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$1$1;-><init>(Lcom/android/server/notification/SmartAlertController$1;)V

    .line 104
    const-wide/16 v2, 0x1f4

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
