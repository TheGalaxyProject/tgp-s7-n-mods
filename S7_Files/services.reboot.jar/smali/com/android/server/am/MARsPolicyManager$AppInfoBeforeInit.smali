.class public Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfoBeforeInit"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public runningWidgets:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "_packageName"    # Ljava/lang/String;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    .line 743
    return-void
.end method
