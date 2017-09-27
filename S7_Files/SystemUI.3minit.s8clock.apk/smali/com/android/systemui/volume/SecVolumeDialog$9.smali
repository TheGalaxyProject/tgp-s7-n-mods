.class Lcom/android/systemui/volume/SecVolumeDialog$9;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 726
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 727
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 728
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 727
    :goto_0
    invoke-static {v3, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 729
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 730
    return v2

    :cond_0
    move v1, v2

    .line 727
    goto :goto_0

    .line 728
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
