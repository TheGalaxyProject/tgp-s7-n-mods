.class Lcom/android/server/display/MagnifierSurfaceControl$Border$2;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 963
    const-string/jumbo v20, "Magnifier.Border"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onTouch "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get9(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 965
    .local v9, "pad_bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get9(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 966
    .local v12, "pad_left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get9(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Rect;->right:I

    .line 967
    .local v13, "pad_right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get9(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 970
    .local v14, "pad_top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get9(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getPointOffset()Landroid/graphics/Point;

    move-result-object v20

    move-object/from16 v0, v20

    iget v15, v0, Landroid/graphics/Point;->x:I

    .line 971
    .local v15, "refer_point_x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get9(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getPointOffset()Landroid/graphics/Point;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    .line 974
    .local v16, "refer_point_y":I
    sub-int v20, v13, v12

    div-int/lit8 v20, v20, 0x2

    add-int v10, v12, v20

    .line 975
    .local v10, "pad_center_x":I
    sub-int v20, v9, v14

    div-int/lit8 v20, v20, 0x2

    add-int v11, v14, v20

    .line 978
    .local v11, "pad_center_y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get9(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierDisplayPolicy;->getScale()F

    move-result v17

    .line 979
    .local v17, "scale":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    int-to-float v0, v10

    move/from16 v21, v0

    sub-float v20, v20, v21

    div-float v20, v20, v17

    int-to-float v0, v15

    move/from16 v21, v0

    add-float v18, v20, v21

    .line 980
    .local v18, "touch_x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    div-float v20, v20, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v19, v20, v21

    .line 982
    .local v19, "touch_y":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 1032
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get10(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/GestureDetector;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get10(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/GestureDetector;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    return v20

    .line 984
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchX:F

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchY:F

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownX:F

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownY:F

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-get4(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 990
    .local v5, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v5, :cond_1

    .line 991
    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl;->-set2(I)I

    .line 992
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl;->-set1(I)I

    .line 994
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->pokeWakelock()V

    goto/16 :goto_0

    .line 998
    .end local v5    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateMagnifierLayoutParams()V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-wrap5(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    move/from16 v20, v0

    sput v20, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    move/from16 v20, v0

    sput v20, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->-wrap3(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1005
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1b58

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpX:F

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpY:F

    goto/16 :goto_0

    .line 1013
    .end local v8    # "msg":Landroid/os/Message;
    :pswitch_2
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v7

    .line 1014
    .local v7, "mSpec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    sget v21, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchX:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    sget v21, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_2

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    iput v0, v7, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    iget v0, v7, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_4

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    iput v0, v7, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    iget v0, v7, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    .line 1022
    :try_start_0
    const-string/jumbo v20, "display"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v6

    .line 1023
    .local v6, "mIDisplayManager":Landroid/hardware/display/IDisplayManager;
    if-eqz v6, :cond_0

    .line 1024
    invoke-interface {v6, v7}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1025
    .end local v6    # "mIDisplayManager":Landroid/hardware/display/IDisplayManager;
    :catch_0
    move-exception v4

    .line 1026
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1016
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    move/from16 v20, v0

    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get3()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_3

    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get3()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    move/from16 v20, v0

    goto/16 :goto_1

    .line 1018
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    move/from16 v20, v0

    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get4()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_5

    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get4()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    move/from16 v20, v0

    goto/16 :goto_2

    .line 1035
    .end local v7    # "mSpec":Landroid/view/MagnificationSpec;
    :cond_6
    const/16 v20, 0x1

    return v20

    .line 982
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
