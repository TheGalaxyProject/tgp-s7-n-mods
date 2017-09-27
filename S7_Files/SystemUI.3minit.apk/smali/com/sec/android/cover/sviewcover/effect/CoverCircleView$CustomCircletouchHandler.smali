.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;
.super Ljava/lang/Object;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomCircletouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method private constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1190
    .local v2, "action":I
    and-int/lit16 v6, v2, 0xff

    .line 1191
    .local v6, "maskedAction":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get17(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1192
    const/4 v12, 0x1

    return v12

    .line 1195
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get15(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1196
    const/4 v12, 0x1

    if-eq v2, v12, :cond_1

    const/4 v12, 0x3

    if-ne v2, v12, :cond_2

    .line 1197
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 1202
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 1203
    .local v9, "touchedEventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 1205
    .local v10, "touchedEventY":F
    packed-switch v6, :pswitch_data_0

    .line 1344
    :cond_3
    :goto_0
    :pswitch_0
    const/4 v12, 0x1

    return v12

    .line 1207
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4

    .line 1208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "mIsMultiTouch true"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1216
    :pswitch_2
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1217
    .local v11, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mTempRect.left ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mTempRect.top ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1219
    iget v14, v11, Landroid/graphics/Rect;->top:I

    .line 1218
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget v13, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set19(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 1222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set20(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 1223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-boolean v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    if-eqz v12, :cond_5

    .line 1226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap2(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 1229
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap3(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/view/MotionEvent;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewPressed()V

    .line 1232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap4(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap7(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;ZZ)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap5(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get3(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get1(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get10(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1248
    .end local v11    # "visibleRect":Landroid/graphics/Rect;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->userActivity()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/view/MotionEvent;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get23(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v12

    sub-float v12, v9, v12

    float-to-int v3, v12

    .line 1253
    .local v3, "diffX":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get24(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v12

    sub-float v12, v10, v12

    float-to-int v4, v12

    .line 1255
    .local v4, "diffY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    int-to-double v14, v3

    int-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D

    move-result-wide v12

    double-to-float v5, v12

    .line 1257
    .local v5, "distance":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v12

    cmpl-float v12, v5, v12

    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v13

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap8(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v13

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 1269
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap10(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set17(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 1272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v14}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get21(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I

    move-result v14

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set14(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1280
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->userActivity()V

    .line 1282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockExecuted()V

    .line 1283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    goto/16 :goto_0

    .line 1263
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get8(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v12, v5, v12

    if-lez v12, :cond_6

    .line 1264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap8(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    goto/16 :goto_1

    .line 1286
    .end local v3    # "diffX":I
    .end local v4    # "diffY":I
    .end local v5    # "distance":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "ACTION_MOVE without ACTION_DOWN"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1290
    :pswitch_4
    const v12, 0xff00

    and-int/2addr v12, v2

    shr-int/lit8 v8, v12, 0x8

    .line 1291
    .local v8, "pointer_index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1292
    .local v7, "pointer_id":I
    if-nez v7, :cond_9

    .line 1293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1297
    .end local v7    # "pointer_id":I
    .end local v8    # "pointer_index":I
    :cond_9
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_a

    .line 1298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_a
    const/4 v12, 0x3

    if-ne v6, v12, :cond_b

    .line 1303
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 1305
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set18(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 1314
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_c

    .line 1315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get14(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I

    move-result v12

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v14}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12, v9, v10}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;FF)Z

    move-result v12

    if-nez v12, :cond_d

    .line 1321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set18(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set14(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->userActivity()V

    .line 1325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap1(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    :goto_2
    invoke-static {v13, v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap1(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1336
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 1326
    :cond_e
    const/4 v12, 0x1

    goto :goto_2

    .line 1329
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 1334
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    goto :goto_3

    .line 1205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
