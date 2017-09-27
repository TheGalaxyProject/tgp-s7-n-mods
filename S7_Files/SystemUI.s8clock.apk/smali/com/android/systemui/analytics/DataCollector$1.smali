.class Lcom/android/systemui/analytics/DataCollector$1;
.super Landroid/database/ContentObserver;
.source "DataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/analytics/DataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/analytics/DataCollector;


# direct methods
.method constructor <init>(Lcom/android/systemui/analytics/DataCollector;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/analytics/DataCollector;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector$1;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector$1;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v0}, Lcom/android/systemui/analytics/DataCollector;->-wrap0(Lcom/android/systemui/analytics/DataCollector;)V

    .line 72
    return-void
.end method
