.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;
.super Landroid/widget/ImageView;
.source "FrameImageView.java"


# instance fields
.field mApkContext:Landroid/content/Context;

.field mImageSetIds:[I

.field mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUsed:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    .line 33
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 63
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 58
    return-void
.end method

.method public setApkContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "apkContext"    # Landroid/content/Context;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mApkContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public setImageResource(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 46
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mApkContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 49
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method
