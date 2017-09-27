.class Lcom/android/systemui/volume/VolumeDialogController$1;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 6
    .param p1, "minVol"    # I
    .param p2, "maxVol"    # I
    .param p3, "curVol"    # I
    .param p4, "isMute"    # Z

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0xa

    .line 171
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[SmartView]onVolumeChanged curVol = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 173
    .local v0, "showUI":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap8(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eq v1, p4, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1, v4, p4}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap6(Lcom/android/systemui/volume/VolumeDialogController;IZ)Z

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1, p3}, Lcom/android/systemui/volume/VolumeDialogController;->-set0(Lcom/android/systemui/volume/VolumeDialogController;I)I

    .line 178
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController;->-set3(Lcom/android/systemui/volume/VolumeDialogController;I)I

    .line 179
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->-set2(Lcom/android/systemui/volume/VolumeDialogController;I)I

    .line 180
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get6(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 182
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)I

    move-result v2

    invoke-static {v1, v4, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z

    .line 188
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1, v5}, Lcom/android/systemui/volume/VolumeDialogController;->-set4(Lcom/android/systemui/volume/VolumeDialogController;I)I

    .line 170
    return-void

    .line 172
    .end local v0    # "showUI":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showUI":Z
    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z

    goto :goto_1
.end method

.method public onVolumeKeyDown()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onVolumeKeyUp()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method
