.class final Lcom/android/server/am/MARsCoreManager$PolicyInfo;
.super Ljava/lang/Object;
.source "MARsCoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsCoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PolicyInfo"
.end annotation


# instance fields
.field final action:I

.field public enabled:I

.field public firstTriggerTime:J

.field final name:Ljava/lang/String;

.field final num:I

.field public repeatTriggerTime:J

.field final restriction:I

.field final targetCategory:I

.field final synthetic this$0:Lcom/android/server/am/MARsCoreManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsCoreManager;Ljava/lang/String;IIIIIJJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsCoreManager;
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_num"    # I
    .param p4, "_enabled"    # I
    .param p5, "_targetCategory"    # I
    .param p6, "_restriction"    # I
    .param p7, "_action"    # I
    .param p8, "_firstTriggerTime"    # J
    .param p10, "_repeatTriggerTime"    # J

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->this$0:Lcom/android/server/am/MARsCoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->name:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->num:I

    .line 81
    iput p4, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->enabled:I

    .line 82
    iput p5, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->targetCategory:I

    .line 83
    iput p6, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->restriction:I

    .line 84
    iput p7, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->action:I

    .line 85
    iput-wide p8, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->firstTriggerTime:J

    .line 86
    iput-wide p10, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    .line 78
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->enabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->targetCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ", restriction="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->restriction:I

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ", action="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->action:I

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ", firstTriggerTime="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget-wide v2, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->firstTriggerTime:J

    .line 90
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v1, ", repeatTriggerTime="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget-wide v2, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    .line 90
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
