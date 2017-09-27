.class public Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
.super Ljava/lang/Object;
.source "MARsCoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsCoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdjustRestriction"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public actionMatchType:Ljava/lang/String;

.field public callee:Ljava/lang/String;

.field public caller:Ljava/lang/String;

.field public isAllowed:Ljava/lang/String;

.field public restrictionType:I

.field final synthetic this$0:Lcom/android/server/am/MARsCoreManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsCoreManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsCoreManager;
    .param p2, "_restrictionType"    # I
    .param p3, "_isAllowed"    # Ljava/lang/String;
    .param p4, "_callee"    # Ljava/lang/String;
    .param p5, "_caller"    # Ljava/lang/String;
    .param p6, "_actionMatchType"    # Ljava/lang/String;
    .param p7, "_action"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->this$0:Lcom/android/server/am/MARsCoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p2, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->restrictionType:I

    .line 157
    iput-object p3, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->callee:Ljava/lang/String;

    .line 159
    iput-object p5, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->caller:Ljava/lang/String;

    .line 160
    iput-object p6, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    .line 161
    iput-object p7, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdjustRestriction: restrictionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->restrictionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const-string/jumbo v1, ", caller="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->caller:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const-string/jumbo v1, ", actionMatchType="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const-string/jumbo v1, ", action="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
