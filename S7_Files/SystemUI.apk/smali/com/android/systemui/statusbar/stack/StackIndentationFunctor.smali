.class public abstract Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;
.super Ljava/lang/Object;
.source "StackIndentationFunctor.java"


# instance fields
.field protected mDistanceToPeekStart:I

.field protected mMaxItemsInStack:I

.field protected mPeekSize:I

.field protected mStackStartsAtPeek:Z

.field protected mTotalTransitionDistance:I


# direct methods
.method constructor <init>(III)V
    .locals 2
    .param p1, "maxItemsInStack"    # I
    .param p2, "peekSize"    # I
    .param p3, "distanceToPeekStart"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p3, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    .line 55
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mStackStartsAtPeek:Z

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mMaxItemsInStack:I

    .line 57
    iput p2, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mPeekSize:I

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->updateTotalTransitionDistance()V

    .line 53
    return-void
.end method

.method private updateTotalTransitionDistance()V
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mPeekSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mTotalTransitionDistance:I

    .line 62
    return-void
.end method


# virtual methods
.method public abstract getValue(F)F
.end method
