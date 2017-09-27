.class public Lcom/android/keyguard/wallpaper/theme/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;
    }
.end annotation


# instance fields
.field public currentFrame:I

.field public frameSize:I

.field public height:F

.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsRotated:Z

.field private mModifierCount:I

.field private mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

.field private mPivotX:F

.field private mPivotY:F

.field private mScale:F

.field public visible:Z

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->visible:Z

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    .line 47
    iput p1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->x:F

    .line 48
    iput p2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->y:F

    .line 49
    iput p3, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    .line 50
    iput p4, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->height:F

    .line 46
    return-void
.end method


# virtual methods
.method public addModifier(Lcom/android/keyguard/wallpaper/theme/SpriteModifier;)Z
    .locals 3
    .param p1, "modifier"    # Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    aput-object p1, v0, v1

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/keyguard/wallpaper/theme/SpriteModifier;->onCreate(Lcom/android/keyguard/wallpaper/theme/Sprite;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->visible:Z

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->x:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mIsRotated:Z

    if-eqz v0, :cond_1

    .line 93
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mAngle:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mPivotX:F

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mPivotY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 95
    :cond_1
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mScale:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 97
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->height:F

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->currentFrame:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 85
    return-void
.end method

.method public onUpdate()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/keyguard/wallpaper/theme/SpriteModifier;->onUpdate(Lcom/android/keyguard/wallpaper/theme/Sprite;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/content/Context;IIF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "frameSize"    # I
    .param p4, "scale"    # F

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/android/keyguard/wallpaper/theme/OpenThemeUtil;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/keyguard/wallpaper/theme/Sprite;->setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V

    .line 53
    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "frameSize"    # I
    .param p4, "scale"    # F

    .prologue
    .line 58
    iput p3, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->frameSize:I

    .line 59
    iput p4, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mScale:F

    .line 60
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->height:F

    .line 57
    return-void
.end method
