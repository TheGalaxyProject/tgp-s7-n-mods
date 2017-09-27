.class public Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;
.super Lcom/android/keyguard/wallpaper/theme/SpriteModifier;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/theme/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleModifier"
.end annotation


# instance fields
.field protected mCurrentFrameIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/theme/SpriteModifier;-><init>()V

    return-void
.end method

.method private moveToNextFrame(Lcom/android/keyguard/wallpaper/theme/Sprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/android/keyguard/wallpaper/theme/Sprite;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    iput v0, p1, Lcom/android/keyguard/wallpaper/theme/Sprite;->currentFrame:I

    .line 165
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 166
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    iget v1, p1, Lcom/android/keyguard/wallpaper/theme/Sprite;->frameSize:I

    if-ne v0, v1, :cond_0

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public onStart(Lcom/android/keyguard/wallpaper/theme/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lcom/android/keyguard/wallpaper/theme/Sprite;

    .prologue
    .line 153
    return-void
.end method

.method public onUpdate(Lcom/android/keyguard/wallpaper/theme/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lcom/android/keyguard/wallpaper/theme/Sprite;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;->moveToNextFrame(Lcom/android/keyguard/wallpaper/theme/Sprite;)V

    .line 158
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "startIndex"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 171
    return-void
.end method
