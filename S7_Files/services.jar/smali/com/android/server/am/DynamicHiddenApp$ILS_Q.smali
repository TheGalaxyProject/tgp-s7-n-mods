.class public final Lcom/android/server/am/DynamicHiddenApp$ILS_Q;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ILS_Q"
.end annotation


# static fields
.field private static HARD_FLAG:Z

.field private static ILS_DEBUG:Z

.field private static MAX_Q_SIZE:I

.field private static Q_Front:I

.field private static Q_Node:[Ljava/lang/String;

.field private static Q_Rear:I

.field private static Q_Size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1371
    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    .line 1374
    const-string/jumbo v0, "ro.config.dha_ils_size"

    const-string/jumbo v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    .line 1375
    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    .line 1376
    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    .line 1377
    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    .line 1378
    sget v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    .line 1381
    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->ILS_DEBUG:Z

    .line 1369
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppsLaunchFreq(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 1428
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->isInsert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->ILS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1431
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ILS: Launch App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_0
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    return v0
.end method

.method private static isInsert(Ljava/lang/String;)Z
    .locals 7
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1386
    const-string/jumbo v2, "launcher"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "googlequicksearchbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "contact"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1387
    :cond_0
    return v4

    .line 1390
    :cond_1
    const/4 v1, 0x0

    .line 1392
    .local v1, "nullCount":I
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ge v2, v3, :cond_2

    .line 1393
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    .line 1395
    :cond_2
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    aput-object p0, v2, v3

    .line 1397
    sget v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    .local v0, "i":I
    :cond_3
    :goto_0
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    if-eq v0, v2, :cond_4

    .line 1398
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1399
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aput-object v6, v2, v0

    .line 1400
    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    .line 1414
    :cond_4
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_5

    .line 1415
    sput v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    .line 1417
    :cond_5
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_6

    .line 1418
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    .line 1419
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_6

    .line 1420
    sput v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    .line 1423
    :cond_6
    return v5

    .line 1403
    :cond_7
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    .line 1404
    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    .line 1405
    add-int/lit8 v1, v1, 0x1

    .line 1410
    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v0, v2, :cond_3

    .line 1411
    const/4 v0, 0x0

    goto :goto_0

    .line 1407
    :cond_9
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_8

    if-nez v1, :cond_8

    .line 1408
    sput-boolean v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    goto :goto_1
.end method
