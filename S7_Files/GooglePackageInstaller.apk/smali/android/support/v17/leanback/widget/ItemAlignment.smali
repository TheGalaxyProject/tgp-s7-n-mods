.class Landroid/support/v17/leanback/widget/ItemAlignment;
.super Ljava/lang/Object;
.source "ItemAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ItemAlignment$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

.field private mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

.field private mOrientation:I

.field private mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

.field public final vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v2, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mOrientation:I

    .line 51
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    .line 53
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    .line 57
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    .line 32
    return-void
.end method


# virtual methods
.method public final setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 68
    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mOrientation:I

    .line 69
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mOrientation:I

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    .line 67
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    .line 74
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    goto :goto_0
.end method
