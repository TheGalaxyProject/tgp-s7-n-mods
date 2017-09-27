.class public Lcom/sec/android/cover/manager/CoverEventHistoryManager;
.super Ljava/lang/Object;
.source "CoverEventHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/sec/android/cover/manager/CoverEventHistoryManager;


# instance fields
.field private mEventTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    invoke-direct {v0}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;-><init>()V

    sput-object v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->instance:Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/sec/android/cover/manager/CoverEventHistoryManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->instance:Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    monitor-enter p0

    .line 35
    :try_start_0
    new-instance v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;-><init>(Lcom/samsung/android/cover/CoverState;J)V

    .line 36
    .local v0, "item":Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 39
    .local v1, "tableSize":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 34
    return-void

    .end local v0    # "item":Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;
    .end local v1    # "tableSize":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
