.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;
.super Landroid/view/View;
.source "RainView.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;


# static fields
.field public static G:I

.field private static MAX_POOL_SIZE:I


# instance fields
.field list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mRainPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;

.field private rainline:Landroid/graphics/Bitmap;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x3

    sput v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->G:I

    .line 43
    const/16 v0, 0x3c

    sput v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->MAX_POOL_SIZE:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->list:Ljava/util/Vector;

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->refresh:Z

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mPaint:Landroid/graphics/Paint;

    .line 47
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mContext:Landroid/content/Context;

    .line 48
    sget v2, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->MAX_POOL_SIZE:I

    new-array v2, v2, [Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;

    new-instance v3, Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;

    invoke-direct {v3, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    .local v1, "r":Landroid/content/res/Resources;
    sget v2, Lcom/android/keyguard/R$drawable;->rainline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->rainline:Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->refresh:Z

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->invalidate()V

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 67
    .local v0, "rain":Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->rainline:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;->x:F

    invoke-static {v5, v6}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;->y:F

    invoke-static {v6, v7}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 68
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->mPaint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;->next()V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "rain":Lcom/android/keyguard/wallpaper/theme/xmlparser/Rain;
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->refresh:Z

    .line 74
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->refresh:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;->invalidate()V

    .line 79
    return-void
.end method
