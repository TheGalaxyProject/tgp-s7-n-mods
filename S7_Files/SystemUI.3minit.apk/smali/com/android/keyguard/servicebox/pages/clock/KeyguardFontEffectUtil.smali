.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;
.super Ljava/lang/Object;
.source "KeyguardFontEffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;
    }
.end annotation


# static fields
.field public static mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

.field public static mIsSetDropShadow:Z

.field public static mIsSetLinearGradient:Z

.field public static mIsSetOuterGlow:Z

.field public static mIsSetStroke:Z

.field public static mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

.field public static mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

.field public static mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    .line 36
    sput-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetStroke:Z

    .line 37
    sput-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    .line 38
    sput-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    .line 42
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    .line 43
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    .line 44
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    .line 40
    return-void
.end method

.method private static isAvailable()Z
    .locals 2

    .prologue
    .line 179
    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetStroke:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_1
    const-string/jumbo v0, "KeyguardFontEffectUtil"

    const-string/jumbo v1, "Font effect is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method private static parseStringToColor(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 188
    .local v2, "i":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "hex":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "result":I
    return v1
.end method

.method public static parsingFontEffectString(Ljava/lang/String;)Z
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 71
    const/4 v6, 0x0

    .line 74
    .local v6, "isParsed":Z
    const-string/jumbo v7, "|"

    invoke-static {p0, v7}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "firstSplit":[Ljava/lang/String;
    if-eqz v2, :cond_7

    array-length v7, v2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 77
    aget-object v7, v2, v10

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "finalSplit":[Ljava/lang/String;
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    .line 79
    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v7, :cond_0

    .line 82
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->offset:F

    .line 83
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    aget-object v8, v1, v12

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->softness:F

    .line 84
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->blendingOpacity:F

    .line 85
    array-length v7, v1

    const/4 v8, 0x4

    if-le v7, v8, :cond_3

    .line 86
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    const/4 v8, 0x4

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->angle:F

    .line 91
    :cond_0
    :goto_0
    aget-object v7, v2, v11

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetStroke:Z

    .line 94
    sget-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetStroke:Z

    if-eqz v7, :cond_1

    .line 96
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;->size:F

    .line 97
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    aget-object v8, v1, v12

    invoke-static {v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;->color:I

    .line 98
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;->blendingOpacity:F

    .line 101
    :cond_1
    aget-object v7, v2, v12

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    .line 104
    sget-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v7, :cond_2

    .line 106
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;->size:F

    .line 107
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    aget-object v8, v1, v12

    invoke-static {v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;->color:I

    .line 108
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;->blendingOpacity:F

    .line 111
    :cond_2
    aget-object v7, v2, v13

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    .line 114
    sget-boolean v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v7, :cond_5

    .line 119
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    const/4 v4, 0x2

    .local v4, "index":I
    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->scale:F

    .line 120
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    .local v0, "arraySize":I
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    new-array v8, v0, [I

    iput-object v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->colors:[I

    .line 123
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->alphas:[F

    .line 124
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->positions:[F

    .line 126
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 127
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->colors:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v8, v1, v5

    invoke-static {v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    .line 128
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->alphas:[F

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    .line 129
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->positions:[F

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 88
    .end local v0    # "arraySize":I
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_3
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    const/high16 v8, 0x42b40000    # 90.0f

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->angle:F

    goto/16 :goto_0

    .line 132
    .restart local v0    # "arraySize":I
    .restart local v3    # "i":I
    .restart local v5    # "index":I
    :cond_4
    array-length v7, v1

    if-ge v5, v7, :cond_6

    .line 133
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->blendingOpacity:F

    .line 138
    .end local v0    # "arraySize":I
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_5
    :goto_2
    const/4 v6, 0x1

    .line 142
    .end local v1    # "finalSplit":[Ljava/lang/String;
    :goto_3
    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isParsed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v6

    .line 135
    .restart local v0    # "arraySize":I
    .restart local v1    # "finalSplit":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "index":I
    :cond_6
    sget-object v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->blendingOpacity:F

    goto :goto_2

    .line 140
    .end local v0    # "arraySize":I
    .end local v1    # "finalSplit":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public static setTextFontEffect(Landroid/widget/TextView;)V
    .locals 7
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 149
    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    iget v1, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->angle:F

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    iget v2, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->offset:F

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    iget v3, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->softness:F

    .line 155
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;

    iget v5, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$DropShadow;->blendingOpacity:F

    .line 154
    const/high16 v4, -0x1000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->semAddOuterShadowTextEffect(FFFIF)I

    .line 158
    :cond_1
    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    iget v0, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;->size:F

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    iget v1, v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;->color:I

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;

    iget v2, v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$OuterGlow;->blendingOpacity:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->semAddOuterGlowTextEffect(FIF)I

    .line 162
    :cond_2
    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetStroke:Z

    if-eqz v0, :cond_3

    .line 163
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    iget v0, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;->size:F

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    iget v1, v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;->color:I

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mStroke:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;

    iget v2, v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$Stroke;->blendingOpacity:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    .line 166
    :cond_3
    sget-boolean v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_4

    .line 167
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget v2, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->scale:F

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget-object v3, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->colors:[I

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget-object v4, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->alphas:[F

    .line 168
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget-object v5, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->positions:[F

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;

    iget v6, v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil$LinearGradient;->blendingOpacity:F

    .line 167
    const/high16 v1, 0x42b40000    # 90.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->semAddLinearGradientTextEffect(FF[I[F[FF)I

    .line 147
    :cond_4
    return-void
.end method

.method private static stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tokenizer"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 197
    const/4 v4, 0x0

    .line 199
    .local v4, "strSplit":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 201
    .local v4, "strSplit":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 202
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    .end local v3    # "st":Ljava/util/StringTokenizer;
    .end local v4    # "strSplit":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "KeyguardFontEffectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v8

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 205
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "KeyguardFontEffectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NPE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v8

    .line 211
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    .restart local v1    # "i":I
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    .restart local v4    # "strSplit":[Ljava/lang/String;
    :cond_0
    return-object v4
.end method
