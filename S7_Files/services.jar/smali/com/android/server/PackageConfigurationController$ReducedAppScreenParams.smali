.class public Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReducedAppScreenParams"
.end annotation


# instance fields
.field public final offsetxPct:F

.field public final offsetyPct:F

.field public final scale:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "offsetxPct"    # F
    .param p3, "offsetyPct"    # F

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    .line 52
    iput p2, p0, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    .line 53
    iput p3, p0, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    .line 50
    return-void
.end method
