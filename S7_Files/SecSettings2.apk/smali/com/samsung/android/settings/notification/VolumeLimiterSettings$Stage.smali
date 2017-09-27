.class final enum Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;
.super Ljava/lang/Enum;
.source "VolumeLimiterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

.field public static final enum ConfirmWrong:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

.field public static final enum Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

.field public static final enum NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0b11c6

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 188
    new-instance v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    const-string/jumbo v1, "Introduction"

    const v3, 0x7f0b14b8

    .line 189
    const v4, 0x7f0b14ba

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 192
    new-instance v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    const-string/jumbo v7, "NeedToConfirm"

    const v9, 0x7f0b14bb

    .line 193
    const v10, 0x7f0b14bd

    .line 194
    const v11, 0x7f0b11d1

    .line 192
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 196
    new-instance v9, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    const-string/jumbo v10, "ConfirmWrong"

    const v12, 0x7f0b14be

    .line 197
    const v13, 0x7f0b14bf

    move v11, v15

    move v14, v5

    .line 196
    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 186
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v1, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->$VALUES:[Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInNumeric"    # I
    .param p5, "nextButtonText"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput p3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->alphaHint:I

    .line 202
    iput p4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->numericHint:I

    .line 203
    iput p5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->buttonText:I

    .line 200
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    const-class v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->$VALUES:[Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    return-object v0
.end method
