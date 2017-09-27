.class public Lcom/android/server/am/MARsPackageStatus;
.super Ljava/lang/Object;
.source "MARsPackageStatus.java"


# static fields
.field public static final ACTION_PACKAGE_RESTARTED_DEFAULT:I = 0x0

.field public static final ACTION_PACKAGE_RESTARTED_NOSEND:I = 0x2

.field public static final ACTION_PACKAGE_RESTARTED_SEND:I = 0x1

.field public static final DB_EXTRAS_RESTRICT_AUTO:I = 0x4

.field public static final DB_EXTRAS_RESTRICT_AUTO_EXPIRED:I = 0x8

.field public static final DB_EXTRAS_RESTRICT_DEFAULT:I = 0x1

.field public static final DB_EXTRAS_RESTRICT_NO:I = 0x2

.field public static final NOT_RESTRICTED:I = 0x0

.field public static final PACKAGE_STATE_RESTRICT_ALWAYS:I = 0x10

.field public static final PACKAGE_STATE_RESTRICT_AUTO:I = 0x2

.field public static final PACKAGE_STATE_RESTRICT_AUTO_EXPIRED:I = 0x8

.field public static final PACKAGE_STATE_RESTRICT_NO:I = 0x1

.field public static final PACKAGE_STATE_WILLBESET_RESTRICT_AUTO:I = 0x4

.field public static final RESTRICTED:I = 0x100


# instance fields
.field public appliedPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public autorun:I

.field public context:Landroid/content/Context;

.field public dbExtras:I

.field public forceStopTime:J

.field public hasAppIcon:Z

.field public isActiveDeviceAdmin:Z

.field public isDeviceAdmin:Z

.field public isRemovableAdmin:Z

.field public isSendPackageRestart:I

.field public lastUsedTime:J

.field public name:Ljava/lang/String;

.field public needUpdateTime:Z

.field public packageType:I

.field public resetTime:J

.field public restrictedFlag:I

.field public runningWidgets:I

.field public sbike:I

.field public skipReason:Ljava/lang/String;

.field public state:I

.field public uds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_state"    # I
    .param p4, "_resetTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 101
    iput-object p2, p0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/android/server/am/MARsPackageStatus;->context:Landroid/content/Context;

    .line 105
    iput p3, p0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 106
    iput-wide p4, p0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 107
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    .line 110
    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 111
    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 114
    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 115
    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    .line 116
    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    .line 117
    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 120
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    .line 123
    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 124
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    .line 129
    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private isWidgetPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 137
    const/16 v3, 0x480

    .line 136
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 140
    const/4 v2, 0x1

    return v2

    .line 142
    :cond_0
    return v4
.end method
