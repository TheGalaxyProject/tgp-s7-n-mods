.class final Lcom/android/server/enterprise/application/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I
    .locals 6
    .param p1, "sta"    # Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .param p2, "stb"    # Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 239
    iget v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v5, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int v0, v4, v5

    .line 240
    .local v0, "ta":I
    iget v4, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int v1, v4, v5

    .line 242
    .local v1, "tb":I
    if-eq v0, v1, :cond_1

    .line 243
    if-le v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 246
    :cond_1
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eq v4, v5, :cond_3

    .line 247
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 250
    :cond_3
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eq v4, v5, :cond_5

    .line 251
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v4, :cond_4

    :goto_2
    return v2

    :cond_4
    move v2, v3

    goto :goto_2

    .line 254
    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "sta"    # Ljava/lang/Object;
    .param p2, "stb"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .end local p1    # "sta":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .end local p2    # "stb":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ProcessStats$1;->compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I

    move-result v0

    return v0
.end method
