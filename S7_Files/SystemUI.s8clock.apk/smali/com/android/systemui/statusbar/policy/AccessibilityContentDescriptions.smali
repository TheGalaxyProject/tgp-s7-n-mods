.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    const v0, 0x7f0f02b2

    .line 15
    const v1, 0x7f0f02b3

    .line 16
    const v2, 0x7f0f02b4

    .line 17
    const v3, 0x7f0f02b5

    .line 18
    const v4, 0x7f0f02b6

    .line 13
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 33
    const v0, 0x7f0f02b7

    .line 34
    const v1, 0x7f0f02b8

    .line 35
    const v2, 0x7f0f02b9

    .line 36
    const v3, 0x7f0f02ba

    .line 37
    const v4, 0x7f0f02bb

    .line 32
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 41
    const v0, 0x7f0f00d4

    .line 42
    const v1, 0x7f0f00d5

    .line 43
    const v2, 0x7f0f00d6

    .line 44
    const v3, 0x7f0f00d7

    .line 45
    const v4, 0x7f0f00d8

    .line 40
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 51
    const v0, 0x7f0f02c4

    .line 52
    const v1, 0x7f0f02c5

    .line 50
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    .line 10
    return-void

    .line 22
    :array_0
    .array-data 4
        0x7f0f02b2
        0x7f0f02b3
        0x7f0f02b4
        0x7f0f02b5
        0x7f0f0678
        0x7f0f02b6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
