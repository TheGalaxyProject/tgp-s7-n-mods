.class public Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;
.super Ljava/lang/Object;
.source "BoostModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavingInfo"
.end annotation


# instance fields
.field checkingStatus:I

.field id:J

.field info:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
    .param p2, "id"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "info"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 445
    iput-wide p2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->id:J

    .line 446
    iput-object p4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    .line 447
    iput-object p5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    .line 448
    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method
