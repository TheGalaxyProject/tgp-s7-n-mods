.class Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;
.super Ljava/lang/Object;
.source "StateColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/circle/StateColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateColorInfo"
.end annotation


# instance fields
.field alpha:F

.field colorId:I

.field state:I

.field viewType:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V
    .locals 0
    .param p1, "viewType"    # Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;
    .param p2, "state"    # I
    .param p3, "colorId"    # I
    .param p4, "alpha"    # F

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;->viewType:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    .line 92
    iput p2, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;->state:I

    .line 93
    iput p3, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;->colorId:I

    .line 94
    iput p4, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;->alpha:F

    .line 90
    return-void
.end method
