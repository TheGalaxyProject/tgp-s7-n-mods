.class Lcom/android/server/display/MagnifierSurfaceControl$3;
.super Landroid/database/ContentObserver;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/MagnifierSurfaceControl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 1249
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1250
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getScale()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->-set5(Lcom/android/server/display/MagnifierSurfaceControl;I)I

    .line 1251
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->-get2(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_magnifier_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->-set4(Lcom/android/server/display/MagnifierSurfaceControl;I)I

    .line 1252
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->-get7(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->-get13(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->-get7(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->-get13(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->-get14(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateSettings(IIF)V

    .line 1253
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 1254
    .local v0, "spec":Landroid/view/MagnificationSpec;
    sget v1, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1255
    sget v1, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1256
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->-get14(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 1257
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v1, v0}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 1258
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get1()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1259
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get1()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateMagnifierLayoutParams()V

    .line 1260
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get1()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-wrap5(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    .line 1248
    :cond_0
    return-void
.end method
