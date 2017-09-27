.class Lcom/android/systemui/recents/views/FreeformRegion;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# static fields
.field public static PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 75
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    aput-object v1, v0, v2

    .line 73
    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 77
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 79
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->TOP:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 82
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    aput-object v1, v0, v2

    .line 83
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    aput-object v1, v0, v3

    .line 81
    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 85
    sget-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 72
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
