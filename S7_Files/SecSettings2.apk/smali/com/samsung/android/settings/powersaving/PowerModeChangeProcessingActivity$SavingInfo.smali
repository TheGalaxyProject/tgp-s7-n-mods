.class public Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;
.super Ljava/lang/Object;
.source "PowerModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavingInfo"
.end annotation


# instance fields
.field checkingStatus:I

.field id:J

.field info:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

.field time:I

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;
    .param p2, "id"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "info"    # Ljava/lang/String;
    .param p6, "time"    # I

    .prologue
    const/4 v0, 0x0

    .line 565
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 566
    iput-wide p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->id:J

    .line 567
    iput-object p4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    .line 568
    iput-object p5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    .line 569
    iput p6, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->time:I

    .line 570
    invoke-static {p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p6, :cond_0

    .line 571
    invoke-static {p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)I

    move-result v0

    add-int/2addr v0, p6

    invoke-static {p1, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-set2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)I

    .line 573
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method
