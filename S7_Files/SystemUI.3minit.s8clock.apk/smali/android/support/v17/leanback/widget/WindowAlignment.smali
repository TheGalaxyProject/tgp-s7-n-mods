.class Landroid/support/v17/leanback/widget/WindowAlignment;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

.field private mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

.field private mOrientation:I

.field private mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

.field public final vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mOrientation:I

    .line 275
    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    const-string/jumbo v1, "vertical"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 277
    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    const-string/jumbo v1, "horizontal"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 279
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 281
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 29
    return-void
.end method


# virtual methods
.method public final mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->-wrap0(Landroid/support/v17/leanback/widget/WindowAlignment$Axis;)V

    .line 306
    return-void
.end method

.method public final secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    return-object v0
.end method

.method public final setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 292
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mOrientation:I

    .line 293
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mOrientation:I

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 295
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 291
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 298
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "horizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 313
    iget-object v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 314
    const-string/jumbo v1, "; vertical="

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 315
    iget-object v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
