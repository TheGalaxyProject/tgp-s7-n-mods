.class public Lcom/android/systemui/stackdivider/DividerSnapView;
.super Landroid/widget/FrameLayout;
.source "DividerSnapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerSnapView$1;,
        Lcom/android/systemui/stackdivider/DividerSnapView$2;
    }
.end annotation


# instance fields
.field public final SNAP_MINIMAL:I

.field public final SNAP_NORMAL:I

.field private mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mDeltaY:I

.field mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

.field private mDuration:I

.field private mHandlePointHalfSize:I

.field private mHasNavigationBar:Z

.field private mLastSnapRect:Landroid/graphics/Rect;

.field private mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mMinimalSnapSize:I

.field private mNavigationBarHeight:I

.field private mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapButtonsAnimation:Landroid/view/animation/Animation;

.field private mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapTarget:I

.field private mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapViewButtons:Landroid/widget/FrameLayout;

.field private mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

.field private mSnapViewButtonsMargin:I

.field private mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapViewCancel:Landroid/widget/TextView;

.field private mSnapViewDone:Landroid/widget/TextView;

.field private mSnapWindowBounds:Landroid/graphics/Rect;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field private windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerSnapView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerSnapView;->initSnapPosition(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerSnapView;->moveSnapRect(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->SNAP_NORMAL:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->SNAP_MINIMAL:I

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    .line 162
    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$1;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 178
    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$2;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    .line 79
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 77
    return-void
.end method

.method private initSnapPosition(Landroid/view/View;I)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # I

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    move v1, p2

    .line 206
    .local v1, "point":I
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 207
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 208
    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int v2, p2, v2

    return v2

    .line 210
    .end local v0    # "location":[I
    .end local v1    # "point":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private moveSnapRect(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # I

    .prologue
    .line 214
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    if-eqz p1, :cond_1

    .line 218
    move v1, p2

    .line 219
    .local v1, "point":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 220
    .local v6, "tmpTop":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 221
    .local v4, "tmpMiddle":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    .local v2, "tmpBottom":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 223
    .local v7, "tmpTopHeight":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 224
    .local v5, "tmpMiddleHeight":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 226
    .local v3, "tmpBottomHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 258
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 259
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 260
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 261
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 262
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 263
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 265
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 266
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 268
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    packed-switch v8, :pswitch_data_1

    .line 288
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v11, v4, v5

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->requestLayout()V

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->invalidate()V

    .line 213
    .end local v1    # "point":I
    .end local v2    # "tmpBottom":I
    .end local v3    # "tmpBottomHeight":I
    .end local v4    # "tmpMiddle":I
    .end local v5    # "tmpMiddleHeight":I
    .end local v6    # "tmpTop":I
    .end local v7    # "tmpTopHeight":I
    :cond_1
    return-void

    .line 228
    .restart local v1    # "point":I
    .restart local v2    # "tmpBottom":I
    .restart local v3    # "tmpBottomHeight":I
    .restart local v4    # "tmpMiddle":I
    .restart local v5    # "tmpMiddleHeight":I
    .restart local v6    # "tmpTop":I
    .restart local v7    # "tmpTopHeight":I
    :pswitch_0
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v6, p2, v8

    .line 229
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v8, v9, :cond_3

    .line 230
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v6, v8, v9

    .line 234
    :cond_2
    :goto_2
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v4, v6, v8

    .line 235
    sub-int v8, v2, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v5, v8, v9

    .line 236
    goto :goto_0

    .line 231
    :cond_3
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    if-le v8, v9, :cond_2

    .line 232
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    sub-int v6, v2, v8

    goto :goto_2

    .line 238
    :pswitch_1
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v4, p2, v8

    .line 239
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v4, v8, :cond_5

    .line 240
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 244
    :cond_4
    :goto_3
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v6, v4, v8

    .line 245
    add-int v8, v4, v5

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    .line 246
    goto/16 :goto_0

    .line 241
    :cond_5
    add-int v8, v4, v5

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    .line 242
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v8, v5

    goto :goto_3

    .line 248
    :pswitch_2
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v2, p2, v8

    .line 249
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v4, v6, v8

    .line 250
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_7

    .line 251
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    .line 255
    :cond_6
    :goto_4
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    sub-int v5, v8, v4

    .line 256
    goto/16 :goto_0

    .line 252
    :cond_7
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/2addr v9, v4

    if-ge v8, v9, :cond_6

    .line 253
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    goto :goto_4

    .line 270
    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 273
    :pswitch_4
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 276
    :pswitch_5
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v8, v9, :cond_8

    const/4 v0, 0x1

    .line 277
    .local v0, "bottonsOnTop":Z
    :goto_5
    if-eqz v0, :cond_9

    .line 278
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 276
    .end local v0    # "bottonsOnTop":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 280
    .restart local v0    # "bottonsOnTop":Z
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x7f130120
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 268
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showGuideAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 433
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 437
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 438
    .local v0, "snapGuideAlphaAnimation":Landroid/animation/ValueAnimator;
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$6;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 451
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapButtonsAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 430
    return-void

    .line 437
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 318
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 320
    :cond_0
    return v4

    .line 322
    :cond_1
    return v3
.end method

.method public initSnapHandle()V
    .locals 6

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 397
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 398
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 399
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 401
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 402
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 403
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 404
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 406
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    packed-switch v0, :pswitch_data_0

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setSnapGuideColor(I)V

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->showGuideAnimation()V

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->requestLayout()V

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->invalidate()V

    .line 395
    return-void

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 412
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public makeVisible(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "isVisible"    # Z
    .param p2, "snapTarget"    # I
    .param p3, "dockedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 343
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    .line 344
    invoke-virtual {p0, p3}, Lcom/android/systemui/stackdivider/DividerSnapView;->setBounds(Landroid/graphics/Rect;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerSnapView;->setTouchable(Z)V

    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->initSnapHandle()V

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setVisibility(I)V

    .line 341
    :goto_0
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 89
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 455
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 95
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 102
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasNavigationBar:Z

    .line 103
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mNavigationBarHeight:I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    .line 107
    const v0, 0x7f130121

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    .line 108
    const v0, 0x7f130122

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    .line 109
    const v0, 0x7f130120

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    const v2, 0x7f02012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const v0, 0x7f13011e

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    .line 113
    const v0, 0x7f13011f

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    .line 116
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    .line 118
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeColor:I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    .line 121
    const v0, 0x7f130123

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    .line 123
    const v0, 0x7f130124

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

    .line 124
    const v0, 0x7f130125

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f130126

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    const v1, 0x7f0500a5

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapButtonsAnimation:Landroid/view/animation/Animation;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDuration:I

    .line 130
    invoke-virtual {p0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$3;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$4;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 309
    const/4 v0, 0x0

    return v0

    .line 307
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "dockedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 331
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mNavigationBarHeight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    .line 329
    return-void
.end method

.method public setSnapGuideColor(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 385
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    packed-switch p1, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    .line 390
    :pswitch_1
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    const v2, -0xa0a1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchable(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->setTouchable(Z)V

    .line 325
    return-void
.end method

.method public setWindowManager(Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    .line 82
    return-void
.end method

.method public startSnapMode(Z)V
    .locals 12
    .param p1, "isStart"    # Z

    .prologue
    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v0, "adjustCropRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 358
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 359
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    .line 360
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .line 359
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 363
    :cond_0
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 364
    const/4 v5, 0x1

    .line 365
    .local v5, "statusbarHidden":Z
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    .line 366
    .local v1, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v7}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 367
    .local v3, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 369
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v6

    .line 371
    .local v6, "sv":Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    .line 373
    .end local v6    # "sv":Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 374
    const v7, 0x1050017

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 375
    .local v4, "statusbarH":I
    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 376
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 380
    .end local v1    # "app":Lcom/android/systemui/SystemUIApplication;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .end local v4    # "statusbarH":I
    .end local v5    # "statusbarHidden":Z
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->startSnapMode(ZILandroid/graphics/Rect;)V

    .line 354
    return-void

    .line 371
    .restart local v1    # "app":Lcom/android/systemui/SystemUIApplication;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .restart local v5    # "statusbarHidden":Z
    .restart local v6    # "sv":Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method
