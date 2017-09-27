.class public Lcom/android/systemui/recents/RecentsDebugFlags$Static;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsDebugFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Static"
.end annotation


# static fields
.field public static EnableAllListShown:Z

.field public static EnableAppList:Z

.field public static EnableCloseAllLayout:Z

.field public static EnableDesktopMode:Z

.field public static EnableDozeTrigger:Z

.field public static EnableFreeformInTaskStack:Z

.field public static EnableLowerAppbarHeight:Z

.field public static EnableMoreButton:Z

.field public static EnableMoreRound:Z

.field public static final EnableRecentsAppLock:Z

.field public static EnableSecondViewExpanded:Z

.field public static EnableSnapAction:Z

.field public static EnableSplitLayout:Z

.field public static EnableSpreadAnimation:Z

.field public static EnableTransParentBehindTaskView:Z

.field public static EnableVisibilityValueForTitleColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    .line 66
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    .line 68
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    .line 70
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    .line 72
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    .line 74
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    .line 76
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    .line 78
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAllListShown:Z

    .line 80
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    .line 82
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    .line 84
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    .line 86
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableVisibilityValueForTitleColor:Z

    .line 88
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    .line 92
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    .line 94
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_SystemUI_SupportRecentAppProtection"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
