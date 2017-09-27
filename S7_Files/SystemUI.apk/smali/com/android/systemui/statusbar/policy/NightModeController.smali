.class public Lcom/android/systemui/statusbar/policy/NightModeController;
.super Ljava/lang/Object;
.source "NightModeController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NightModeController$1;,
        Lcom/android/systemui/statusbar/policy/NightModeController$Listener;
    }
.end annotation


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final NIGHT_VALUES:[F


# instance fields
.field private mAdjustTint:Z

.field private mAmount:F

.field private final mContext:Landroid/content/Context;

.field private mCustomMatrix:[F

.field private mIsAuto:Z

.field private mIsNight:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NightModeController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateMatrix:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/NightModeController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NightModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateCurrentMatrix()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/NightModeController;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateNightMode(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NightModeController;->NIGHT_VALUES:[F

    .line 51
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/NightModeController;->IDENTITY_MATRIX:[F

    .line 34
    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NightModeController;-><init>(Landroid/content/Context;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateMatrix"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListeners:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/policy/NightModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NightModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/NightModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    .line 81
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mUpdateMatrix:Z

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tuner_night_mode_adjust_tint"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 83
    const-string/jumbo v2, "tuner_color_custom_values"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "twilight_mode"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 82
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private static multiply([F[F)[F
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "other"    # [F

    .prologue
    const/4 v1, 0x0

    .line 211
    if-nez p0, :cond_0

    .line 212
    return-object p1

    .line 214
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .local v0, "result":[F
    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 215
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 216
    return-object v0
.end method

.method private scaleValues([F[FF)[F
    .locals 4
    .param p1, "identityMatrix"    # [F
    .param p2, "nightValues"    # [F
    .param p3, "amount"    # F

    .prologue
    .line 220
    array-length v2, p1

    new-array v1, v2, [F

    .line 221
    .local v1, "values":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 222
    aget v2, p1, v0

    aget v3, p2, v0

    invoke-static {v2, v3, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-object v1
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3
    .param p0, "values"    # [F

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toValues(Ljava/lang/String;)[F
    .locals 4
    .param p0, "customValues"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "strValues":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [F

    .line 241
    .local v2, "values":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 242
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-object v2
.end method

.method private updateCurrentMatrix()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 174
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mUpdateMatrix:Z

    if-nez v2, :cond_0

    return-void

    .line 175
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mAdjustTint:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mAmount:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mCustomMatrix:[F

    if-nez v2, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_color_matrix"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/NightModeController;->IDENTITY_MATRIX:[F

    sget-object v3, Lcom/android/systemui/statusbar/policy/NightModeController;->NIGHT_VALUES:[F

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mAdjustTint:Z

    if-eqz v4, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mAmount:F

    :cond_3
    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->scaleValues([F[FF)[F

    move-result-object v0

    .line 180
    .local v0, "values":[F
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mCustomMatrix:[F

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mCustomMatrix:[F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->multiply([F[F)[F

    move-result-object v0

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_color_matrix"

    .line 184
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NightModeController;->toString([F)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private updateListening()V
    .locals 5

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mUpdateMatrix:Z

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mAdjustTint:Z

    .line 134
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListening:Z

    if-ne v0, v1, :cond_2

    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    .local v0, "shouldListen":Z
    goto :goto_0

    .end local v0    # "shouldListen":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "shouldListen":Z
    goto :goto_0

    .line 135
    .end local v0    # "shouldListen":Z
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListening:Z

    .line 136
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListening:Z

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.TWILIGHT_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    :goto_1
    return-void

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method private updateNightMode(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    if-eqz p1, :cond_0

    const-string/jumbo v2, "isNight"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mIsNight:Z

    .line 189
    if-eqz p1, :cond_1

    const-string/jumbo v0, "amount"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mAmount:F

    .line 187
    return-void

    :cond_1
    move v0, v1

    .line 189
    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/NightModeController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NightModeController$Listener;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NightModeController$Listener;->onNightModeChanged()V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateListening()V

    .line 121
    return-void
.end method

.method public getCustomValues()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v1, "tuner_color_custom_values"

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListening:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.TWILIGHT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateNightMode(Landroid/content/Intent;)V

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mIsNight:Z

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 161
    const-string/jumbo v3, "tuner_color_custom_values"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/NightModeController;->toValues(Ljava/lang/String;)[F

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mCustomMatrix:[F

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateCurrentMatrix()V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    const-string/jumbo v0, "tuner_night_mode_adjust_tint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mAdjustTint:Z

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateListening()V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateCurrentMatrix()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 165
    goto :goto_1

    .line 168
    :cond_5
    const-string/jumbo v0, "twilight_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    if-eqz p2, :cond_6

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_6

    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mIsAuto:Z

    goto :goto_0
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/NightModeController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NightModeController$Listener;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->updateListening()V

    .line 127
    return-void
.end method

.method public setAdjustTint(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Boolean;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "tuner_night_mode_adjust_tint"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 117
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuto(Z)V
    .locals 3
    .param p1, "auto"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mIsAuto:Z

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v1, "twilight_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 102
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "twilight_mode"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mIsNight:Z

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x1

    .line 108
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCustomValues(Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v1, "tuner_color_custom_values"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setNightMode(Z)V
    .locals 3
    .param p1, "isNight"    # Z

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mIsAuto:Z

    if-eqz v0, :cond_2

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mIsNight:Z

    if-eq v0, p1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "twilight_mode"

    if-eqz p1, :cond_0

    .line 90
    const/4 v0, 0x4

    .line 89
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 86
    :goto_1
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v1, "twilight_mode"

    .line 94
    const/4 v2, 0x2

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NightModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "twilight_mode"

    if-eqz p1, :cond_3

    .line 98
    const/4 v0, 0x1

    .line 97
    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 98
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
