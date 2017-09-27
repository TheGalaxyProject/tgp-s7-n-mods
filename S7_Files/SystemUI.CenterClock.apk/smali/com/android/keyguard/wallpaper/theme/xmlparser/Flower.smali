.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;
.super Ljava/lang/Object;
.source "Flower.java"


# instance fields
.field public cx:F

.field public cy:F

.field public flowerKind:I

.field public flowerSize:I

.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->flowerKind:I

    .line 28
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->flowerSize:I

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cx:F

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cy:F

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mXSpeed:I

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mYSpeed:I

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->flowerKind:I

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->flowerSize:I

    .line 57
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->rotate:I

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cx:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cy:F

    .line 80
    return-void
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cx:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 77
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cx:F

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cy:F

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cx:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cx:F

    .line 62
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cy:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cy:F

    .line 64
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->rotate:I

    .line 66
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->clear()V

    .line 70
    :cond_0
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->rotate:I

    .line 60
    :cond_1
    return-void
.end method
