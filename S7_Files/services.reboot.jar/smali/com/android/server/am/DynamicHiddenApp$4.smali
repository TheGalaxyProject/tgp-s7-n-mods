.class Lcom/android/server/am/DynamicHiddenApp$4;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DynamicHiddenApp;->dhaProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method constructor <init>(Lcom/android/server/am/DynamicHiddenApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/DynamicHiddenApp;

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$4;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .locals 2
    .param p1, "app1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app2"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1342
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v0, v1, :cond_0

    .line 1343
    const/4 v0, -0x1

    return v0

    .line 1344
    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v0, v1, :cond_1

    .line 1345
    const/4 v0, 0x1

    return v0

    .line 1347
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "app1"    # Ljava/lang/Object;
    .param p2, "app2"    # Ljava/lang/Object;

    .prologue
    .line 1341
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "app1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2    # "app2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DynamicHiddenApp$4;->compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method
