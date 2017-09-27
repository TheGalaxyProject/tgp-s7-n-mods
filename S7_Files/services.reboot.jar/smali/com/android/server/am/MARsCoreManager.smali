.class public Lcom/android/server/am/MARsCoreManager;
.super Ljava/lang/Object;
.source "MARsCoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsCoreManager$AdjustRestriction;,
        Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;,
        Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;,
        Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    }
.end annotation


# static fields
.field static final ADJUST_RESTRICTION_TYPE_ALLOW_CHINESE_APP:I = 0x1

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_EDGE_INTENT:I = 0x4

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_GEAR_INTENT:I = 0x3

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_KIES_INTENT:I = 0x5

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_MEDIA_INTENT:I = 0x6

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_CHINESE_APP:I = 0x2

.field static final TAG:Ljava/lang/String; = "MARsCoreManager"

.field static final mAdjustRestrictionDefault:[[Ljava/lang/String;

.field static final mAutoRunParameterDefault:[Ljava/lang/String;

.field static final mCurrentImportantDefault:[[Ljava/lang/String;

.field static final mExcludePackageDefault:[[Ljava/lang/String;

.field static final mPolicyInfoDefault:[[Ljava/lang/String;


# instance fields
.field mAm:Lcom/android/server/am/ActivityManagerService;

.field public mApplicationSizeIncreased:J

.field mContext:Landroid/content/Context;

.field public mExcludeTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mNotifiUpdatedCount:J

.field public mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field public mRestrictionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public mTrafficAmount:J

.field public mTrafficInterval:J

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field public mUnusedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    new-array v0, v8, [[Ljava/lang/String;

    .line 173
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "13"

    aput-object v2, v1, v6

    const-string/jumbo v2, "360415504"

    aput-object v2, v1, v8

    const-string/jumbo v2, "12"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "10"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "60"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    .line 174
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "21"

    aput-object v2, v1, v6

    const-string/jumbo v2, "16320640"

    aput-object v2, v1, v8

    const-string/jumbo v2, "10"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "5"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "5"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    .line 175
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "21"

    aput-object v2, v1, v6

    const-string/jumbo v2, "16320640"

    aput-object v2, v1, v8

    const-string/jumbo v2, "2"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "720"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "720"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    .line 172
    sput-object v0, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    .line 178
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "15"

    aput-object v1, v0, v5

    const-string/jumbo v1, "300"

    aput-object v1, v0, v6

    const-string/jumbo v1, "1"

    aput-object v1, v0, v8

    const-string/jumbo v1, "1"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    .line 181
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    .line 182
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const-string/jumbo v2, "24"

    aput-object v2, v1, v5

    const-string/jumbo v2, "contains"

    aput-object v2, v1, v6

    const-string/jumbo v2, ".cts."

    aput-object v2, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const-string/jumbo v2, "24"

    aput-object v2, v1, v5

    const-string/jumbo v2, "endsWith"

    aput-object v2, v1, v6

    const-string/jumbo v2, ".cts"

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    .line 183
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const-string/jumbo v2, "24"

    aput-object v2, v1, v5

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "8"

    aput-object v2, v1, v5

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.sec.android.app.shealth"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    .line 184
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const-string/jumbo v2, "10"

    aput-object v2, v1, v5

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.sec.aecmonitor"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const-string/jumbo v2, "10"

    aput-object v2, v1, v5

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.salab.act"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 181
    sput-object v0, Lcom/android/server/am/MARsCoreManager;->mExcludePackageDefault:[[Ljava/lang/String;

    .line 187
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    .line 188
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const-string/jumbo v2, "8000"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "18284"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 189
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "65529"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    const-string/jumbo v2, "65527"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    .line 190
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    const-string/jumbo v2, "18284"

    aput-object v2, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "18284"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 187
    sput-object v0, Lcom/android/server/am/MARsCoreManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    .line 193
    const/16 v0, 0x1d

    new-array v0, v0, [[Ljava/lang/String;

    .line 194
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    aput-object v2, v1, v6

    aput-object v7, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAlixPay"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    .line 195
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.alipay.android.app"

    aput-object v2, v1, v6

    aput-object v7, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAlixPay"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    .line 196
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.tencent.mobileqq"

    aput-object v2, v1, v6

    aput-object v7, v1, v8

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    aput-object v1, v0, v6

    .line 197
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.tencent.mm"

    aput-object v2, v1, v6

    aput-object v7, v1, v8

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    aput-object v1, v0, v8

    .line 198
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.cmcc.sso"

    aput-object v2, v1, v6

    aput-object v7, v1, v8

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 199
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.cmdm.rcs"

    aput-object v2, v1, v6

    aput-object v7, v1, v8

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 200
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "block"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.baidu.netdisk_ss"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.sec.android.cloudagent"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 201
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "block"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.samsung.android.opencalendar"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 202
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 203
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 204
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 205
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.accessory.action.REGISTER_AGENT"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 206
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    aput-object v7, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.cocktail.action.COCKTAIL"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 207
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    aput-object v7, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.cocktail.v2.action.COCKTAIL"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 208
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    aput-object v7, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.memo.EDGE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 209
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 210
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 211
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 212
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 213
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 214
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 215
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 216
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 217
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 218
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 219
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 220
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 221
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    aput-object v7, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 222
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v4

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    aput-object v7, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 193
    sput-object v0, Lcom/android/server/am/MARsCoreManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsTrigger;Landroid/content/Context;)V
    .locals 4
    .param p1, "policyManager"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "trigger"    # Lcom/android/server/am/MARsTrigger;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsCoreManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 237
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mTrafficInterval:J

    .line 238
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mUnusedTime:J

    .line 239
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mTrafficAmount:J

    .line 240
    iput-wide v2, p0, Lcom/android/server/am/MARsCoreManager;->mNotifiUpdatedCount:J

    .line 241
    iput-wide v2, p0, Lcom/android/server/am/MARsCoreManager;->mApplicationSizeIncreased:J

    .line 251
    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 252
    iput-object p2, p0, Lcom/android/server/am/MARsCoreManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 253
    iput-object p3, p0, Lcom/android/server/am/MARsCoreManager;->mContext:Landroid/content/Context;

    .line 250
    return-void
.end method

.method private convertListToMap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "isCurrentImportantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;

    iget v1, v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;

    iget v1, v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "MARsCoreManager"

    const-string/jumbo v2, "mIsCurrentImportantMap is null! "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    return-void
.end method

.method private isActionMatch(Lcom/android/server/am/MARsCoreManager$AdjustRestriction;Ljava/lang/String;)Z
    .locals 3
    .param p1, "restriction"    # Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 416
    .local v0, "match":Z
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 428
    .end local v0    # "match":Z
    :cond_0
    :goto_0
    return v0

    .line 418
    .restart local v0    # "match":Z
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "equalsIgnoreCase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0

    .line 420
    .local v0, "match":Z
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "contains"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0

    .line 422
    .local v0, "match":Z
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "startsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0

    .line 424
    .local v0, "match":Z
    :cond_4
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "endsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0
.end method

.method private isAdjustRestrictionMatchInternal(Lcom/android/server/am/MARsCoreManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "restriction"    # Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 433
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->caller:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 434
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    invoke-direct {p0, p1, p4}, Lcom/android/server/am/MARsCoreManager;->isActionMatch(Lcom/android/server/am/MARsCoreManager$AdjustRestriction;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->action:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 435
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public convertPolicyNameToNum(Ljava/lang/String;)I
    .locals 2
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 257
    const-string/jumbo v0, "force"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    return v1

    .line 259
    :cond_0
    const-string/jumbo v0, "applocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_1
    const-string/jumbo v0, "autorun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x2

    return v0

    .line 263
    :cond_2
    const-string/jumbo v0, "arespolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    const/4 v0, 0x3

    return v0

    .line 265
    :cond_3
    const-string/jumbo v0, "udspolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    const/4 v0, 0x4

    return v0

    .line 267
    :cond_4
    const-string/jumbo v0, "sbikepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    const/4 v0, 0x5

    return v0

    .line 270
    :cond_5
    return v1
.end method

.method public convertPolicyNumToName(I)Ljava/lang/String;
    .locals 1
    .param p1, "policyNum"    # I

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const-string/jumbo v0, "force"

    return-object v0

    .line 276
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 277
    const-string/jumbo v0, "applocker"

    return-object v0

    .line 278
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 279
    const-string/jumbo v0, "autorun"

    return-object v0

    .line 280
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 281
    const-string/jumbo v0, "arespolicy"

    return-object v0

    .line 282
    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 283
    const-string/jumbo v0, "udspolicy"

    return-object v0

    .line 284
    :cond_4
    const/4 v0, 0x5

    if-ne v0, p1, :cond_5

    .line 285
    const-string/jumbo v0, "sbikepolicy"

    return-object v0

    .line 287
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public dumpMARsDefaultValue()V
    .locals 11

    .prologue
    .line 396
    iget-object v8, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "policy$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    .line 397
    .local v4, "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    const-string/jumbo v8, "MARsCoreManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v4    # "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "excludeTarget$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;

    .line 401
    .local v0, "excludeTarget":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    const-string/jumbo v8, "MARsCoreManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v0    # "excludeTarget":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "isCurrentImportant$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;

    .line 405
    .local v2, "isCurrentImportant":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    const-string/jumbo v8, "MARsCoreManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 408
    .end local v2    # "isCurrentImportant":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/MARsCoreManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "restriction$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;

    .line 409
    .local v6, "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    const-string/jumbo v8, "MARsCoreManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 395
    .end local v6    # "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    :cond_3
    return-void
.end method

.method public getAdjustRestrictionFromDefaultValue()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 381
    sget-object v11, Lcom/android/server/am/MARsCoreManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    array-length v12, v11

    move v9, v10

    :goto_0
    if-ge v9, v12, :cond_0

    aget-object v8, v11, v9

    .line 382
    .local v8, "adjustRestrictionString":[Ljava/lang/String;
    aget-object v1, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 383
    .local v2, "restrictionType":I
    const/4 v1, 0x1

    aget-object v3, v8, v1

    .line 384
    .local v3, "isAllowed":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v4, v8, v1

    .line 385
    .local v4, "callee":Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v5, v8, v1

    .line 386
    .local v5, "caller":Ljava/lang/String;
    const/4 v1, 0x4

    aget-object v6, v8, v1

    .line 387
    .local v6, "actionMatchType":Ljava/lang/String;
    const/4 v1, 0x5

    aget-object v7, v8, v1

    .line 389
    .local v7, "action":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;-><init>(Lcom/android/server/am/MARsCoreManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v0, "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    .line 380
    .end local v0    # "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    .end local v2    # "restrictionType":I
    .end local v3    # "isAllowed":Ljava/lang/String;
    .end local v4    # "callee":Ljava/lang/String;
    .end local v5    # "caller":Ljava/lang/String;
    .end local v6    # "actionMatchType":Ljava/lang/String;
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "adjustRestrictionString":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getAutoRunParameterFromDefaultValue()V
    .locals 12

    .prologue
    .line 346
    sget-object v0, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mTrafficInterval:J

    .line 347
    sget-object v0, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mUnusedTime:J

    .line 348
    sget-object v0, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mTrafficAmount:J

    .line 349
    sget-object v0, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mNotifiUpdatedCount:J

    .line 350
    sget-object v0, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsCoreManager;->mApplicationSizeIncreased:J

    .line 352
    iget-wide v2, p0, Lcom/android/server/am/MARsCoreManager;->mTrafficInterval:J

    iget-wide v4, p0, Lcom/android/server/am/MARsCoreManager;->mUnusedTime:J

    iget-wide v6, p0, Lcom/android/server/am/MARsCoreManager;->mTrafficAmount:J

    .line 353
    iget-wide v8, p0, Lcom/android/server/am/MARsCoreManager;->mNotifiUpdatedCount:J

    iget-wide v10, p0, Lcom/android/server/am/MARsCoreManager;->mApplicationSizeIncreased:J

    move-object v1, p0

    .line 352
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/MARsCoreManager;->setAutoRunParameter(JJJJJ)V

    .line 345
    return-void
.end method

.method public getExcludeTargetFromDefaultValue()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 357
    sget-object v9, Lcom/android/server/am/MARsCoreManager;->mExcludePackageDefault:[[Ljava/lang/String;

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v6, v9, v7

    .line 358
    .local v6, "excludePackageString":[Ljava/lang/String;
    aget-object v1, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 359
    .local v2, "policyNum":I
    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 360
    .local v3, "condition":I
    const/4 v1, 0x2

    aget-object v4, v6, v1

    .line 361
    .local v4, "pkgNameMatchType":Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v5, v6, v1

    .line 363
    .local v5, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/MARsCoreManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v0, "excludeTarget":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 356
    .end local v0    # "excludeTarget":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    .end local v2    # "policyNum":I
    .end local v3    # "condition":I
    .end local v4    # "pkgNameMatchType":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "excludePackageString":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getIsCurrentImportantFromDefaultValue()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 369
    sget-object v6, Lcom/android/server/am/MARsCoreManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v0, v6, v4

    .line 370
    .local v0, "currentImportantString":[Ljava/lang/String;
    aget-object v8, v0, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 371
    .local v3, "policyNum":I
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 373
    .local v1, "currentImportantValue":I
    new-instance v2, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/MARsCoreManager;II)V

    .line 374
    .local v2, "importantValue":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    iget-object v8, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v8, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "currentImportantString":[Ljava/lang/String;
    .end local v1    # "currentImportantValue":I
    .end local v2    # "importantValue":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    .end local v3    # "policyNum":I
    :cond_0
    return-void
.end method

.method public getPolicyFromDefaultValue()V
    .locals 18

    .prologue
    .line 329
    sget-object v16, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move v15, v3

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget-object v14, v16, v15

    .line 330
    .local v14, "policyString":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 331
    .local v5, "policyNum":I
    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 332
    .local v6, "isPolicyEnabled":I
    const/4 v3, 0x2

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 333
    .local v7, "targetCategory":I
    const/4 v3, 0x3

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 334
    .local v8, "restriction":I
    const/4 v3, 0x4

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 335
    .local v9, "killType":I
    const/4 v3, 0x5

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 336
    .local v10, "firstTriggerTime":J
    const/4 v3, 0x6

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 337
    .local v12, "repeatTriggerTime":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsCoreManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "policyName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/MARsCoreManager$PolicyInfo;-><init>(Lcom/android/server/am/MARsCoreManager;Ljava/lang/String;IIIIIJJ)V

    .line 341
    .local v2, "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_0

    .line 328
    .end local v2    # "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    .end local v4    # "policyName":Ljava/lang/String;
    .end local v5    # "policyNum":I
    .end local v6    # "isPolicyEnabled":I
    .end local v7    # "targetCategory":I
    .end local v8    # "restriction":I
    .end local v9    # "killType":I
    .end local v10    # "firstTriggerTime":J
    .end local v12    # "repeatTriggerTime":J
    .end local v14    # "policyString":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "restrictionType"    # I
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/server/am/MARsCoreManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "restriction$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;

    .line 443
    .local v0, "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    iget v2, v0, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->restrictionType:I

    if-ne p1, v2, :cond_0

    .line 444
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/am/MARsCoreManager;->isAdjustRestrictionMatchInternal(Lcom/android/server/am/MARsCoreManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    const-string/jumbo v2, "MARsCoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " restrictionType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callee = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " caller = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 446
    const-string/jumbo v4, " action = "

    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v2, 0x1

    return v2

    .line 452
    .end local v0    # "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setAdjustRestriction(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "restrictionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustRestriction;>;"
    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 324
    return-void
.end method

.method public setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "isCurrentImportantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;>;"
    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    .line 309
    iget-object v0, p0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsCoreManager;->convertListToMap(Ljava/util/ArrayList;)V

    .line 307
    return-void
.end method

.method public setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "excludeTargetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;>;"
    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 303
    return-void
.end method

.method public setAutoRunParameter(JJJJJ)V
    .locals 9
    .param p1, "trafficInterval"    # J
    .param p3, "unusedAutoFreezeTime"    # J
    .param p5, "dataTrafficAmount"    # J
    .param p7, "notificationUpdatedCount"    # J
    .param p9, "appSizeIncreased"    # J

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/server/am/MARsCoreManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    iput-wide v4, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    .line 297
    iget-object v2, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const-wide/16 v4, 0x3c

    mul-long/2addr v4, p3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 298
    iget-object v2, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-wide p5, v2, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 299
    iget-object v2, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-wide/from16 v0, p7

    iput-wide v0, v2, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 300
    iget-object v2, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-wide/from16 v0, p9

    iput-wide v0, v2, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 295
    return-void
.end method

.method public setPolicy(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "policyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$PolicyInfo;>;"
    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 290
    return-void
.end method
