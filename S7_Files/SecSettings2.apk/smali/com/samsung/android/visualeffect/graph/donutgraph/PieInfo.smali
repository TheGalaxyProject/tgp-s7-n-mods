.class public Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;
.super Ljava/lang/Object;
.source "PieInfo.java"


# instance fields
.field private color:Ljava/lang/String;

.field private data:F

.field private line_x:I

.field private line_y:I


# direct methods
.method public constructor <init>(FLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # F
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->data:F

    .line 22
    iput-object p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->color:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_x:I

    .line 24
    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_y:I

    .line 20
    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getData()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->data:F

    return v0
.end method

.method public getLineX()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_x:I

    return v0
.end method

.method public getLineY()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_y:I

    return v0
.end method
