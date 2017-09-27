.class final enum Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
.super Ljava/lang/Enum;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsHeader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;


# instance fields
.field private final mGuideMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field private final mHeaderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string/jumbo v2, "NONE"

    .line 109
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 108
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    .line 109
    sput-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    .line 110
    new-instance v5, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string/jumbo v6, "WIFI"

    .line 111
    const-wide/32 v8, 0x7f110085

    sget-object v10, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    .line 110
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    .line 111
    sput-object v5, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    .line 112
    new-instance v9, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string/jumbo v10, "BLUETOOTH"

    .line 113
    const-wide/32 v12, 0x7f110086

    sget-object v14, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    .line 112
    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    .line 113
    sput-object v9, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v11

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 1
    .param p3, "headerId"    # J
    .param p5, "mode"    # Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-wide p3, p0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->mHeaderId:J

    .line 128
    iput-object p5, p0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->mGuideMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    .line 126
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method
