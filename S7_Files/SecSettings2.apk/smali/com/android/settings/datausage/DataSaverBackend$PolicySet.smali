.class Lcom/android/settings/datausage/DataSaverBackend$PolicySet;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolicySet"
.end annotation


# instance fields
.field bgDataPolicy:I

.field roamingPolicy:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "bg"    # I
    .param p2, "roam"    # I

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->bgDataPolicy:I

    .line 284
    iput p2, p0, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->roamingPolicy:I

    .line 282
    return-void
.end method
